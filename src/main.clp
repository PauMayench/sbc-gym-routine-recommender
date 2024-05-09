;;; MAIN ======================================================================================================================== 
(defmodule MAIN
    (export ?ALL)
)

;;; Regla para inicializar el programa
(defrule MAIN::draw_banner "Printejar banner"
    (declare (salience 10))
    => 
    (focus banner)
)


;;; Regla para inicializar el programa
(defrule MAIN::get_user_data "Input data"
    (declare (salience 9))
    => 
    ;creem persona
    (bind ?persona (make-instance user of Persona))

    (focus user_input)

)

;;; Regla para inicializar el programa
(defrule MAIN::test "test"
    (declare (salience 8))
    ?user <- (object (is-a Persona))
    => 
    (printout t  "nascarin ----> " (send ?user get-edat))

)
