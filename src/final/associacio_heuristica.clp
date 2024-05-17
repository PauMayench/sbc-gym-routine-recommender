;;; associacio_heuristica======================================================================================================================== 
(defmodule associacio_heuristica
    (import MAIN ?ALL)
    (export ?ALL)
)


(defrule associacio_heuristica::pnorm
    ?user <- (object (is-a Persona))
    (pprima ?user)
    => 
    (printout t "heuristic prim" crlf)
)
