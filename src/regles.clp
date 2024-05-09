;;; Modulo para iniciar el programa
(defmodule MAIN
    (export ?ALL)
)

;;; Regla para inicializar el programa
(defrule MAIN::initialize "Inici del programa"
    (declare (salience 10))
    =>
    (printout t "----------------------------------------------------------" crlf)
    (printout t "          Recomanador d'un programa de gimnas             " crlf)
    (printout t "----------------------------------------------------------" crlf)
    (printout t crlf)
)
