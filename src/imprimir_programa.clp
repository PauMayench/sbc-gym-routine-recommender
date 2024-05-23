
(defmodule imprimir_programa
    (import MAIN ?ALL)
    (export ?ALL)
)

(defrule imprimir_programa::imprimir_program
    (declare (salience -1))
    =>
    (printout t crlf crlf "==============================================" crlf)
    (printout t      crlf "            PROGRAMA D'ENTRENAMENT            " crlf)
)

;; mostrar per pantalla el dia de la setmana, amb els seus exercicis i les repeticions o duracio minima
(defrule imprimir_programa::mostrar_exercicis_per_dia
    (declare (salience -2))
    ?dia <- (object (is-a Dia) (nom ?nom_dia) (conte_exercicis $?tots_exercicis))
    => 
    (printout t crlf crlf ?nom_dia":" crlf)

    (foreach ?exercici ?tots_exercicis
        (printout t "  - " (send ?exercici get-nom))

        ; mirar si es duratiu o repetitiu i printar min duracio  o  min repeticions

        (if (eq (class ?exercici) Duratiu)
            then
            (printout t "     (com a minim: " (send ?exercici get-min_duracio) " minuts)." crlf)

            else
            (printout t "     (com a minim: " (send ?exercici get-min_repeticions) " repeticions)." crlf)
        )
    )
)