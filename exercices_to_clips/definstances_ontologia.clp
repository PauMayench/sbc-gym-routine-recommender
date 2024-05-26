
(definstances instances
    ([Coll] of Grup_Muscular
    )

    ([Yoga] of Objectiu
         (nom  "Yoga")
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

    ([Rehabilitacio] of Objectiu
         (nom  "Rehabilitacio")
    )

    ([Tors] of Grup_Muscular
    )

    ([dijous] of Dia
         (nom  "dijous")
         (temps_dia  0)
    )

    ([dilluns] of Dia
         (nom  "dilluns")
         (temps_dia  0)
    )

    ([dimarts] of Dia
         (nom  "dimarts")
         (temps_dia  0)
    )

    ([dimecres] of Dia
         (nom  "dimecres")
         (temps_dia  0)
    )

    ([divendres] of Dia
         (nom  "divendres")
         (temps_dia  0)
    )

    ([programa_exercicis] of Programa
         (dia1  [dilluns])
         (dia2  [dimarts])
         (dia3  [dimecres])
         (dia4  [dijous])
         (dia5  [divendres])
    )

    ([sense_id] of Sense
    )

)