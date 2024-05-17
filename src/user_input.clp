
(defmodule user_input
    (import MAIN ?ALL)
    (export ?ALL)
)

;; ================================================================================================================

;; funcio que retorna la resposta a una pregunta, indicant les respostes permeses
(deffunction user_input::fer-pregunta (?pregunta $?respostes-permeses)
   (printout t ?pregunta crlf)
   (bind ?resposta (read))
   (if (lexemep ?resposta) 
       then (bind ?resposta (lowcase ?resposta)))
   (while (not (member$ ?resposta ?respostes-permeses)) do      ; si no escriu una resposta permesa, tornar a preguntar
      (printout t ?pregunta crlf)
      (bind ?resposta (read))
      (if (lexemep ?resposta) 
          then (bind ?resposta (lowcase ?resposta))))
   ?resposta                                                    ; retornar la resposta
)

;; ================================================================================================================

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
    (printout t crlf "Comencem! quina es la teva alcada (en cm)? " crlf)
    (bind ?alc (read))
    (send ?user put-alçada ?alc) 
)

;; Preguntem a l'usuari pel seu pes
(defrule user_input::input_user_pes
    (declare (salience 8))
    ?user <- (object (is-a Persona))
    =>
    (printout t crlf "Be, ara, quin es el teu pes en kg? " crlf)
    (bind ?pes (read))
    (send ?user put-pes_corporal ?pes) 
    (printout t crlf "Perfecte! calculant el teu IMC per a la cerca d'exercicis... " crlf)
)

(defrule user_input::input_user_ask_activity
    (declare (salience 7))
    ?user <- (object (is-a Persona))
    =>
    (printout t "Ets una persona físicament activa o no fas gaire activitat fisica diaria?" crlf)
    (assert (input-activitat (fer-pregunta "(1 - Si/2 - No)" 1 2)))
    ;(if (= ?temporalDecision 1)
    ;(then (
    ;    (send ?user put-fa acta)
    ;)
    ;else (
    ;    (send ?user put-fa acte)
    ;)))
)

(defrule user_input::input_user_link_activitat_activa
    (declare (salience 6))
    ?user <- (object (is-a Persona))
    ?act <- (object (is-a Activitat) (es_activa "true"))
    (input-activitat 1)
    =>
    (printout t crlf "Aixi ens agrada! actius sempre!" crlf)
    (send ?user put-fa ?act)
)

(defrule user_input::input_user_link_activitat_estatica
    (declare (salience 6))
    ?user <- (object (is-a Persona))
    ?act <- (object (is-a Activitat) (es_activa "false"))
    (input-activitat 2)
    =>
    (printout t crlf "No esta malament, anem a donar-li mes diversio" crlf)
    (send ?user put-fa ?act)
)

(defrule user_input::link_frequencia
    (declare (salience 4))
    ?user <- (object (is-a Persona) (fa ?act))
    =>
    (printout t crlf "Amb quina frequencia diaria (en minuts) acostumes a realitzar aquesta activitat?" crlf)
    (bind ?fre (read))
    (send ?act put-frequencia ?fre)
)

;; Preguntem a l'usuari per l'objectiu que vol escollir (prototipus)
(defrule user_input::input_user_objectiu
    (declare (salience 3))
    ?user <- (object (is-a Persona))
    =>
    (printout t crlf "Quin dels seguents objectius t'agradaria assolir?" crlf)
    (assert (input-objectiu (fer-pregunta "(1 - Baixar de Pes/2 - Musculacio)" 1 2)))
)

;; Assignació de l'objectiu "Baixar Pes" en cas que aquest sigui escollit amb un 1
(defrule user_input::input_user_link_objectiu_check_Baixar_Pes
    (declare (salience 2))
    ?user <- (object (is-a Persona))
    ?obj <- (object (is-a Objectiu) (nom "Baixar de pes"))
    (input-objectiu 1)
    =>
    (printout t crlf "No et reconeixeras a tu mateix!" crlf)
    (send ?user put-te ?obj)
)

;; Assignació de l'objectiu "Musculació" en cas que aquest sigui escollit amb un 2
(defrule user_input::input_user_link_objectiu_check_Musculacio
    (declare (salience 2))
    ?user <- (object (is-a Persona))
    (printout t crlf "Ningu podra parar-te!!!" crlf)
    ?obj <- (object (is-a Objectiu) (nom "Musculacio"))
    (input-objectiu 2)
    =>
    (send ?user put-te ?obj)
)

;(defrule user_input::testing
;    (declare (salience 1))
;    ?user <- (object (is-a Persona) (fa ?act))
;   (input-objectiu 1)
;    =>
;    (printout t crlf "VALOR DE FREQUENCIA INTRODUIT (TESTING): " (send ?act get-frequencia) crlf)
;)