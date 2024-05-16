;;; MAIN ======================================================================================================================== 
(defmodule MAIN
    (export ?ALL)
)

;;; Regla per printejar banner
(defrule MAIN::draw_banner "Printejar banner"
    (declare (salience 10))
    => 
    (focus banner)
)


;;; Regla per a demanar input a l'usuari i crear la instancia de persona
(defrule MAIN::get_user_data "Input data"
    (declare (salience 9))
    => 
    ;creem persona
    (bind ?persona (make-instance user of Persona))

    (focus user_input)

)


;;; Regla per a testejar
(defrule MAIN::abstraure "abstraure"
    (declare (salience 8))
    => 
    (focus abstraccio)
)


;;; Regla para fer test
(defrule MAIN::test "test"
    (declare (salience 1))
    ?user <- (object (is-a Persona))
    => 
    (printout t  (send ?user get-IMC) crlf)
)