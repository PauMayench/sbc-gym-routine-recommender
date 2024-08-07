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
    (printout t "Persona prima" crlf)
    (assert (pprima ?user))
)
    
(defrule abstraccio::normal "persona amb IMC de categoria normal"
    (declare (salience 19))
    ?user <- (object (is-a Persona) (IMC ?imc))
    (test (and (>= ?imc 1850) (<= ?imc 2490) ) )
    => 
    (printout t "Persona normal" crlf)
    (assert (pnormal ?user))
)

(defrule abstraccio::grossa "persona amb IMC de categoria grossa"
    (declare (salience 19))
    ?user <- (object (is-a Persona) (IMC ?imc))
    (test (> ?imc 2490))
    => 
    (printout t "Persona grossa" crlf)
    (assert (pgrossa ?user ))
)


(defrule abstraccio::actiu
    (declare (salience 19))
    ?activitat <- (object (is-a Activitat) (es_activa "true"))
    ?user <- (object (is-a Persona) (fa ?activitat ) )
    (test (> (send ?activitat get-frequencia) 60 ))

    =>
    (printout t "Persona activa" crlf)
    (assert (a_actiu ?user))

)

(defrule abstraccio::inactiu
    (declare (salience 19))
    ?activitat <- (object (is-a Activitat) (es_activa "false"))
    ?user <- (object (is-a Persona) (fa ?activitat ) )
    (test (> (send ?activitat get-frequencia) 60 ))

    =>
    (printout t "Persona inactiva" crlf)
    (assert (a_inactiu ?user))

)

;;; (assert (a_mitjanament_actiu ?user)) TODO