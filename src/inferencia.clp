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


(defrule solucio_abstracte::escollir_exercicis_recomanats_Baixar_pes
    ?persona <- (object (is-a Persona) (te ?objectiu_pers) )
    ?exercici <- (object (is-a Exercici) (satisfa $?objectius_satisfa) )
    =>
        (if (neq (member$  (instance-name ?objectiu_pers) ?objectius_satisfa) FALSE) 
            then 
            (assert (recomanat ?exercici))
            )
)

;; Afegeix els exercicis terapèutics per a les parts adolorides però no invàlides
(defrule solucio_abstracte::afegir_exercicis_dolor_rehabilitacio
    (declare (salience -1))
    ?dol <- (object (is-a Dolor))
    ?persona <- (object (is-a Persona) (pateix ?dol))
    ?exercici <- (object (is-a Exercici) (alleuja $?alivi))
    (test (member$ (send ?dol get-afecta) ?alivi))
    =>
    (assert(mes-recomanat ?exercici))
    ;; ¡¡¡POSAR INTENSITAT ADEQUADA!!!
)

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
    ?exercici <- (object (is-a Duratiu) (involucra $?involucra) (alleuja $?alivi) (duracio_minima ?dm))
    ?rec <- (recomanat ?exercici)
    (test (member$ (send ?dol get-afecta) ?involucra))
    (test (not(member$ (send ?dol get-afecta) ?alivi)))
    =>
    (send ?exercici put-duracio ?dm)
)


(defrule solucio_abstracte::filtrar_exercicis_invalidesa
    ?inv <- (object (is-a Invalidesa))
    ?persona <- (object (is-a Persona) (pateix ?inv))
    ?exercici <- (object (is-a Exercici) (involucra $?involucra))
    ?rec <- (recomanat ?exercici)
    (test (member$ (send ?inv get-invalida) ?involucra))
    =>
    (retract ?rec)
)


;; si la dificultat de la persona es mitja o facil, li treiem dels exercicis recomanats els dificils
(defrule solucio_abstracte::filtrar_dificultat_dificil_persona
    ( or (dificultat mitja) (dificultat facil) )
    ?exercici_dificil <- (object (is-a Exercici) (dificultat "Dificil") )
    ?rec <- (recomanat ?exercici_dificil)    
    =>
    (retract ?rec)
)

;; si la dificultat de la persona es facil, li treiem dels exercicis recomanats els mitjans
(defrule solucio_abstracte::filtrar_dificultat_mitja_persona_facil
    (dificultat facil)
    ?exercici_mitja <- (object (is-a Exercici) (dificultat "Mitja") )
    ?rec <- (recomanat ?exercici_mitja)    
    =>
    (retract ?rec)
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



(defrule solucio_final::sintetitzar_test
    (declare (salience 20))
    ?dia <- (object (is-a Dia) (temps_dia ?t_dia) (temps_maxim ?t_max))
    ?dia2 <- (object (is-a Dia) (temps_dia ?t_dia2) (temps_maxim ?t_max2))
    ?exercici <- (object (is-a Exercici) (duracio ?dur))
    
    (mes-recomanat ?exercici)
    (not (ja-recomanat ?exercici))
    (test (< (+ ?t_dia ?dur) ?t_max))
    (test (< (+ ?t_dia2 ?dur) ?t_max2))
    (test ( > (random 1 100) 30))
    => 
    (send ?dia put-conte_exercicis (create$ (send ?dia get-conte_exercicis) ?exercici))
    (send ?dia2 put-conte_exercicis (create$ (send ?dia2 get-conte_exercicis) ?exercici))
    (send ?dia put-temps_dia (+ ?t_dia ?dur) )
    (send ?dia2 put-temps_dia (+ ?t_dia2 ?dur) )
    ;(printout t ?t_dia " " ?t_max " " ?dur " " (+ ?t_dia ?dur) " " (< (+ ?t_dia ?dur) ?t_max) crlf)
    (assert (ja-recomanat ?exercici))
)




(defrule solucio_final::sintetitzar_test
    (declare (salience 20))
    ?dia <- (object (is-a Dia) (temps_dia ?t_dia) (temps_maxim ?t_max))
    ?exercici <- (object (is-a Exercici) (duracio ?dur))
    
    (recomanat ?exercici)
    (not (ja-recomanat ?exercici))
    (test (< (+ ?t_dia ?dur) ?t_max))
    
    => 
    (send ?dia put-conte_exercicis (create$ (send ?dia get-conte_exercicis) ?exercici))
    (send ?dia put-temps_dia (+ ?t_dia ?dur) )
    ;(printout t ?t_dia " " ?t_max " " ?dur " " (+ ?t_dia ?dur) " " (< (+ ?t_dia ?dur) ?t_max) crlf)
    (assert (ja-recomanat ?exercici))
)