(definstances instances

    ([Dilluns] of Dia
          (nom  "Dilluns")
    )
    ([Dimarts] of Dia
          (nom  "Dimarts")
    )
    ([Dimecres] of Dia
          (nom  "Dimecres")
    )
    ([Dijous] of Dia
          (nom  "Dijous")
    )
    ([Divendres] of Dia
          (nom  "Divendres")
    )
    ([Dissabte] of Dia
          (nom  "Dissabte")
    )
    ([Diumenge] of Dia
          (nom  "Diumenge")
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

     ([curl_manc_biceps] of Repetitiu
          (max_repeticions 25)
          (min_repeticions 5)
          (involucra  +[Braç] [Cama])
          (satisfa [Musculacio])
          (dificultat  "Facil")
          (edat_max_recomanada  75)
          (es_cardio  "false")
          (nom  "curl mancuerna biceps ")
     )
     
     ([jalon_al_pecho] of Repetitiu
          (max_repeticions 12)
          (min_repeticions 6)
          (involucra [Esquena])
          (satisfa [Musculacio])
          (dificultat  "Facil")
          (edat_max_recomanada  75)
          (es_cardio  "false")
          (nom  "jalon al pecho")
     )
     
     ([remo_gironda] of Repetitiu
          (max_repeticions 16)
          (min_repeticions 8)
          (involucra [Esquena])
          (satisfa [Musculacio])
          (dificultat  "Facil")
          (edat_max_recomanada  75)
          (es_cardio  "false")
          (nom  "remo gironda")
     )
     
     ([remo_barra_T] of Repetitiu
          (max_repeticions 14)
          (min_repeticions 6)
          (involucra [Esquena])
          (satisfa [Musculacio])
          (dificultat  "Dificil")
          (edat_max_recomanada  70)
          (es_cardio  "false")
          (nom  "remo barra T")
     )
     
     ([hiperextensiones] of Repetitiu
          (max_repeticions 18)
          (min_repeticions 10)
          (involucra [Esquena])
          (satisfa [Musculacio])
          (dificultat  "Mitja")
          (edat_max_recomanada  65)
          (es_cardio  "false")
          (nom  "hiperextensiones")
     )
     
     ([extension_cuadriceps] of Repetitiu
          (max_repeticions 20)
          (min_repeticions 10)
          (involucra [Cama])
          (satisfa [Musculacio])
          (dificultat  "Facil")
          (edat_max_recomanada  80)
          (es_cardio  "false")
          (nom  "extension cuadriceps")
     )
     
     ([prensa_atletica] of Repetitiu
          (max_repeticions 20)
          (min_repeticions 10)
          (involucra [Cama])
          (satisfa [Musculacio])
          (dificultat  "Mitja")
          (edat_max_recomanada  70)
          (es_cardio  "false")
          (nom  "prensa atletica")
     )
     
     ([sentadilla] of Repetitiu
          (max_repeticions 14)
          (min_repeticions 6)
          (involucra [Cama])
          (satisfa [Musculacio])
          (dificultat  "Facil")
          (edat_max_recomanada  70)
          (es_cardio  "false")
          (nom  "sentadilla")
     )
     
     ([hack] of Repetitiu
          (max_repeticions 12)
          (min_repeticions 4)
          (involucra [Cama])
          (satisfa [Musculacio])
          (dificultat  "Dificil")
          (edat_max_recomanada  65)
          (es_cardio  "false")
          (nom  "hack")
     )
     
     ([abduptores] of Repetitiu
          (max_repeticions 16)
          (min_repeticions 8)
          (involucra [Cama])
          (satisfa [Musculacio])
          (dificultat  "Facil")
          (edat_max_recomanada  80)
          (es_cardio  "false")
          (nom  "abduptores")
     )
     
     ([elevaciones_de_talones] of Repetitiu
          (max_repeticions 22)
          (min_repeticions 8)
          (involucra [Cama])
          (satisfa [Musculacio])
          (dificultat  "Facil")
          (edat_max_recomanada  85)
          (es_cardio  "false")
          (nom  "elevaciones de talones")
     )
     
     ([press_inclinado] of Repetitiu
          (max_repeticions 16)
          (min_repeticions 6)
          (involucra [Pit])
          (satisfa [Musculacio])
          (dificultat  "Mitja")
          (edat_max_recomanada  70)
          (es_cardio  "false")
          (nom  "presss inclinado")
     )
     
     ([cruces_polea] of Repetitiu
          (max_repeticions 20)
          (min_repeticions 10)
          (involucra [Pit])
          (satisfa [Musculacio])
          (dificultat  "Facil")
          (edat_max_recomanada  75)
          (es_cardio  "false")
          (nom  "cruces polea")
     )
     
     ([pec_fly] of Repetitiu
          (max_repeticions 16)
          (min_repeticions 6)
          (involucra [Pit])
          (satisfa [Musculacio])
          (dificultat  "Facil")
          (edat_max_recomanada  70)
          (es_cardio  "false")
          (nom  "pec fly")
     )
     
     ([press_de_banca] of Repetitiu
          (max_repeticions 12)
          (min_repeticions 4)
          (involucra [Pit])
          (satisfa [Musculacio])
          (dificultat  "Dificil")
          (edat_max_recomanada  65)
          (es_cardio  "false")
          (nom  "press banca")
     )
     
     ([curl_femoral_sentado] of Repetitiu
          (max_repeticions 18)
          (min_repeticions 6)
          (involucra [Cama])
          (satisfa [Musculacio])
          (dificultat  "Facil")
          (edat_max_recomanada  75)
          (es_cardio  "false")
          (nom  "curl femoral sentado")
     )
     
     ([press_militar_multipower] of Repetitiu
          (max_repeticions 14)
          (min_repeticions 4)
          (involucra [Espatlla])
          (satisfa [Musculacio])
          (dificultat  "Mitja")
          (edat_max_recomanada  75)
          (es_cardio  "false")
          (nom  "press militar multipower")
     )
     
     ([elevaciones_frontales_manc] of Repetitiu
          (max_repeticions 16)
          (min_repeticions 6)
          (involucra [Espatlla])
          (satisfa [Musculacio])
          (dificultat  "Facil")
          (edat_max_recomanada  75)
          (es_cardio  "false")
          (nom  "elevaciones frontales manc")
     )
     
     ([elevaciones_laterales] of Repetitiu
          (max_repeticions 22)
          (min_repeticions 8)
          (involucra [Espatlla])
          (satisfa [Musculacio])
          (dificultat  "Facil")
          (edat_max_recomanada  80)
          (es_cardio  "false")
          (nom  "elevaciones laterales")
     )
     
     ([pajaro_manucernas] of Repetitiu
          (max_repeticions 16)
          (min_repeticions 6)
          (involucra [Espatlla])
          (satisfa [Musculacio])
          (dificultat  "Dificil")
          (edat_max_recomanada  75)
          (es_cardio  "false")
          (nom  "pajaro mancuernas")
     )
     
     ([encogimientos_barra] of Repetitiu
          (max_repeticions 14)
          (min_repeticions 6)
          (involucra [Esquena])
          (satisfa [Musculacio])
          (dificultat  "Facil")
          (edat_max_recomanada  75)
          (es_cardio  "false")
          (nom  "encogimientos barra")
     )
     
     ([curl_abdominal] of Repetitiu
          (max_repeticions 18)
          (min_repeticions 8)
          (involucra [Tors])
          (satisfa [Musculacio])
          (dificultat  "Facil")
          (edat_max_recomanada  80)
          (es_cardio  "false")
          (nom  "curl abdominal")
     )
     
     ([elevacion_de_piernas] of Repetitiu
          (max_repeticions 16)
          (min_repeticions 6)
          (involucra [Tors])
          (satisfa [Musculacio])
          (dificultat  "Dificil")
          (edat_max_recomanada  75)
          (es_cardio  "false")
          (nom  "elevacion de piernas")
     )
     
     ([plancha_abdominal] of Duratiu 
          (max_duracio  3)
          (min_duracio  1)
          (involucra [Tors])
          (satisfa [Musculacio])
          (dificultat  "Mitja")
          (edat_max_recomanada  75)
          (es_cardio  "false")
          (nom  "plancha abdominal")
     )
     
     ([press_frances] of Repetitiu
          (max_repeticions 14)
          (min_repeticions 4)
          (involucra [Braç])
          (satisfa [Musculacio])
          (dificultat  "Dificil")
          (edat_max_recomanada  70)
          (es_cardio  "false")
          (nom  "press frances")
     )
     
     ([fondos] of Repetitiu
          (max_repeticions 18)
          (min_repeticions 6)
          (involucra [Braç])
          (satisfa [Musculacio])
          (dificultat  "Mitja")
          (edat_max_recomanada  75)
          (es_cardio  "false")
          (nom  "fondos")
     )
     
     ([extensiones_cuerda] of Repetitiu
          (max_repeticions 18)
          (min_repeticions 8)
          (involucra [Braç])
          (satisfa [Musculacio])
          (dificultat  "Facil")
          (edat_max_recomanada  80)
          (es_cardio  "false")
          (nom  "extensiones cuerda")
     )
     
     ([extension_katana] of Repetitiu
          (max_repeticions 18)
          (min_repeticions 6)
          (involucra [Braç])
          (satisfa [Musculacio])
          (dificultat  "Mitja")
          (edat_max_recomanada  80)
          (es_cardio  "false")
          (nom  "extension katana")
     )
     
     ([curl_barra_ez] of Repetitiu
          (max_repeticions 16)
          (min_repeticions 6)
          (involucra [Braç])
          (satisfa [Musculacio])
          (dificultat  "Facil")
          (edat_max_recomanada  80)
          (es_cardio  "false")
          (nom  "curl barra ez")
     )
     
     ([curl_martillo] of Repetitiu
          (max_repeticions 16)
          (min_repeticions 6)
          (involucra [Braç])
          (satisfa [Musculacio])
          (dificultat  "Facil")
          (edat_max_recomanada  80)
          (es_cardio  "false")
          (nom  "curl martillo")
     )
     
     ([peso_muerto] of Repetitiu
          (max_repeticions 12)
          (min_repeticions 4)
          (involucra  +[Esquena] [Tors])
          (satisfa [Musculacio])
          (dificultat  "Dificil")
          (edat_max_recomanada  70)
          (es_cardio  "false")
          (nom  "peso muerto")
     )
     
     ([cinta_de_correr] of Duratiu 
          (max_duracio  30)
          (min_duracio  5)
          (involucra [Cama])
          (satisfa  +[Baixar_de_pes] [Posar_se_en_forma])
          (dificultat  "Facil")
          (edat_max_recomanada  75)
          (es_cardio  "true")
          (nom  "cinta de correr")
     )
     
     ([saltar_a_la_comba] of Duratiu 
          (max_duracio  20)
          (min_duracio  2)
          (involucra [Cama])
          (dificultat  "Facil")
          (edat_max_recomanada  73)
          (es_cardio  "true")
          (nom  "saltar a la comba")
     )
     
     ([aqua_gym] of Duratiu 
          (max_duracio  60)
          (min_duracio  30)
          (involucra  +[Braç] [Cama] [Tors])
          (satisfa [Rehabilitacio])
          (dificultat  "Facil")
          (edat_max_recomanada  90)
          (es_cardio  "true")
          (nom  "aqua gym")
     )
     
     ([idas_y_vueltas_piscina] of Repetitiu
          (max_repeticions 20)
          (min_repeticions 3)
          (involucra  +[Braç] [Cama] [Esquena])
          (satisfa  +[Baixar_de_pes] [Rehabilitacio])
          (dificultat  "Mitja")
          (edat_max_recomanada  80)
          (es_cardio  "true")
          (nom  "idas y vueltas piscina")
     )
     
     ([steps] of Repetitiu
          (max_repeticions nan)
          (min_repeticions nan)
          (involucra [Cama])
          (satisfa [Baixar_de_pes])
          (dificultat  "Facil")
          (edat_max_recomanada  75)
          (es_cardio  "true")
          (nom  "steps")
     )
     
     ([burpees] of Repetitiu
          (max_repeticions 12)
          (min_repeticions 3)
          (involucra  +[Tors] [Braç])
          (satisfa  +[Baixar_de_pes] [Musculacio] [Posar_se_en_forma])
          (dificultat  "Dificil")
          (edat_max_recomanada  65)
          (es_cardio  "true")
          (nom  "burpees")
     )
     
     ([caminar_cinta_correr] of Duratiu 
          (max_duracio  45)
          (min_duracio  10)
          (involucra [Cama])
          (satisfa [Baixar_de_pes])
          (dificultat  "Facil")
          (edat_max_recomanada  85)
          (es_cardio  "true")
          (nom  "caminar cinta correr")
     )
     
     ([bicicleta_eliptica] of Duratiu 
          (max_duracio  45)
          (min_duracio  10)
          (involucra [Cama])
          (satisfa [Baixar_de_pes])
          (dificultat  "Mitja")
          (edat_max_recomanada  85)
          (es_cardio  "true")
          (nom  "bici eliptica")
     )
     
     ([bicicleta_estatica] of Duratiu 
          (max_duracio  60)
          (min_duracio  10)
          (involucra [Cama])
          (satisfa [Baixar_de_pes])
          (dificultat  "Facil")
          (edat_max_recomanada  85)
          (es_cardio  "true")
          (nom  "bicicleta estatica")
     )
     
     ([drumfit_rower] of Duratiu 
          (satisfa [Baixar_de_pes])
          (es_cardio  "true")
          (nom  "drumfit rower")
     )
     
     ([zancadas] of Duratiu 
          (satisfa [Baixar_de_pes])
          (es_cardio  "true")
          (nom  "zancadas")
     )
     
     ([mountain_climbers] of Duratiu 
          (max_duracio  10)
          (min_duracio  3)
          (satisfa [Baixar_de_pes])
          (es_cardio  "true")
          (nom  "mountain climbers")
     )
     
     ([pasos_laterales] of Repetitiu
          (max_repeticions 20)
          (min_repeticions 15)
          (involucra [Cama])
          (satisfa [Baixar_de_pes])
          (dificultat  "Facil")
          (edat_max_recomanada  75)
          (es_cardio  "true")
          (nom  "pasos laterales")
     )
     
     ([toques_tobillos] of Repetitiu
          (max_repeticions 22)
          (min_repeticions 10)
          (involucra [Tors])
          (satisfa [Baixar_de_pes])
          (dificultat  "Facil")
          (edat_max_recomanada  80)
          (es_cardio  "true")
          (nom  "toques tobillos")
     )
     
     ([toques_hombro_en_plancha] of Repetitiu
          (max_repeticions 18)
          (min_repeticions 8)
          (involucra [Tors])
          (satisfa [Baixar_de_pes])
          (dificultat  "Dificil")
          (edat_max_recomanada  70)
          (es_cardio  "true")
          (nom  "toques hombro en plancha")
     )
     
     ([zancadas_patinador] of Repetitiu
          (max_repeticions 20)
          (min_repeticions 10)
          (involucra [Cama])
          (satisfa [Baixar_de_pes])
          (dificultat  "Mitja")
          (edat_max_recomanada  70)
          (es_cardio  "true")
          (nom  "zancadas patinador")
     )
     
     ([rollbacks] of Repetitiu
          (max_repeticions 16)
          (min_repeticions 6)
          (involucra [Tors])
          (satisfa [Baixar_de_pes])
          (dificultat  "Mitja")
          (edat_max_recomanada  70)
          (es_cardio  "true")
          (nom  "rollbacks")
     )
     
     ([lateral_toe_tabs] of Repetitiu
          (max_repeticions 26)
          (min_repeticions 12)
          (involucra [Cama])
          (satisfa [Baixar_de_pes])
          (dificultat  "Facil")
          (edat_max_recomanada  70)
          (es_cardio  "true")
          (nom  "lateral toe tabs")
     )
     
     ([sit-outs] of Duratiu 
          (max_duracio  3)
          (min_duracio  1)
          (involucra [Tors])
          (satisfa [Baixar_de_pes])
          (dificultat  "Dificil")
          (edat_max_recomanada  65)
          (es_cardio  "true")
          (nom  "sit-outs")
     )
     
     ([jumping_jacks] of Duratiu 
          (max_duracio  3)
          (min_duracio  1)
          (involucra [Braç])
          (satisfa [Baixar_de_pes])
          (dificultat  "Facil")
          (edat_max_recomanada  70)
          (es_cardio  "true")
          (nom  "jumping jacks")
     )
     
     ([toques_altos_rodilla] of Duratiu 
          (max_duracio  3)
          (min_duracio  1)
          (involucra [Cama])
          (satisfa [Baixar_de_pes])
          (dificultat  "Mitja")
          (edat_max_recomanada  70)
          (es_cardio  "true")
          (nom  "toques altos")
     )
     
     ([saltos_en_cuclillas] of Duratiu 
          (max_duracio  3)
          (min_duracio  1)
          (involucra [Cama])
          (satisfa [Baixar_de_pes])
          (dificultat  "Dificil")
          (edat_max_recomanada  70)
          (es_cardio  "true")
          (nom  "saltos en cuclillas")
     )
     
     ([jabs] of Repetitiu
          (max_repeticions 30)
          (min_repeticions 15)
          (involucra [Braç])
          (satisfa [Baixar_de_pes])
          (dificultat  "Facil")
          (edat_max_recomanada  80)
          (es_cardio  "true")
          (nom  "jabs")
     )
     
     ([plancha_lateral] of Duratiu 
          (max_duracio  2)
          (min_duracio  1)
          (involucra [Tors])
          (satisfa [Baixar_de_pes])
          (dificultat  "Dificil")
          (edat_max_recomanada  70)
          (es_cardio  "true")
          (nom  "plancha lateral")
     )
     
)
