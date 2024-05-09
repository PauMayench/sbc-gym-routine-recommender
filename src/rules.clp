;;; Regla para inicializar el programa
(defrule initialize "Inici del programa"
    (declare (salience 10))
    =>
    (printout t crlf)
    (printout t "❚█══█❚ ❚█══█❚ ❚█══█❚ ❚█══█❚ ❚█══█❚ ❚█══█❚ ❚█══█❚" crlf)
    (printout t crlf)
    (bind ?persona (make-instance user of Persona))


)




(defrule NOM_FUNCIO

    ?user <- (object (is-a Persona))
    =>
    (printout t PREGUNTA: ") 
    (bind ?inp (read))
    (send ?user put-ATRIBUT ?inp)

)

(defrule input_user_data

    ?user <- (object (is-a Persona))
    =>
    (printout t "Introdueixi la seva edat: ") 
    (bind ?edat (read))
    (send ?user put-edat ?edat)

)



