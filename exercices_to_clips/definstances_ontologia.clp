(definstances instances
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