
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

    (declare (salience 10))
    ?user <- (object (is-a Persona))
    =>
    (printout t "Introdueixi la seva edat: ") 
    (bind ?edat (read))
    (send ?user put-edat ?edat)

    (printout t crlf "Perfecte! ens agradaria saber una mica mes de tu! Quina es la teva alcada (en cm)? ")
    (bind ?alc (read))
    (send ?user put-alçada ?alc) 

    (printout t crlf "Bé, ara, seria important saber el teu pes en kg: ")
    (bind ?pes (read))
    (send ?user put-pes_corporal ?pes) 

    (printout t crlf "Perfecte! calculant el teu IMC per a la cerca d'exercicis... " crlf)

    (printout t crlf "Escull el numero de l'objectiu que t'agradaria assolir d'entre els seguents: " crlf)
    (printout t "1  Baixar de pes " crlf)
    (printout t "2  Musculacio " crlf)
)


