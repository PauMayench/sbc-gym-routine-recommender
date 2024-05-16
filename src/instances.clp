
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

     ([curl_manc_biceps of Repetitiu
          (max_repeticions 25)
          (min_repeticions 5)
          (involucra  +[Braç] [Cama])
          (satisfa [Musculacio])
          (dificultat  "Facil")
          (edat_max_recomanada  75)
          (es_cardio  "false")
          (nom  "curl mancuerna biceps ")
     )
     
     ([jalon_al_pecho of Repetitiu
          (max_repeticions 12)
          (min_repeticions 6)
          (involucra [Esquena])
          (satisfa [Musculacio])
          (dificultat  "Facil")
          (edat_max_recomanada  75)
          (es_cardio  "false")
          (nom  "jalon al pecho")
     )
     
     ([remo_gironda of Repetitiu
          (max_repeticions 16)
          (min_repeticions 8)
          (involucra [Esquena])
          (satisfa  +[Musculacio] [Posar_se_en_forma])
          (dificultat  "Facil")
          (edat_max_recomanada  75)
          (es_cardio  "false")
          (nom  "remo gironda")
     )
     
     ([remo_barra_T of Repetitiu
          (max_repeticions 14)
          (min_repeticions 6)
          (involucra [Esquena])
          (satisfa [Musculacio])
          (dificultat  "Dificil")
          (edat_max_recomanada  70)
          (es_cardio  "false")
          (nom  "remo barra T")
     )
     
     ([hiperextensiones of Repetitiu
          (max_repeticions 18)
          (min_repeticions 10)
          (involucra [Esquena])
          (satisfa [Musculacio])
          (dificultat  "Mitja")
          (edat_max_recomanada  65)
          (es_cardio  "false")
          (nom  "hipersextensiones")
     )
     
     ([extension_cuadriceps of Repetitiu
          (max_repeticions 20)
          (min_repeticions 10)
          (involucra [Cama])
          (satisfa  +[Musculacio] [Posar_se_en_forma] [Preparacio_powerlifting])
          (dificultat  "Facil")
          (edat_max_recomanada  80)
          (es_cardio  "false")
          (nom  "extension cuadriceps")
     )
     
     ([cinta_de_correr of Duratiu 
          (max_duracio  30)
          (min_duracio  5)
          (involucra [Cama])
          (satisfa  +[Baixar_de_pes] [Posar_se_en_forma])
          (dificultat  "Facil")
          (edat_max_recomanada  75)
          (es_cardio  "true")
          (nom  "cinta de correr")
     )
     
     ([saltar_a_la_comba of Duratiu 
          (max_duracio  20)
          (min_duracio  2)
          (involucra [Cama])
          (dificultat  "Facil")
          (edat_max_recomanada  73)
          (es_cardio  "true")
          (nom  "saltar a la comba")
     )
     
     ([aqua_gym of Duratiu 
          (max_duracio  60)
          (min_duracio  30)
          (involucra  +[Braç] [Cama] [Tors])
          (satisfa [Rehabilitacio])
          (dificultat  "Facil")
          (edat_max_recomanada  90)
          (es_cardio  "true")
          (nom  "aqua gym")
     )
     
     ([idas_y_vueltas_piscina of Repetitiu
          (max_repeticions 20)
          (min_repeticions 3)
          (involucra  +[Braç] [Cama] [Esquena])
          (satisfa  +[Baixar_de_pes] [Rehabilitacio])
          (dificultat  "Facil")
          (edat_max_recomanada  80)
          (es_cardio  "true")
          (nom  "idas y vueltas piscina")
     )
     
)
