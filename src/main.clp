;;; MAIN ======================================================================================================================== 
(defmodule MAIN
    (export ?ALL)
)

;;; Regla per printejar banner
(defrule MAIN::draw_banner "Printejar banner"
    (declare (salience 10))
    => 
    ;(focus banner)
)


;;; Regla per a demanar input a l'usuari i crear la instancia de persona
(defrule MAIN::get_user_data "Input data"
    (declare (salience 9))
    => 
    ;creem persona
    (bind ?persona (make-instance user of Persona))

    (focus user_input)

)

;stub activitat
;(defrule MAIN::assigw
;    (declare (salience 8))
;    ?user <- (object (is-a Persona) )
;    ?a <- (object (is-a Activitat) (es_activa "true"))
;    =>
;    (printout t "aaa3eeeeeeeeee" crlf)
;    (send ?user put-fa ?a)
;)

;;; Regla per a fer l abstraccio
(defrule MAIN::abstraure "abstraure"
    (declare (salience 3))
    => 
    (focus abstraccio)
)

;;; Regla per a fer l associacio heuristica
(defrule MAIN::associacio_heur "associacio heuristica"
    (declare (salience 2))
    => 
    (focus associacio_heuristica)
)

;;; Regla para fer test
(defrule MAIN::test "test"
    (declare (salience 1))
    ?user <- (object (is-a Persona))
    => 
    (printout t  (send ?user get-IMC) crlf)
)