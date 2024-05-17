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
    (declare (salience 19))
    ?user <- (object (is-a Persona) (IMC ?imc))
    (test (and (>= ?imc 1850) (<= ?imc 2490) ) )
    => 
    (printout t "Persona normal" crlf)
    (assert (p-normal ?user))
)

(defrule inferencia::gross "persona amb IMC de categoria gross"
    (declare (salience 19))
    ?user <- (object (is-a Persona) (IMC ?imc))
    (test (> ?imc 2490))
    => 
    (printout t "Persona gross" crlf)
    (assert (p-gross ?user ))
)


(defrule inferencia::actiu
    (declare (salience 19))
    ?activitat <- (object (is-a Activitat) (es_activa "true") (frequencia ?x&:(> ?x 60)))
    ;?activitat <- (object (is-a Activitat) (es_activa "true"))
    ?user <- (object (is-a Persona) (fa ?activitat ) )
    ;(test (> (send ?activitat get-frequencia) 60 ))
    =>
    (printout t "Persona activa" crlf)
    (assert (a-actiu ?user))

)

(defrule inferencia::inactiu
    (declare (salience 19))
    ?activitat <- (object (is-a Activitat) (es_activa "false"))
    ?user <- (object (is-a Persona) (fa ?activitat ) )
    (test (> (send ?activitat get-frequencia) 60 ))
    =>
    (printout t "Persona inactiva" crlf)
    (assert (a-inactiu ?user))

)

(defrule inferencia::mitjanament_actiu
    (declare (salience 19))
    ?activitat <- (object (is-a Activitat) (frequencia ?x&:(< ?x 60)))
    ?user <- (object (is-a Persona) (fa ?activitat) )
    ;(test ( 60 >  (send ?activitat get-frequencia) ))
    =>
    (printout t (send ?activitat get-frequencia) crlf)
    (printout t "Persona mitjanament activa" crlf)
    (assert (a-mitjanament_actiu ?user))

)


;;;associacio heuristica: (salience <= 10) =============================================================
;;;  a-actiu a-mitjanament_actiu a-inactiu
;;;; p-gross p-normal p-prima


;;asserts:
;; intensitat: baixa mitjana alta
;; dificultat  facil mitjana dificil

;---- p-normal

(defrule inferencia::11
    (declare (salience 10))
    ?user <- (object (is-a Persona))
    (p-normal ?user)
    (a-actiu ?user)
    => 
    (assert (instensitat alta)  )
    (assert (dificultat dificil))
)

(defrule inferencia::12
    (declare (salience 10))
    ?user <- (object (is-a Persona))
    (p-normal ?user)
    (a-mitjanament_actiu ?user)
    => 
    (assert (instensitat alta)  )
    (assert (dificultat mitjana))
)

(defrule inferencia::13
    (declare (salience 10))
    ?user <- (object (is-a Persona))
    (p-normal ?user)
    (a-inactiu ?user)
    => 
    (assert (instensitat mitjana)  )
    (assert (dificultat facil))
)

;;;------- p-prima

(defrule inferencia::21
    (declare (salience 10))
    ?user <- (object (is-a Persona))
    (p-prima ?user)
    (a-actiu ?user)
    => 
    (assert (instensitat mitjana)  )
    (assert (dificultat dificil))
)

(defrule inferencia::22
    (declare (salience 10))
    ?user <- (object (is-a Persona))
    (p-prima ?user)
    (a-mitjanament_actiu ?user)
    => 
    (assert (instensitat mitjana)  )
    (assert (dificultat mitjana))
)

(defrule inferencia::23
    (declare (salience 10))
    ?user <- (object (is-a Persona))
    (p-prima ?user)
    (a-inactiu ?user)
    => 
    (assert (instensitat baixa)  )
    (assert (dificultat facil))
)

;;;------- p-gross

(defrule inferencia::31
    (declare (salience 10))
    ?user <- (object (is-a Persona))
    (p-gross ?user)
    (a-actiu ?user)
    => 
    (assert (instensitat mitjana)  )
    (assert (dificultat mitjana))
)

(defrule inferencia::32
    (declare (salience 10))
    ?user <- (object (is-a Persona))
    (p-gross ?user)
    (a-mitjanament_actiu ?user)
    => 
    (assert (instensitat mitjana)  )
    (assert (dificultat mitjana))
)

(defrule inferencia::33
    (declare (salience 10))
    ?user <- (object (is-a Persona))
    (p-gross ?user)
    (a-inactiu ?user)
    => 
    (assert (instensitat baixa)  )
    (assert (dificultat facil))
)