;;; MAIN ======================================================================================================================== 
(defmodule MAIN
    (export ?ALL)
)

;;; Regla per printejar banner
(defrule MAIN::draw_banner "Printejar banner"
    (declare (salience 10))
    => 
    (focus banner)
    ;(printout t "======================================================" crlf)
    ;(printout t crlf "           GYM ROUTINE RECOMMENDER" crlf crlf )
    ;(printout t "======================================================" crlf)
)


;;; Regla per a demanar input a l'usuari i crear la instancia de persona
(defrule MAIN::get_user_data "Input data"
    (declare (salience 9))
    => 
    ;creem persona
    (bind ?persona (make-instance user of Persona))

    (focus user_input)
)

;;; Regla per a fer l abstraccio
(defrule MAIN::abstraure "abstraccio"
    (declare (salience 8))
    => 
    (printout t crlf "Calculant programa..." crlf)
    ;(system (str-cat "sleep " 2))
    (focus abstraccio)
)

(defrule MAIN::print_programa "Imprimeix el programa"
    (declare (salience 7))
    => 
    (focus imprimir_programa)
)
