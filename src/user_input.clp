
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



(defrule user_input::input_user_edat

    (declare (salience 10))
    ?user <- (object (is-a Persona))
    =>
    (printout t "Introdueixi la seva edat: ") 
    (bind ?edat (read))
    (send ?user put-edat ?edat)
)

(defrule user_input::input_user_alcada
    (declare (salience 9))
    ?user <- (object (is-a Persona))
    =>
    (printout t crlf "Perfecte! ens agradaria saber una mica mes de tu! Quina es la teva alcada (en cm)? ")
    (bind ?alc (read))
    (send ?user put-alçada ?alc) 
)

(defrule user_input::input_user_pes
    (declare (salience 8))
    ?user <- (object (is-a Persona))
    =>
    (printout t crlf "Bé, ara, seria important saber el teu pes en kg: ")
    (bind ?pes (read))
    (send ?user put-pes_corporal ?pes) 
    (printout t crlf "Perfecte! calculant el teu IMC per a la cerca d'exercicis... " crlf)
)

(defrule user_input::input_user_objectiu
    (declare (salience 7))
    ?user <- (object (is-a Persona))
    =>
    (printout t crlf "Escull el numero de l'objectiu que t'agradaria assolir d'entre els seguents: " crlf)
    (printout t "   1  Baixar de pes " crlf)
    (printout t "   2  Musculacio " crlf)
    (bind ?tempDecision (read))
    (send ?user put-te ?tempDecision)
)

(defrule user_input::input_user_link_objectiu_check_Baixar_Pes
    (declare (salience 6))
    ?user <- (object (is-a Persona) (te ?x&:(eq ?x 1)))
    =>
    (send ?user put-te Baixar_de_pes)
)

(defrule user_input::input_user_link_objectiu_check_Baixar_Pes
    (declare (salience 6))
    ?user <- (object (is-a Persona) (te ?x&:(eq ?x 2)))
    =>
    (send ?user put-te Musculacio)
)