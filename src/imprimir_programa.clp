
(defmodule imprimir_programa
    (import MAIN ?ALL)
    (export ?ALL)
)

(defrule imprimir_programa::imprimir_program
    (declare (salience 20))
    =>
    (printout t crlf crlf "========================================================================================" crlf)
    (printout t           "||                                                                                    ||" crlf)
    (printout t           "||                                                                                    ||" crlf)
    (printout t           "||                               PROGRAMA D'ENTRENAMENT                               ||" crlf)
    (printout t           "||                                                                                    ||" crlf)
    (printout t           "||                                                                                    ||" crlf)
    (printout t           "========================================================================================" crlf)
)


; exemple: ;min: " (send ?exercici get-min_duracio) "


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
                    (printout t crlf "                duracio: " (send ?exercici get-duracio) " minuts       Musculs implicats: ")
                    
        
                    else
                    (printout t crlf"                numero repeticions: " (send ?exercici get-repeticions) "  Musculs implicats: ")
                )
                (printout t (send ?exercici get-involucra) crlf)     
            )

    )
    (printout t crlf crlf crlf crlf " > Important:" crlf crlf " Recorda a fer descansos entre exercicis per recuperar forces." crlf crlf)
    (printout t " Utilitza pesos (si l'exercici en requereix) que puguis controlar i t'exigeixin fer les repeticions recomanades." crlf crlf)
    (printout t " Alguns exercicis hem posat temps elevat perque el divideixis en 2 o 3 series, on pares i descanses un parell de minuts i despres continues." crlf crlf) 
    (printout t " I manten-te hidratat!" crlf crlf crlf)

)