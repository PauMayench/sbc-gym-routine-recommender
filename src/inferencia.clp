;;; abstraccio ======================================================================================================================== 
(defmodule abstraccio
    (import MAIN ?ALL)
    (export ?ALL)
)

;;; Regla per a calcular el IMC
(defrule abstraccio::calcular_imc "Calcular IMC"
    (declare (salience 20))
    ?user <- (object (is-a Persona))
    => 
    (bind ?alc (send ?user get-alçada) )
    (bind ?alcm (/ ?alc 100) )
    (bind ?pes (send ?user get-pes_corporal) )
    (bind ?imc (round(/ (* ?pes 100) (* ?alcm ?alcm))))
    (send ?user put-IMC ?imc)
)

(defrule abstraccio::prima "persona amb IMC de categoria prima"
    (declare (salience 19))   ; todo treure les salience amb els IMC
    ?user <- (object (is-a Persona) (IMC ?imc))
    (test (< ?imc 1850))
    => 
    (assert (p-prima ?user))
)
    
(defrule abstraccio::normal "persona amb IMC de categoria normal"
    (declare (salience 19))
    ?user <- (object (is-a Persona) (IMC ?imc))
    (test (and (>= ?imc 1850) (<= ?imc 2490) ) )
    => 
    (assert (p-normal ?user))
)

(defrule abstraccio::gross "persona amb IMC de categoria gross"
    (declare (salience 19))
    ?user <- (object (is-a Persona) (IMC ?imc))
    (test (> ?imc 2490))
    => 
    (assert (p-gross ?user ))
)


(defrule abstraccio::actiu
    (declare (salience 19))
    ?activitat <- (object (is-a Activitat) (es_activa "true") (frequencia ?x&:(>= ?x 60)))
    ?user <- (object (is-a Persona) (fa ?activitat ) )
    =>
    (assert (a-actiu ?user))
)

(defrule abstraccio::inactiu
    (declare (salience 19))
    ?activitat <- (object (is-a Activitat) (es_activa "false") (frequencia ?x&:(>= ?x 60)))
    ?user <- (object (is-a Persona) (fa ?activitat ) )
    =>
    (assert (a-inactiu ?user))
)

(defrule abstraccio::mitjanament_actiu
    (declare (salience 18))
    ?activitat <- (object (is-a Activitat) (frequencia ?x&:(< ?x 60)))
    ?user <- (object (is-a Persona) (fa ?activitat) )
    =>
    (assert (a-mitjanament_actiu ?user))
)

(defrule abstraccio::associar_heuristicament "associacio_heuristica"
    (declare (salience -20))
    => 
    (focus associacio_heuristica)
)



;;; associacio heuristica =============================================================
;;;  a-actiu a-mitjanament_actiu a-inactiu
;;;  p-gross p-normal p-prima

(defmodule associacio_heuristica
    (import abstraccio ?ALL)
    (export ?ALL)
)

;;asserts:
;; intensitat: baixa mitjana alta
;; dificultat  facil mitja dificil

;---- p-normal

(defrule associacio_heuristica::11
    ?user <- (object (is-a Persona))    
    (p-normal ?user)
    (a-actiu ?user)
    => 
    (assert (intensitat alta)  )
    (assert (dificultat dificil))
)

(defrule associacio_heuristica::12
    ?user <- (object (is-a Persona))
    (p-normal ?user)
    (a-mitjanament_actiu ?user)
    => 
    (assert (intensitat alta)  )
    (assert (dificultat mitja))
)

(defrule associacio_heuristica::13
    ?user <- (object (is-a Persona))
    (p-normal ?user)
    (a-inactiu ?user)
    => 
    (assert (intensitat mitjana)  )
    (assert (dificultat facil))
)

;;;------- p-prima

(defrule associacio_heuristica::21
    ?user <- (object (is-a Persona))
    (p-prima ?user)
    (a-actiu ?user)
    => 
    (assert (intensitat mitjana))
    (assert (dificultat dificil))
)

(defrule associacio_heuristica::22
    ?user <- (object (is-a Persona))
    (p-prima ?user)
    (a-mitjanament_actiu ?user)
    => 
    (assert (intensitat mitjana))
    (assert (dificultat mitja))
)

(defrule associacio_heuristica::23
    ?user <- (object (is-a Persona))
    (p-prima ?user)
    (a-inactiu ?user)
    => 
    (assert (intensitat baixa)  )
    (assert (dificultat facil))
)

;;;------- p-gross

(defrule associacio_heuristica::31
    ?user <- (object (is-a Persona))
    (p-gross ?user)
    (a-actiu ?user)
    => 
    (assert (intensitat mitjana)  )
    (assert (dificultat mitja))
)

(defrule associacio_heuristica::32
    ?user <- (object (is-a Persona))
    (p-gross ?user)
    (a-mitjanament_actiu ?user)
    => 
    (assert (intensitat mitjana)  )
    (assert (dificultat facil))
)

(defrule associacio_heuristica::33
    ?user <- (object (is-a Persona))
    (p-gross ?user)
    (a-inactiu ?user)
    => 
    (assert (intensitat baixa)  )
    (assert (dificultat facil))
)

(defrule associacio_heuristica::check_mareig_alta
    (declare (salience -1))
    ?user <- (object (is-a Persona) (te_mareig "true"))
    ?i <- (intensitat alta)
    =>
    (retract ?i)
    (assert (intensitat mitjana))
)

(defrule associacio_heuristica::check_mareig_mitjana
    (declare (salience -1))
    ?user <- (object (is-a Persona) (te_mareig "true"))
    ?i <- (intensitat mitjana)
    =>
    (retract ?i)
    (assert (intensitat baixa))
)

(defrule associacio_heuristica::check_tibantor_alta
    (declare (salience -1))
    ?user <- (object (is-a Persona) (te_tibantor_muscular "true"))
    ?i <- (intensitat alta)
    =>
    (retract ?i)
    (assert (intensitat mitjana))
)

(defrule associacio_heuristica::check_tibantor_mitjana
    (declare (salience -1))
    ?user <- (object (is-a Persona) (te_tibantor_muscular "true"))
    ?i <- (intensitat mitjana)
    =>
    (retract ?i)
    (assert (intensitat baixa))
)

(defrule associacio_heuristica::sol_asbtracte "solucio_abstracte"
    (declare (salience -20))
    => 
    (focus solucio_abstracte)
)


;;; solucio_abstracte =============================================================

(defmodule solucio_abstracte
    (import associacio_heuristica ?ALL)
    (export ?ALL)
)


(defrule solucio_abstracte::escollir_exercicis_recomanats
    (declare (salience 20))
    ?persona <- (object (is-a Persona) (te ?objectiu_pers) )
    ?exercici <- (object (is-a Exercici) (satisfa $?objectius_satisfa) )
    =>
        (if (neq (member$  (instance-name ?objectiu_pers) ?objectius_satisfa) FALSE) 
            then 
            (assert (recomanat ?exercici))
            )
)

;; ======== FILTRAR exercicis recomanats ========

;; si la dificultat de la persona es mitja o facil, li treiem dels exercicis recomanats els dificils
(defrule solucio_abstracte::filtrar_dificultat_dificil_persona
    (declare (salience 18))
    ( or (dificultat mitja) (dificultat facil) )
    ?exercici_dificil <- (object (is-a Exercici) (dificultat "Dificil") )
    ?rec <- (recomanat ?exercici_dificil)    
    =>
    (retract ?rec)
)

;; si la dificultat de la persona es facil, li treiem dels exercicis recomanats els mitjans
(defrule solucio_abstracte::filtrar_dificultat_mitja_persona_facil
    (declare (salience 18))
    (dificultat facil)
    ?exercici_mitja <- (object (is-a Exercici) (dificultat "Mitja") )
    ?rec <- (recomanat ?exercici_mitja)    
    =>
    (retract ?rec)
)

(defrule solucio_abstracte::filtrar_exercicis_invalidesa
    (declare (salience 18))
    ?inv <- (object (is-a Invalidesa))
    ?persona <- (object (is-a Persona) (pateix ?inv))
    ?exercici <- (object (is-a Exercici) (involucra $?involucra))
    ?rec <- (recomanat ?exercici)
    (test (member$ (send ?inv get-invalida) ?involucra))
    =>
    (retract ?rec)
)


;; ======== Assignar repeticions i duracio als exercicis ========


 ; assignar Duracio:

;; si la intensitat de la persona es alta, assignar un valor de duracio maxima a la duracio si l'exercici recomanat es duratiu    
(defrule solucio_abstracte::assignar_duracio_intensitat_alta
    (intensitat alta) 
    ?exercici_dur <- (object (is-a Duratiu) (max_duracio ?dmax))
    ?rec <- (recomanat ?exercici_dur)
    =>
    (send ?exercici_dur put-duracio ?dmax)   ; assignar el maxim de duracio
)

;; si la intensitat de la persona es mitjana, assignar un valor a la duracio als repetitius que sigui la mitjana dels rangs minim i maxim 
;; de les instancies d'exercicis   
(defrule solucio_abstracte::assignar_duracio_intensitat_mitjana
    (intensitat mitjana) 
    ?exercici_dur <- (object (is-a Duratiu) (max_duracio ?dmax) (min_duracio ?dmin) )
    ?rec <- (recomanat ?exercici_dur)
    =>
    (bind ?dur_mitjana (integer (/ (+ ?dmax ?dmin) 2)))
    (send ?exercici_dur put-duracio ?dur_mitjana)    ; a la superclasse Exercici
)

;; si la intensitat de la persona es baixa, assignar un valor a la duracio minima del rang
(defrule solucio_abstracte::assignar_duracio_intensitat_baixa
    (intensitat baixa) 
    ?exercici_dur <- (object (is-a Duratiu) (min_duracio ?dmin))
    ?rec <- (recomanat ?exercici_dur)
    =>
    (send ?exercici_dur put-duracio ?dmin)   ; assignar el minim de duracio
)


 ; assignar Repeticions:

; si la intensitat de la persona es alta, assignar el maxim nombre de repeticions si l'exercici recomanat es repetitiu  
(defrule solucio_abstracte::assignar_repeticions_intensitat_alta
    (intensitat alta) 
    ?exercici_rep <- (object (is-a Repetitiu) (max_repeticions ?repmax))
    ?rec <- (recomanat ?exercici_rep)
    =>
    (send ?exercici_rep put-repeticions ?repmax)   
)


; si la intensitat de la persona es mitjana, assignar la mitjana de repeticions si l'exercici recomanat es repetitiu  
(defrule solucio_abstracte::assignar_repeticions_intensitat_mitjana
    (intensitat mitjana) 
    ?exercici_rep <- (object (is-a Repetitiu) (max_repeticions ?repmax) (min_repeticions ?repmin) )
    ?rec <- (recomanat ?exercici_rep)
    =>
    (bind ?reps_mitjana (integer (/ (+ ?repmax ?repmin) 2)))
    (send ?exercici_rep put-repeticions ?reps_mitjana)   
)

; si la intensitat de la persona es baixa, assignar el minim nombre de repeticions si l'exercici recomanat es repetitiu  
(defrule solucio_abstracte::assignar_repeticions_intensitat_baixa
    (intensitat baixa) 
    ?exercici_rep <- (object (is-a Repetitiu) (min_repeticions ?repmin))
    ?rec <- (recomanat ?exercici_rep)
    =>
    (send ?exercici_rep put-repeticions ?repmin)   
)



; === Afegir exercicis que son mes-recomanats ===

;; Afegeix els exercicis terapèutics per a les parts adolorides però no invàlides
(defrule solucio_abstracte::afegir_exercicis_dolor_rehabilitacio
    (declare (salience -1))
    ?dol <- (object (is-a Dolor))
    ?persona <- (object (is-a Persona) (pateix ?dol))
    ?exercici <- (object (is-a Exercici) (alleuja $?alivi))
    (test (member$ (send ?dol get-afecta) ?alivi))
    =>
    (assert(mes-recomanat ?exercici))
)


;; Posar intensitat mes adequada per   mes-recomanat    (enganxar les 6 funcions d'adalt)

 ; assignar Duracio:

(defrule solucio_abstracte::assignar_mes_recomanat_duracio_intens_alta
    (intensitat alta) 
    ?exercici_dur <- (object (is-a Duratiu) (max_duracio ?dmax))
    ?rec <- (mes-recomanat ?exercici_dur)
    =>
    (send ?exercici_dur put-duracio ?dmax)   ; assignar el maxim de duracio
)

(defrule solucio_abstracte::assignar_mes_recomanat_duracio_intens_mitjana
    (intensitat mitjana) 
    ?exercici_dur <- (object (is-a Duratiu) (max_duracio ?dmax) (min_duracio ?dmin) )
    ?rec <- (mes-recomanat ?exercici_dur)
    =>
    (bind ?dur_mitjana (integer (/ (+ ?dmax ?dmin) 2)))
    (send ?exercici_dur put-duracio ?dur_mitjana)    ; a la superclasse Exercici
)

(defrule solucio_abstracte::assignar_mes_recomanat_duracio_intens_baixa
    (intensitat baixa) 
    ?exercici_dur <- (object (is-a Duratiu) (min_duracio ?dmin))
    ?rec <- (mes-recomanat ?exercici_dur)
    =>
    (send ?exercici_dur put-duracio ?dmin)   ; assignar el minim de duracio
)


 ; assignar Repeticions:

(defrule solucio_abstracte::assignar_mes_recomanat_repeticions_intens_alta
    (intensitat alta) 
    ?exercici_rep <- (object (is-a Repetitiu) (max_repeticions ?repmax))
    ?rec <- (mes-recomanat ?exercici_rep)
    =>
    (send ?exercici_rep put-repeticions ?repmax)   
)

(defrule solucio_abstracte::assignar_mes_recomanat_repeticions_intens_mitjana
    (intensitat mitjana) 
    ?exercici_rep <- (object (is-a Repetitiu) (max_repeticions ?repmax) (min_repeticions ?repmin) )
    ?rec <- (mes-recomanat ?exercici_rep)
    =>
    (bind ?reps_mitjana (integer (/ (+ ?repmax ?repmin) 2)))
    (send ?exercici_rep put-repeticions ?reps_mitjana)   
)

(defrule solucio_abstracte::assignar_mes_recomanat_repeticions_intens_baixa
    (intensitat baixa) 
    ?exercici_rep <- (object (is-a Repetitiu) (min_repeticions ?repmin))
    ?rec <- (mes-recomanat ?exercici_rep)
    =>
    (send ?exercici_rep put-repeticions ?repmin)   
)




;; === Restringir repeticions i duracio segons el dolor ===

(defrule solucio_abstracte::restringir_exercicis_repetitius_dolor
    (declare (salience -1))
    ?dol <- (object (is-a Dolor))
    ?persona <- (object (is-a Persona) (pateix ?dol))
    ?exercici <- (object (is-a Repetitiu) (involucra $?involucra) (alleuja $?alivi) (min_repeticions ?mr))
    ?rec <- (recomanat ?exercici)
    (test (member$ (send ?dol get-afecta) ?involucra))
    (test (not(member$ (send ?dol get-afecta) ?alivi)))
    =>
    (send ?exercici put-repeticions ?mr)
)

(defrule solucio_abstracte::restringir_exercicis_duratius_dolor
    (declare (salience -1))
    ?dol <- (object (is-a Dolor))
    ?persona <- (object (is-a Persona) (pateix ?dol))
    ?exercici <- (object (is-a Duratiu) (involucra $?involucra) (alleuja $?alivi) (min_duracio ?dm))
    ?rec <- (recomanat ?exercici)
    (test (member$ (send ?dol get-afecta) ?involucra))
    (test (not(member$ (send ?dol get-afecta) ?alivi)))
    =>
    (send ?exercici put-duracio ?dm)
)



(defrule solucio_abstracte::sol_fin "solucio_final"
    (declare (salience -20))
    => 
    (seed (+ (integer (time)) 3))
    (focus solucio_final)
)

;;; solucio_final =============================================================

(defmodule solucio_final
    (import solucio_abstracte ?ALL)
    (export ?ALL)
)
(defglobal ?*varietat* = 30) ;;Variable per a la generacio random, de 0 a 80



(defrule solucio_final::sintetitzar_test_dos_en_dos
    (declare (salience 21))
    ?dia <- (object (is-a Dia) (temps_dia ?t_dia) (temps_maxim ?t_max))
    ?dia2 <- (object (is-a Dia) (temps_dia ?t_dia2) (temps_maxim ?t_max2))
    ?exercici <- (object (is-a Exercici) (duracio ?dur))
    
    ?rec <- (mes-recomanat ?exercici)
    (not (ja-recomanat ?exercici))
    (test (< (+ ?t_dia ?dur) ?t_max))
    (test (< (+ ?t_dia2 ?dur) ?t_max2))
    (test ( > (random 1 100) ?*varietat*))
    => 
    (send ?dia put-conte_exercicis (create$ (send ?dia get-conte_exercicis) ?exercici))
    (send ?dia2 put-conte_exercicis (create$ (send ?dia2 get-conte_exercicis) ?exercici))
    (send ?dia put-temps_dia (+ ?t_dia ?dur) )
    (send ?dia2 put-temps_dia (+ ?t_dia2 ?dur) )
    (assert (ja-recomanat ?exercici))
    ;(printout t ?exercici "mes-recomanat" crlf)
    (retract ?rec)
)




(defrule solucio_final::sintetitzar_test_omplir
    (declare (salience 20))
    ?dia <- (object (is-a Dia) (temps_dia ?t_dia) (temps_maxim ?t_max))
    ?exercici <- (object (is-a Exercici) (duracio ?dur))
    
    ?rec <- (recomanat ?exercici)
    (test (< (+ ?t_dia ?dur) ?t_max))
    (test ( > (random 1 100) ?*varietat*))
    
    => 
    (send ?dia put-conte_exercicis (create$ (send ?dia get-conte_exercicis) ?exercici))
    (send ?dia put-temps_dia (+ ?t_dia ?dur) )
    ;(printout t ?exercici "recomanat" crlf)
    (retract ?rec)
    (assert (ja-recomanat ?exercici))
)


(defrule solucio_final::sintetitzar_test_omplir2
    (declare (salience 19))
    ?dia <- (object (is-a Dia) (temps_dia ?t_dia) (temps_maxim ?t_max))
    ?exercici <- (object (is-a Exercici) (duracio ?dur))
    
    ?rec <- (ja-recomanat ?exercici)
    (test (< (+ ?t_dia ?dur) ?t_max))
    (test ( > (random 1 100) ?*varietat*))
    
    => 
    (send ?dia put-conte_exercicis (create$ (send ?dia get-conte_exercicis) ?exercici))
    (send ?dia put-temps_dia (+ ?t_dia ?dur) )
    ;(printout t ?exercici "recomanat2" crlf)
    (assert (ja-recomanat2 ?exercici))
    (retract ?rec)
)

(defrule solucio_final::sintetitzar_test_omplir3
    (declare (salience 18))
    ?dia <- (object (is-a Dia) (temps_dia ?t_dia) (temps_maxim ?t_max))
    ?exercici <- (object (is-a Exercici) (duracio ?dur))
    (test ( > (random 1 100) ?*varietat*))
    
    ?rec <- (ja-recomanat2 ?exercici)
    (test (< (+ ?t_dia ?dur) ?t_max))
    
    => 
    (send ?dia put-conte_exercicis (create$ (send ?dia get-conte_exercicis) ?exercici))
    (send ?dia put-temps_dia (+ ?t_dia ?dur) )
    ;(printout t ?exercici "recomanat3" crlf)
    (retract ?rec)
)