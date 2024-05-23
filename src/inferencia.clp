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
    ;;(printout t "Persona prima" crlf)
    (assert (p-prima ?user))
)
    
(defrule abstraccio::normal "persona amb IMC de categoria normal"
    (declare (salience 19))
    ?user <- (object (is-a Persona) (IMC ?imc))
    (test (and (>= ?imc 1850) (<= ?imc 2490) ) )
    => 
    ;(printout t "Persona normal" crlf)
    (assert (p-normal ?user))
)

(defrule abstraccio::gross "persona amb IMC de categoria gross"
    (declare (salience 19))
    ?user <- (object (is-a Persona) (IMC ?imc))
    (test (> ?imc 2490))
    => 
    ;(printout t "Persona gross" crlf)
    (assert (p-gross ?user ))
)


(defrule abstraccio::actiu
    (declare (salience 19))
    ?activitat <- (object (is-a Activitat) (es_activa "true") (frequencia ?x&:(> ?x 60)))
    ;?activitat <- (object (is-a Activitat) (es_activa "true"))
    ?user <- (object (is-a Persona) (fa ?activitat ) )
    =>
    (assert (a-actiu ?user))

)

(defrule abstraccio::inactiu
    (declare (salience 19))
    ?activitat <- (object (is-a Activitat) (es_activa "false"))
    ?user <- (object (is-a Persona) (fa ?activitat ) )
    (test (> (send ?activitat get-frequencia) 60 ))
    =>
    (assert (a-inactiu ?user))

)

(defrule abstraccio::mitjanament_actiu
    (declare (salience 19))
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
;; dificultat  facil mitjana dificil

;---- p-normal

(defrule associacio_heuristica::11
    ?user <- (object (is-a Persona))
    (p-normal ?user)
    (a-actiu ?user)
    => 
    (assert (instensitat alta)  )
    (assert (dificultat dificil))
)

(defrule associacio_heuristica::12
    ?user <- (object (is-a Persona))
    (p-normal ?user)
    (a-mitjanament_actiu ?user)
    => 
    (assert (instensitat alta)  )
    (assert (dificultat mitjana))
)

(defrule associacio_heuristica::13
    ?user <- (object (is-a Persona))
    (p-normal ?user)
    (a-inactiu ?user)
    => 
    (assert (instensitat mitjana)  )
    (assert (dificultat facil))
)

;;;------- p-prima

(defrule associacio_heuristica::21
    ?user <- (object (is-a Persona))
    (p-prima ?user)
    (a-actiu ?user)
    => 
    (assert (instensitat mitjana)  )
    (assert (dificultat dificil))
)

(defrule associacio_heuristica::22
    ?user <- (object (is-a Persona))
    (p-prima ?user)
    (a-mitjanament_actiu ?user)
    => 
    (assert (instensitat mitjana)  )
    (assert (dificultat mitjana))
)

(defrule associacio_heuristica::23
    ?user <- (object (is-a Persona))
    (p-prima ?user)
    (a-inactiu ?user)
    => 
    (assert (instensitat baixa)  )
    (assert (dificultat facil))
)

;;;------- p-gross

(defrule associacio_heuristica::31
    ?user <- (object (is-a Persona))
    (p-gross ?user)
    (a-actiu ?user)
    => 
    (assert (instensitat mitjana)  )
    (assert (dificultat mitjana))
)

(defrule associacio_heuristica::32
    ?user <- (object (is-a Persona))
    (p-gross ?user)
    (a-mitjanament_actiu ?user)
    => 
    (assert (instensitat mitjana)  )
    (assert (dificultat mitjana))
)

(defrule associacio_heuristica::33
    ?user <- (object (is-a Persona))
    (p-gross ?user)
    (a-inactiu ?user)
    => 
    (assert (instensitat baixa)  )
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
    ?exercici <- (object (is-a Exercici) (satisfa ?objectiu_satisfa) )
    (test (neq ?objectiu_pers nil)) 
    (test (neq ?objectiu_satisfa nil)) 
    =>
    (if (eq (instance-name ?objectiu_pers) (instance-name ?objectiu_satisfa))
        then 
        (assert (recomanat ?exercici) )
    )
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

(defrule solucio_abstracte::sol_fin "solucio_final"
    (declare (salience -20))
    => 
    (focus solucio_final)
)

;;; solucio_final =============================================================

(defmodule solucio_final
    (import solucio_abstracte ?ALL)
    (export ?ALL)
)


(defrule solucio_final::sintetitzar_programa_omplir
    ?dia <- (object (is-a Dia) (temps_dia ?t_dia) (temps_maxim ?t_max))
    ?exercici <- (object (is-a Exercici) (duracio ?dur))
    (recomanat ?exercici)
    (not (ja-recomanat ?exercici))
    (test (< (+ ?t_dia ?dur) ?t_max)
    => 
    (bind ?exes (send ?dia get-conte_exercicis))

    (send ?dia put-conte_exercicis (create$ (send ?dia get-conte_exercicis) ?exercici))
    (send ?dia put-temps_dia (+ ?t_dia ?dur) )
    (assert (ja-recomanat ?exercici))
)


;(defrule solucio_final::sintetitzar_programa
;    ?dia <- (object (is-a Dia) )
;    ?exercici <- (object (is-a Exercici))
;    (recomanat ?exercici)
;    (not (ja-recomanat ?exercici))
;    => 
;    (bind ?exes (send ?dia get-conte_exercicis))
;    (if (< (length$ ?exes) 5)
;        then
;        (send ?dia put-conte_exercicis (create$ (send ?dia get-conte_exercicis) ?exercici))
;        (assert (ja-recomanat ?exercici))
;    )
;)


