;;; MAIN ======================================================================================================================== 
(defmodule MAIN
    (export ?ALL)
)

;;; Regla per printejar banner
(defrule MAIN::draw_banner "Printejar banner"
    (declare (salience 10))
    => 
    (printout t crlf "GYM ROUTINE RECOMMENDER" crlf)
)


;;; Regla per a demanar input a l'usuari i crear la instancia de persona
(defrule MAIN::get_user_data "Input data"
    (declare (salience 9))
    => 
    ;creem persona
    (bind ?persona (make-instance user of Persona))

    (focus user_input)

)

;;; Regla per a fer l inferencia
(defrule MAIN::inferir "inferencia"
    (declare (salience 7))
    => 
    (focus inferencia)
)
