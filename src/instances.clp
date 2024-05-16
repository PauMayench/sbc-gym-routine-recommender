
(definstances instances
    ([Baixar_de_pes] of Objectiu
         (nom  "Baixar de pes")
    )

    ([Braç] of Grup_Muscular
    )

    ([Cama] of Grup_Muscular
    )

    ([Correr_a_la_cinta] of Duratiu
         (duracio_maxima  30)
         (duracio_minima  10)
         (involucra  [Cama])
         (satisfa  +[Baixar_de_pes] [Manteniment])
         (dificultat  "Facil")
         (edat_max_recomanada  60)
         (es_cardio  "true")
         (nom  "Correr a la cinta")
    )

    ([Curl_mancuerna_biceps] of Repetitiu
         (max_repeticions  25)
         (min_repeticions  5)
         (involucra  [Braç])
         (satisfa  [Musculacio])
         (calories_temps  8)
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

    ([Musculacio] of Objectiu
         (nom  "Musculacio")
    )

    ([Pit] of Grup_Muscular
    )

    ([Preparacio_powerlifting] of Objectiu
         (nom  "Preparacio powerlifting")
    )

    ([Rehabilitacio] of Objectiu
         (nom  "Rehabilitacio")
    )

    ([Tors] of Grup_Muscular
    )

    ([Manteniment] of Objectiu
         (nom  "Manteniment")
    )

    ([Posar_se_en_forma] of Objectiu
         (nom  "Posar se en forma")
    )

     ([inst1 of Repetitiu
          (max_repeticions 50)
          (min_repeticions 10)
          (dificultat "Facil")
          (edat_max_recomanada 3)
          (es_cardio  "true")
          (nom ex1)
     )
     
     ([inst2 of Duratiu 
          (max_duracio 5)
          (min_duracio 2)
          (dificultat "Mitja")
          (edat_max_recomanada 4)
          (es_cardio  "false")
          (nom ex2)
     )
     
     ([inst3 of Repetitiu
          (max_repeticions 1000)
          (min_repeticions 500)
          (dificultat "Dificil")
          (edat_max_recomanada 5)
          (es_cardio  "false")
          (nom ex3)
     )
     
     ([inst4 of Duratiu 
          (max_duracio 50)
          (min_duracio 30)
          (dificultat "Mitja")
          (edat_max_recomanada 6)
          (es_cardio  "true")
          (nom ex4)
     )
     
     ([curlo_manc_biceps of Repetitiu
          (max_repeticions 25)
          (min_repeticions 5)
          (involucra [Braç] [Cama])
          (satisfa  [Musculacio])
          (dificultat "Facil")
          (edat_max_recomanada 75)
          (es_cardio  "false")
          (nom curl mancuerna biceps )
     )
     
)
