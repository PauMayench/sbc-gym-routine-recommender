;;; abstraccio ======================================================================================================================== 
(defmodule abstraccio
    (import MAIN ?ALL)
    (export ?ALL)
)



;;; Regla para inicializar el programa
(defrule abstraccio::calcular_imc "Calcular IMC"
    (declare (salience 18))
    ?user <- (object (is-a Persona))
    => 
    (bind ?alc (send ?user get-alçada) )
    (bind ?alcm (/ ?alc 100) )
    (bind ?pes (send ?user get-pes_corporal) )
    (bind ?imc (round(/ (* ?pes 100) (* ?alcm ?alcm))))
    (send ?user put-IMC ?imc)
)