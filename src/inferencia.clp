;;; inferencia ======================================================================================================================== 
(defmodule inferencia
    (import MAIN ?ALL)
    (export ?ALL)
)

;;; Regla per a calcular el IMC
(defrule inferencia::calcular_imc "Calcular IMC"
    (declare (salience 20))
    ?user <- (object (is-a Persona))
    => 
    (bind ?alc (send ?user get-alçada) )
    (bind ?alcm (/ ?alc 100) )
    (bind ?pes (send ?user get-pes_corporal) )
    (bind ?imc (round(/ (* ?pes 100) (* ?alcm ?alcm))))
    (send ?user put-IMC ?imc)
)

(defrule inferencia::prima "persona amb IMC de categoria prima"
    (declare (salience 19))   ; todo treure les salience amb els IMC
    ?user <- (object (is-a Persona) (IMC ?imc))
    (test (< ?imc 1850))
    => 
    (printout t "Persona prima" crlf)
    (assert (p-prima ?user))
)
    
(defrule inferencia::normal "persona amb IMC de categoria normal"
    (declare (salience 18))
    ?user <- (object (is-a Persona) (IMC ?imc))
    (test (and (>= ?imc 1850) (<= ?imc 2490) ) )
    => 
    (printout t "Persona normal" crlf)
    (assert (p-normal ?user))
)

(defrule inferencia::grossa "persona amb IMC de categoria grossa"
    (declare (salience 17))
    ?user <- (object (is-a Persona) (IMC ?imc))
    (test (> ?imc 2490))
    => 
    (printout t "Persona grossa" crlf)
    (assert (p-grossa ?user ))
)


(defrule inferencia::actiu
    (declare (salience 16))
    ?activitat <- (object (is-a Activitat) (es_activa "true") (frequencia ?x&:(> ?x 60)))
    ;?activitat <- (object (is-a Activitat) (es_activa "true"))
    ?user <- (object (is-a Persona) (fa ?activitat ) )
    ;(test (> (send ?activitat get-frequencia) 60 ))
    =>
    (printout t "Persona activa" crlf)
    (assert (a-actiu ?user))

)

(defrule inferencia::inactiu
    (declare (salience 15))
    ?activitat <- (object (is-a Activitat) (es_activa "false"))
    ?user <- (object (is-a Persona) (fa ?activitat ) )
    (test (> (send ?activitat get-frequencia) 60 ))
    =>
    (printout t "Persona inactiva" crlf)
    (assert (a-inactiu ?user))

)

(defrule inferencia::mitjanament_actiu
    (declare (salience 14))
    ?activitat <- (object (is-a Activitat) (frequencia ?x&:(< ?x 60)))
    ?user <- (object (is-a Persona) (fa ?activitat) )
    ;(test ( 60 >  (send ?activitat get-frequencia) ))
    =>
    (printout t (send ?activitat get-frequencia) crlf)
    (printout t "Persona mitjanament activa" crlf)
    (assert (a-mitjanament_actiu ?user))

)


;;;associacio heuristica: (salience < 10) ===============================================
;;;  a-actiu a-mitjanament_actiu a-inactiu
;;;; p-grossa p-normal p-prima

(defrule inferencia::11
    (declare (salience 10))
    ?user <- (object (is-a Persona))
    (p-normal ?user)
    (a-mitjanament_actiu ?user)
    => 
    ;(assert (instensitat alta)  )
    ;(assert (dificultat dificil))
    (printout t "aaaaaaaaaaaaaaa" crlf)
)
