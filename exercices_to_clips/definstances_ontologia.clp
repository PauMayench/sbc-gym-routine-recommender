(definstances instances
    ([Invalidesa_espatlla] of Invalidesa
         (invalida  [Espatlla])
    )

    ([Invalidesa_esquena] of Invalidesa
         (invalida  [Esquena])
    )

    ([Invalidesa_pit] of Invalidesa
         (invalida  [Pit])
    )

    ([Invalidesa_tors] of Invalidesa
         (invalida  [Tors])
    )

    ([dijous] of Dia
         (nom  "dijous")
    )

    ([dilluns] of Dia
         (nom  "dilluns")
    )

    ([dimarts] of Dia
         (nom  "dimarts")
    )

    ([dimecres] of Dia
         (nom  "dimecres")
    )

    ([divendres] of Dia
         (nom  "divendres")
    )

    ([programa_exercicis] of Programa
         (dia1  [dilluns])
         (dia2  [dimarts])
         (dia3  [dimecres])
         (dia4  [dijous])
         (dia5  [divendres])
    )

    ([Activitat_Activa] of Activitat
         (es_activa  "true")
         (frequencia  0)
    )

    ([Activitat_Estatica] of Activitat
         (es_activa  "false")
         (frequencia  0)
    )

    ([Baixar_de_pes] of Objectiu
         (nom  "Baixar de pes")
    )

    ([Braç] of Grup_Muscular
    )

    ([Cama] of Grup_Muscular
    )

    ([Curl_mancuerna_biceps] of Repetitiu
         (max_repeticions  25)
         (min_repeticions  5)
         (involucra  [Braç])
         (satisfa  [Musculacio])
         (dificultat  "Facil")
         (edat_max_recomanada  75)
         (es_cardio  "false")
         (nom  "Curl mancuerna biceps")
    )

    ([Dolor_braç] of Dolor
         (afecta  [Braç])
    )

    ([Dolor_cama] of Dolor
         (afecta  [Cama])
    )

    ([Dolor_espatlla] of Dolor
         (afecta  [Espatlla])
    )

    ([Dolor_esquena] of Dolor
         (afecta  [Esquena])
    )

    ([Dolor_pit] of Dolor
         (afecta  [Pit])
    )

    ([Dolor_tors] of Dolor
         (afecta  [Tors])
    )

    ([Espatlla] of Grup_Muscular
    )

    ([Esquena] of Grup_Muscular
    )

    ([Flexibilitat] of Objectiu
         (nom  "Flexibilitat")
    )

    ([Invalidesa_braç] of Invalidesa
         (invalida  [Braç])
    )

    ([Invalidesa_cama] of Invalidesa
         (invalida  [Cama])
    )

    ([Manteniment] of Objectiu
         (nom  "Manteniment")
    )

    ([Musculacio] of Objectiu
         (nom  "Musculacio")
    )

    ([Pit] of Grup_Muscular
    )

    ([Posar_se_en_forma] of Objectiu
         (nom  "Posar se en forma")
    )

    ([Preparacio_powerlifting] of Objectiu
         (nom  "Preparacio powerlifting")
    )

    ([Rehabilitacio] of Objectiu
         (nom  "Rehabilitacio")
    )

    ([Tors] of Grup_Muscular
    )

)