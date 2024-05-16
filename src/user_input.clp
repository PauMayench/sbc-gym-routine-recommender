
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


;; Preguntem a l'usuari per la seva edat
;(defrule user_input::input_user_edat
;
;    (declare (salience 10))
;    ?user <- (object (is-a Persona))
;    =>
;    (printout t "Introdueixi la seva edat: ") 
;    (bind ?edat (read))
;    (send ?user put-edat ?edat)
;)

;; Preguntem a l'usuari per la seva alçada
(defrule user_input::input_user_alcada
    (declare (salience 9))
    ?user <- (object (is-a Persona))
    =>
    (printout t crlf "Perfecte! ens agradaria saber una mica mes de tu! Quina es la teva alcada (en cm)? ")
    (bind ?alc (read))
    (send ?user put-alçada ?alc) 
)

;; Preguntem a l'usuari pel seu pes
(defrule user_input::input_user_pes
    (declare (salience 8))
    ?user <- (object (is-a Persona))
    =>
    (printout t crlf "Bé, ara, seria important saber el teu pes en kg: ")
    (bind ?pes (read))
    (send ?user put-pes_corporal ?pes) 
    (printout t crlf "Perfecte! calculant el teu IMC per a la cerca d'exercicis... " crlf)
)

(defrule user_input::input_user_ask_activity
    (declare (salience 7))
    ?user <- (object (is-a Persona))
    =>
    (printout t crlf "Ets una persona físicament activa o no fas gaire activitat física diaria?" crlf)
    (printout t crlf "  1  Si" crlf)
    (printout t crlf "  2  No" crlf)
    (bind ?temporalDecision (read))
    (send ?user put-fa ?temporalDecision)
)

(defrule user_input::input_user_link_activitat_activa
    (declare (salience 6))
    ?user <- (object (is-a Persona) (fa ?x&:(eq ?x 1)))
    =>
    (send ?user put-fa Activitat_Activa)
)

(defrule user_input::input_user_link_activitat_estatica
    (declare (salience 6))
    ?user <- (object (is-a Persona) (fa ?x&:(eq ?x 2)))
    =>
    (send ?user put-fa Activitat_Estatica)
)

;; Preguntem a l'usuari per l'objectiu que vol escollir (prototipus)
(defrule user_input::input_user_objectiu
    (declare (salience 5))
    ?user <- (object (is-a Persona))
    =>
    (printout t crlf "Escull el numero de l'objectiu que t'agradaria assolir d'entre els seguents: " crlf)
    (printout t "   1  Baixar de pes " crlf)
    (printout t "   2  Musculacio " crlf)
    (bind ?tempDecision (read))
    (send ?user put-te ?tempDecision)
)

;; Assignació de l'objectiu "Baixar Pes" en cas que aquest sigui escollit amb un 1
(defrule user_input::input_user_link_objectiu_check_Baixar_Pes
    (declare (salience 4))
    ?user <- (object (is-a Persona) (te ?x&:(eq ?x 1)))
    =>
    (send ?user put-te Baixar_de_pes)
)

;; Assignació de l'objectiu "Musculació" en cas que aquest sigui escollit amb un 2
(defrule user_input::input_user_link_objectiu_check_Musculacio
    (declare (salience 4))
    ?user <- (object (is-a Persona) (te ?x&:(eq ?x 2)))
    =>
    (send ?user put-te Musculacio)
)