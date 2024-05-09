
(defmodule user_input
    (import MAIN ?ALL)
    (export ?ALL)
)

;;(defrule user_input::NOM_FUNCIO
;;
;;    ?user <- (object (is-a Persona))
;;    =>
;;    (printout t PREGUNTA: ") 
;;    (bind ?inp (read))
;;    (send ?user put-ATRIBUT ?inp)
;;    
;;)



(defrule user_input::input_user_data

    (define (salience 10))
    ?user <- (object (is-a Persona))
    =>
    (printout t "Introdueixi la seva edat: ") 
    (bind ?edat (read))
    (send ?user put-edat ?edat)
    ;(printout t (send ?user get-edat))
)


