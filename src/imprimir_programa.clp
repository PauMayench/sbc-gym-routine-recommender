
(defmodule imprimir_programa
    (import MAIN ?ALL)
    (export ?ALL)
)

(defrule imprimir_programa::imprimir_program
    (declare (salience 20))
    =>
    (printout t crlf crlf "==============================================" crlf)
    (printout t      crlf "            PROGRAMA D'ENTRENAMENT            " crlf)
)


(defrule imprimir_programa::mostrar_exercicis_per_dia_programa
    (declare (salience 19))
    
    ?prog <- (object (is-a Programa) (dia1 ?Dia1) (dia2 ?Dia2) (dia3 ?Dia3) (dia4 ?Dia4) (dia5 ?Dia5))
    => 
    (bind ?dies-list (create$ ?Dia1 ?Dia2 ?Dia3 ?Dia4 ?Dia5))
    (foreach ?dia ?dies-list
        (bind ?nom_dia (send ?dia get-nom ))
        (bind ?tots_exercicis (send ?dia get-conte_exercicis ))
        (printout t crlf crlf ?nom_dia":" crlf)
        (foreach ?exercici ?tots_exercicis
                (printout t "  - " (send ?exercici get-nom))
        
                ; mirar si es duratiu o repetitiu i printar min duracio  o  min repeticions
        
                (if (eq (class ?exercici) Duratiu)
                    then
                    (printout t "     (duracio: " (send ?exercici get-duracio) " minuts  min: " (send ?exercici get-min_duracio) " max: " (send ?exercici get-max_duracio) ")"  crlf)  
        
                    else
                    (printout t "     (repeticions: " (send ?exercici get-repeticions) " reps  min: " (send ?exercici get-min_repeticions)  " max: " (send ?exercici get-max_repeticions)  ")" crlf)
                )
            )

    )

)