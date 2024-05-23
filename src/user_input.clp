
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
;    (declare (salience 20))
;    ?user <- (object (is-a Persona))
;    =>
;    (printout t "Introdueixi la seva edat: ") 
;    (bind ?edat (read))
;    (send ?user put-edat ?edat)
;)


;; Preguntem a l'usuari per la seva alçada
(defrule user_input::input_user_alcada
    (declare (salience 19))
    ?user <- (object (is-a Persona))
    =>
    (printout t crlf "Comencem! quina es la teva alcada (en cm)? " crlf)
    (bind ?alc (read))
    (send ?user put-alçada ?alc) 
)

;; Preguntem a l'usuari pel seu pes
(defrule user_input::input_user_pes
    (declare (salience 18))
    ?user <- (object (is-a Persona))
    =>
    (printout t crlf "Be, ara, quin es el teu pes en kg? " crlf)
    (bind ?pes (read))
    (send ?user put-pes_corporal ?pes) 
    (printout t crlf "Perfecte! calculant el teu IMC per a la cerca d'exercicis... " crlf)
)

(defrule user_input::input_user_ask_activity
    (declare (salience 17))
    ?user <- (object (is-a Persona))
    =>
    (printout t "Digues quin tipus d'activitat realitzes?" crlf)
    (assert (input-activitat (fer-pregunta "(1 - Activa/2 - Inactiva)" 1 2)))
    ;(if (= ?temporalDecision 1)
    ;(then (
    ;    (send ?user put-fa acta)
    ;)
    ;else (
    ;    (send ?user put-fa acte)
    ;)))
)

(defrule user_input::input_user_link_activitat_activa
    (declare (salience 16))
    ?user <- (object (is-a Persona))
    ?act <- (object (is-a Activitat) (es_activa "true"))
    (input-activitat 1)
    =>
    (printout t crlf "Aixi ens agrada! actius sempre!" crlf)
    (send ?user put-fa ?act)
)

(defrule user_input::input_user_link_activitat_estatica
    (declare (salience 16))
    ?user <- (object (is-a Persona))
    ?act <- (object (is-a Activitat) (es_activa "false"))
    (input-activitat 2)
    =>
    (printout t crlf "No esta malament, anem a donar-li mes diversio" crlf)
    (send ?user put-fa ?act)
)

(defrule user_input::link_frequencia
    (declare (salience 14))
    ?user <- (object (is-a Persona) (fa ?act))
    =>
    (printout t crlf "Amb quina frequencia diaria (en minuts) acostumes a realitzar aquesta activitat?" crlf)
    (bind ?fre (read))
    (send ?act put-frequencia ?fre)
)

;; Preguntem a l'usuari per l'objectiu que vol escollir (prototipus)
(defrule user_input::input_user_objectiu
    (declare (salience 13))
    ?user <- (object (is-a Persona))
    =>
    (printout t crlf "Quin dels seguents objectius t'agradaria assolir?" crlf)
    (assert (input-objectiu (fer-pregunta "(1 - Baixar de Pes/2 - Musculacio)" 1 2)))
)

;; Assignació de l'objectiu "Baixar Pes" en cas que aquest sigui escollit amb un 1
(defrule user_input::input_user_link_objectiu_check_Baixar_Pes
    (declare (salience 12))
    ?user <- (object (is-a Persona))
    ?obj <- (object (is-a Objectiu) (nom "Baixar de pes"))
    (input-objectiu 1)
    =>
    (printout t crlf "No et reconeixeras a tu mateix!" crlf)
    (send ?user put-te ?obj)
)

;; Assignació de l'objectiu "Musculació" en cas que aquest sigui escollit amb un 2
(defrule user_input::input_user_link_objectiu_check_Musculacio
    (declare (salience 12))
    ?user <- (object (is-a Persona))
    ;(printout t crlf "Ningu podra parar-te!!!" crlf)
    ?obj <- (object (is-a Objectiu) (nom "Musculacio"))
    (input-objectiu 2)
    =>
    (send ?user put-te ?obj)
)

;; Preguntar al usuari si té cap invalidesa
(defrule user_input::input_user_preguntar_discapacitat
    (declare (salience 11))
    ?user <- (object (is-a Persona))
    =>
    (printout t crlf "Tens alguna mena de Restricció corporal, de moviment o que no puguis exercitar?" crlf)
    (assert (input-ask-inv (fer-pregunta "(1 - Si/2 - No)" 1 2)))
)

;; Preguntar al usuari quina invalidesa en concret té, en cas que en tingui alguna
(defrule user_input::input_user_especificar_discapacitat
    (declare (salience 10))
    ?user <- (object (is-a Persona))
    (input-ask-inv 1)
    =>
    (printout t crlf "A quina zona del cos tens concretament tens aquesta restriccio?" crlf)
    (printout t crlf "1 - Braç" crlf)
    (printout t crlf "2 - Cama" crlf)
    (printout t crlf "3 - Espatlla" crlf)
    (printout t crlf "4 - Esquena" crlf)
    (printout t crlf "5 - Pit" crlf)
    (printout t crlf "6 - Tors" crlf)
    (assert (input-sel-inv (fer-pregunta "Seleccioni: " 1 2 3 4 5 6)))
)

(defrule user_input::input_user_assignar_inv_brac
    (declare (salience 9))
    (input-sel-inv 1)
    ?user <- (object (is-a Persona))
    ?inv <- (object (is-a Invalidesa) (invalida [Braç]))
    =>
    (send ?user put-pateix ?inv)
)

(defrule user_input::input_user_assignar_inv_cama
    (declare (salience 9))
    (input-sel-inv 2)
    ?user <- (object (is-a Persona))
    ?inv <- (object (is-a Invalidesa) (invalida [Cama]))
    =>
    (send ?user put-pateix ?inv)
)

(defrule user_input::input_user_assignar_inv_espatlla
    (declare (salience 9))
    (input-sel-inv 3)
    ?user <- (object (is-a Persona))
    ?inv <- (object (is-a Invalidesa) (invalida [Espatlla]))
    =>
    (send ?user put-pateix ?inv)
)

(defrule user_input::input_user_assignar_inv_esquena
    (declare (salience 9))
    (input-sel-inv 4)
    ?user <- (object (is-a Persona))
    ?inv <- (object (is-a Invalidesa) (invalida [Esquena]))
    =>
    (send ?user put-pateix ?inv)
)

(defrule user_input::input_user_assignar_inv_pit
    (declare (salience 9))
    (input-sel-inv 5)
    ?user <- (object (is-a Persona))
    ?inv <- (object (is-a Invalidesa) (invalida [Pit]))
    =>
    (send ?user put-pateix ?inv)
)

(defrule user_input::input_user_assignar_inv_tors
    (declare (salience 9))
    (input-sel-inv 6)
    ?user <- (object (is-a Persona))
    ?inv <- (object (is-a Invalidesa) (invalida [Tors]))
    =>
    (send ?user put-pateix ?inv)
)

(defrule user_input::input_user_ask_dolor
    (declare (salience 10))
    ?user <- (object (is-a Persona))
    (input-ask-inv 2)
    =>
    (printout t crlf "Perfecte, tens cap tipus de mal a alguna zona pero que no t'impedeixi exercitar-la?" crlf)
    (assert (input-sel-dol (fer-pregunta "(1 - Si/2 - No)" 1 2)))
)

(defrule user_input::input_user_esp_dol
    (declare (salience 9))
    (input-sel-dol 1)
    ?user <- (object (is-a Persona))
    =>
    (printout t crlf "A quina zona del cos tens concretament aquest dolor a aliviar?" crlf)
    (printout t crlf "1 - Braç" crlf)
    (printout t crlf "2 - Cama" crlf)
    (printout t crlf "3 - Espatlla" crlf)
    (printout t crlf "4 - Esquena" crlf)
    (printout t crlf "5 - Pit" crlf)
    (printout t crlf "6 - Tors" crlf)
    (assert (input-esp-dol (fer-pregunta "Seleccioni: " 1 2 3 4 5 6)))
)

(defrule user_input::input_user_sol_dol_brac
    (declare (salience 8))
    (input-esp-dol 1)
    ?user <- (object (is-a Persona))
    ?dol <- (object (is-a Dolor) (afecta [Braç]))
    =>
    (send ?user put-pateix ?dol)
)

(defrule user_input::input_user_sol_dol_cama
    (declare (salience 8))
    (input-esp-dol 2)
    ?user <- (object (is-a Persona))
    ?dol <- (object (is-a Dolor) (afecta [Cama]))
    =>
    (send ?user put-pateix ?dol)
)

(defrule user_input::input_user_sol_dol_espatlla
    (declare (salience 8))
    (input-esp-dol 3)
    ?user <- (object (is-a Persona))
    ?dol <- (object (is-a Dolor) (afecta [Espatlla]))
    =>
    (send ?user put-pateix ?dol)
)

(defrule user_input::input_user_sol_dol_esquena
    (declare (salience 8))
    (input-esp-dol 4)
    ?user <- (object (is-a Persona))
    ?dol <- (object (is-a Dolor) (afecta [Esquena]))
    =>
    (send ?user put-pateix ?dol)
)

(defrule user_input::input_user_sol_dol_pit
    (declare (salience 8))
    (input-esp-dol 5)
    ?user <- (object (is-a Persona))
    ?dol <- (object (is-a Dolor) (afecta [Pit]))
    =>
    (send ?user put-pateix ?dol)
)

(defrule user_input::input_user_sol_dol_tors
    (declare (salience 8))
    (input-esp-dol 6)
    ?user <- (object (is-a Persona))
    ?dol <- (object (is-a Dolor) (afecta [Tors]))
    =>
    (send ?user put-pateix ?dol)
)

(defrule user_input::input_user_no_dol_inv
    (declare (salience 8))
    (input-sel-dol 2)
    ?user <- (object (is-a Persona))
    ?sen <- (object (is-a Sense))
    =>
    (send ?user put-pateix ?sen)
)

;(defrule user_input::testing
;    (declare (salience 11))
;    ?user <- (object (is-a Persona) (fa ?act))
;    (input-objectiu 1)
;    =>
;    (printout t crlf "VALOR DE FREQUENCIA INTRODUIT (TESTING): " (send ?act get-frequencia) crlf)
;)