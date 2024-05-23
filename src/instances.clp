
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

    ([Preparacio_powerlifting] of Objectiu
         (nom  "Preparacio powerlifting")
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

     ([curl_manc_biceps] of Repetitiu
          (max_repeticions 25)
          (min_repeticions 5)
          (duracio  9)
          (involucra [Braç])
          (satisfa  [Musculacio] [Manteniment] [Posar_se_en_forma])
          (dificultat  "Facil")
          (edat_max_recomanada  75)
          (es_cardio  "false")
          (nom  "curl mancuerna biceps ")
     )
     
     ([jalon_al_pecho] of Repetitiu
          (max_repeticions 12)
          (min_repeticions 6)
          (duracio  12)
          (involucra [Esquena])
          (satisfa  [Musculacio] [Posar_se_en_forma])
          (dificultat  "Facil")
          (edat_max_recomanada  75)
          (es_cardio  "false")
          (nom  "jalon al pecho")
     )
     
     ([remo_gironda] of Repetitiu
          (max_repeticions 16)
          (min_repeticions 8)
          (duracio  10)
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
          (duracio  10)
          (involucra [Esquena])
          (satisfa  [Musculacio] [Posar_se_en_forma])
          (dificultat  "Dificil")
          (edat_max_recomanada  70)
          (es_cardio  "false")
          (nom  "remo barra T")
     )
     
     ([hiperextensiones] of Repetitiu
          (max_repeticions 18)
          (min_repeticions 10)
          (duracio  8)
          (involucra [Esquena])
          (satisfa  [Musculacio] [Manteniment])
          (dificultat  "Mitja")
          (edat_max_recomanada  65)
          (es_cardio  "false")
          (nom  "hiperextensiones")
     )
     
     ([extension_cuadriceps] of Repetitiu
          (max_repeticions 20)
          (min_repeticions 10)
          (duracio  9)
          (involucra [Cama])
          (satisfa  [Musculacio] [Manteniment])
          (dificultat  "Facil")
          (edat_max_recomanada  80)
          (es_cardio  "false")
          (nom  "extension cuadriceps")
     )
     
     ([prensa_atletica] of Repetitiu
          (max_repeticions 20)
          (min_repeticions 10)
          (duracio  12)
          (involucra [Cama])
          (satisfa  [Musculacio] [Posar_se_en_forma])
          (dificultat  "Mitja")
          (edat_max_recomanada  70)
          (es_cardio  "false")
          (nom  "prensa atletica")
     )
     
     ([sentadilla] of Repetitiu
          (max_repeticions 14)
          (min_repeticions 6)
          (duracio  10)
          (involucra [Cama])
          (satisfa [Musculacio])
          (dificultat  "Facil")
          (edat_max_recomanada  70)
          (es_cardio  "false")
          (nom  "sentadilla")
     )
     
     ([hack_squat] of Repetitiu
          (max_repeticions 12)
          (min_repeticions 4)
          (duracio  10)
          (involucra [Cama])
          (satisfa  [Musculacio] [Posar_se_en_forma])
          (dificultat  "Dificil")
          (edat_max_recomanada  65)
          (es_cardio  "false")
          (nom  "hack squat")
     )
     
     ([abductores] of Repetitiu
          (max_repeticions 16)
          (min_repeticions 8)
          (duracio  8)
          (involucra [Cama])
          (satisfa [Musculacio])
          (dificultat  "Facil")
          (edat_max_recomanada  80)
          (es_cardio  "false")
          (nom  "abductores")
     )
     
     ([elevaciones_de_talones] of Repetitiu
          (max_repeticions 22)
          (min_repeticions 8)
          (duracio  6)
          (involucra [Cama])
          (satisfa  [Musculacio] [Manteniment])
          (dificultat  "Facil")
          (edat_max_recomanada  85)
          (es_cardio  "false")
          (nom  "elevaciones de talones")
     )
     
     ([press_inclinado] of Repetitiu
          (max_repeticions 16)
          (min_repeticions 6)
          (duracio  9)
          (involucra [Pit])
          (satisfa  [Musculacio] [Posar_se_en_forma])
          (dificultat  "Mitja")
          (edat_max_recomanada  70)
          (es_cardio  "false")
          (nom  "press inclinado")
     )
     
     ([cruces_polea] of Repetitiu
          (max_repeticions 20)
          (min_repeticions 10)
          (duracio  10)
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
          (duracio  8)
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
          (duracio  13)
          (involucra [Pit])
          (satisfa  [Musculacio] [Posar_se_en_forma])
          (dificultat  "Dificil")
          (edat_max_recomanada  65)
          (es_cardio  "false")
          (nom  "press banca")
     )
     
     ([curl_femoral_sentado] of Repetitiu
          (max_repeticions 18)
          (min_repeticions 6)
          (duracio  10)
          (involucra [Cama])
          (satisfa  [Musculacio] [Posar_se_en_forma])
          (dificultat  "Facil")
          (edat_max_recomanada  75)
          (es_cardio  "false")
          (nom  "curl femoral sentado")
     )
     
     ([press_militar_multipower] of Repetitiu
          (max_repeticions 14)
          (min_repeticions 4)
          (duracio  10)
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
          (duracio  8)
          (involucra [Espatlla])
          (satisfa  [Musculacio] [Posar_se_en_forma])
          (dificultat  "Facil")
          (edat_max_recomanada  75)
          (es_cardio  "false")
          (nom  "elevaciones frontales manc")
     )
     
     ([elevaciones_laterales] of Repetitiu
          (max_repeticions 22)
          (min_repeticions 8)
          (duracio  8)
          (involucra [Espatlla])
          (satisfa  [Musculacio] [Posar_se_en_forma])
          (dificultat  "Facil")
          (edat_max_recomanada  80)
          (es_cardio  "false")
          (nom  "elevaciones laterales")
     )
     
     ([pajaro_manucerna] of Repetitiu
          (max_repeticions 16)
          (min_repeticions 6)
          (duracio  5)
          (involucra [Espatlla])
          (satisfa [Musculacio])
          (dificultat  "Dificil")
          (edat_max_recomanada  75)
          (es_cardio  "false")
          (nom  "pajaro mancuerna")
     )
     
     ([encogimientos_barra] of Repetitiu
          (max_repeticions 14)
          (min_repeticions 6)
          (duracio  8)
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
          (duracio  8)
          (involucra [Tors])
          (satisfa  [Musculacio] [Manteniment] [Posar_se_en_forma])
          (dificultat  "Facil")
          (edat_max_recomanada  80)
          (es_cardio  "false")
          (nom  "curl abdominal")
     )
     
     ([elevacion_de_piernas] of Repetitiu
          (max_repeticions 16)
          (min_repeticions 6)
          (duracio  7)
          (involucra [Tors])
          (satisfa  [Musculacio] [Posar_se_en_forma])
          (dificultat  "Dificil")
          (edat_max_recomanada  75)
          (es_cardio  "false")
          (nom  "elevacion de piernas")
     )
     
     ([plancha_abdominal] of Duratiu 
          (max_duracio  8)
          (min_duracio  4)
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
          (duracio  9)
          (involucra [Braç])
          (satisfa  [Musculacio] [Posar_se_en_forma])
          (dificultat  "Dificil")
          (edat_max_recomanada  70)
          (es_cardio  "false")
          (nom  "press frances")
     )
     
     ([fondos] of Repetitiu
          (max_repeticions 18)
          (min_repeticions 6)
          (duracio  10)
          (involucra [Braç])
          (satisfa  [Musculacio] [Posar_se_en_forma])
          (dificultat  "Mitja")
          (edat_max_recomanada  75)
          (es_cardio  "false")
          (nom  "fondos")
     )
     
     ([extensiones_cuerda] of Repetitiu
          (max_repeticions 18)
          (min_repeticions 8)
          (duracio  10)
          (involucra [Braç])
          (satisfa  [Musculacio] [Manteniment] [Posar_se_en_forma])
          (dificultat  "Facil")
          (edat_max_recomanada  80)
          (es_cardio  "false")
          (nom  "extensiones cuerda")
     )
     
     ([extension_katana] of Repetitiu
          (max_repeticions 18)
          (min_repeticions 6)
          (duracio  8)
          (involucra [Braç])
          (satisfa  [Musculacio] [Posar_se_en_forma])
          (dificultat  "Mitja")
          (edat_max_recomanada  80)
          (es_cardio  "false")
          (nom  "extension katana")
     )
     
     ([curl_barra_ez] of Repetitiu
          (max_repeticions 16)
          (min_repeticions 6)
          (duracio  9)
          (involucra [Braç])
          (satisfa  [Musculacio] [Posar_se_en_forma])
          (dificultat  "Facil")
          (edat_max_recomanada  80)
          (es_cardio  "false")
          (nom  "curl barra ez")
     )
     
     ([curl_martillo] of Repetitiu
          (max_repeticions 16)
          (min_repeticions 6)
          (duracio  8)
          (involucra [Braç])
          (satisfa  [Musculacio] [Posar_se_en_forma])
          (dificultat  "Facil")
          (edat_max_recomanada  80)
          (es_cardio  "false")
          (nom  "curl martillo")
     )
     
     ([peso_muerto] of Repetitiu
          (max_repeticions 12)
          (min_repeticions 4)
          (duracio  12)
          (involucra  [Esquena] [Tors] [Braç])
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
          (satisfa  [Baixar_de_pes] [Posar_se_en_forma] [Manteniment])
          (dificultat  "Facil")
          (edat_max_recomanada  75)
          (es_cardio  "true")
          (nom  "cinta de correr")
     )
     
     ([saltar_a_la_comba] of Duratiu 
          (max_duracio  20)
          (min_duracio  2)
          (involucra [Cama])
          (satisfa  [Baixar_de_pes] [Manteniment] [Posar_se_en_forma])
          (dificultat  "Facil")
          (edat_max_recomanada  73)
          (es_cardio  "true")
          (nom  "saltar a la comba")
     )
     
     ([aqua_gym] of Duratiu 
          (max_duracio  60)
          (min_duracio  30)
          (involucra  [Braç] [Cama] [Tors])
          (satisfa  [Baixar_de_pes] [Manteniment])
          (dificultat  "Facil")
          (edat_max_recomanada  90)
          (es_cardio  "true")
          (nom  "aqua gym")
     )
     
     ([idas_y_vueltas_piscina] of Repetitiu
          (max_repeticions 20)
          (min_repeticions 3)
          (duracio  20)
          (involucra  [Braç] [Cama] [Esquena])
          (satisfa  [Baixar_de_pes] [Manteniment])
          (dificultat  "Mitja")
          (edat_max_recomanada  80)
          (es_cardio  "true")
          (nom  "idas y vueltas piscina")
     )
     
     ([steps] of Repetitiu
          (max_repeticions 20)
          (min_repeticions 5)
          (duracio  6)
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
          (duracio  10)
          (involucra  [Tors] [Braç])
          (satisfa  [Baixar_de_pes] [Musculacio] [Posar_se_en_forma])
          (dificultat  "Dificil")
          (edat_max_recomanada  65)
          (es_cardio  "true")
          (nom  "burpees")
     )
     
     ([caminar_cinta_correr] of Duratiu 
          (max_duracio  45)
          (min_duracio  10)
          (involucra [Cama])
          (satisfa  [Baixar_de_pes] [Manteniment])
          (dificultat  "Facil")
          (edat_max_recomanada  85)
          (es_cardio  "true")
          (nom  "caminar cinta correr")
     )
     
     ([bicicleta_eliptica] of Duratiu 
          (max_duracio  45)
          (min_duracio  10)
          (involucra [Cama])
          (satisfa  [Baixar_de_pes] [Manteniment] [Posar_se_en_forma])
          (dificultat  "Mitja")
          (edat_max_recomanada  85)
          (es_cardio  "true")
          (nom  "bici eliptica")
     )
     
     ([bicicleta_estatica] of Duratiu 
          (max_duracio  60)
          (min_duracio  10)
          (involucra [Cama])
          (satisfa  [Baixar_de_pes] [Manteniment] [Posar_se_en_forma])
          (dificultat  "Facil")
          (edat_max_recomanada  85)
          (es_cardio  "true")
          (nom  "bicicleta estatica")
     )
     
     ([drumfit_rower] of Duratiu 
          (max_duracio  8)
          (min_duracio  2)
          (involucra  [Esquena] [Braç] [Espatlla])
          (satisfa  [Baixar_de_pes] [Manteniment])
          (dificultat  "Mitja")
          (edat_max_recomanada  80)
          (es_cardio  "true")
          (nom  "drumfit rower")
     )
     
     ([zancadas] of Duratiu 
          (max_duracio  3)
          (min_duracio  1)
          (involucra [Cama])
          (satisfa [Baixar_de_pes])
          (dificultat  "Mitja")
          (edat_max_recomanada  75)
          (es_cardio  "true")
          (nom  "zancadas")
     )
     
     ([mountain_climbers] of Duratiu 
          (max_duracio  3)
          (min_duracio  1)
          (involucra [Tors])
          (satisfa [Baixar_de_pes])
          (dificultat  "Dificil")
          (edat_max_recomanada  65)
          (es_cardio  "true")
          (nom  "mountain climbers")
     )
     
     ([pasos_laterales] of Repetitiu
          (max_repeticions 20)
          (min_repeticions 15)
          (duracio  6)
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
          (duracio  5)
          (involucra [Tors])
          (satisfa  [Baixar_de_pes] [Manteniment])
          (dificultat  "Facil")
          (edat_max_recomanada  80)
          (es_cardio  "true")
          (nom  "toques tobillos")
     )
     
     ([toques_hombro_en_plancha] of Repetitiu
          (max_repeticions 18)
          (min_repeticions 8)
          (duracio  6)
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
          (duracio  6)
          (involucra [Cama])
          (satisfa  [Baixar_de_pes] [Posar_se_en_forma])
          (dificultat  "Mitja")
          (edat_max_recomanada  70)
          (es_cardio  "true")
          (nom  "zancadas patinador")
     )
     
     ([rollbacks] of Repetitiu
          (max_repeticions 16)
          (min_repeticions 6)
          (duracio  6)
          (involucra [Tors])
          (satisfa [Baixar_de_pes])
          (dificultat  "Mitja")
          (edat_max_recomanada  70)
          (es_cardio  "true")
          (nom  "rollbacks")
     )
     
     ([lateral_toe_taps] of Repetitiu
          (max_repeticions 26)
          (min_repeticions 12)
          (duracio  5)
          (involucra [Cama])
          (satisfa  [Baixar_de_pes] [Posar_se_en_forma])
          (dificultat  "Facil")
          (edat_max_recomanada  70)
          (es_cardio  "true")
          (nom  "lateral toe taps")
     )
     
     ([sit-outs] of Duratiu 
          (max_duracio  8)
          (min_duracio  4)
          (involucra [Tors])
          (satisfa [Baixar_de_pes])
          (dificultat  "Dificil")
          (edat_max_recomanada  65)
          (es_cardio  "true")
          (nom  "sit-outs")
     )
     
     ([jumping_jacks] of Duratiu 
          (max_duracio  8)
          (min_duracio  4)
          (involucra  [Braç] [Cama])
          (satisfa  [Baixar_de_pes] [Manteniment])
          (dificultat  "Facil")
          (edat_max_recomanada  70)
          (es_cardio  "true")
          (nom  "jumping jacks")
     )
     
     ([toques_altos_rodilla] of Duratiu 
          (max_duracio  8)
          (min_duracio  4)
          (involucra [Cama])
          (satisfa [Baixar_de_pes])
          (dificultat  "Mitja")
          (edat_max_recomanada  70)
          (es_cardio  "true")
          (nom  "toques altos")
     )
     
     ([saltos_en_cuclillas] of Duratiu 
          (max_duracio  8)
          (min_duracio  4)
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
          (duracio  6)
          (involucra [Braç])
          (satisfa [Baixar_de_pes])
          (dificultat  "Facil")
          (edat_max_recomanada  80)
          (es_cardio  "true")
          (nom  "jabs")
     )
     
     ([plancha_lateral] of Duratiu 
          (max_duracio  4)
          (min_duracio  3)
          (involucra [Tors])
          (satisfa [Baixar_de_pes])
          (dificultat  "Dificil")
          (edat_max_recomanada  70)
          (es_cardio  "true")
          (nom  "plancha lateral")
     )
     
     ([ondas_con_cuerdas] of Duratiu 
          (max_duracio  4)
          (min_duracio  3)
          (involucra [Braç])
          (satisfa  [Baixar_de_pes] [Manteniment])
          (dificultat  "Facil")
          (edat_max_recomanada  80)
          (es_cardio  "true")
          (nom  "ondas con cuerdas")
     )
     
     ([abdominales_posicion_cangrejo] of Duratiu 
          (max_duracio  3)
          (min_duracio  2)
          (involucra [Tors])
          (satisfa [Baixar_de_pes])
          (dificultat  "Mitja")
          (edat_max_recomanada  70)
          (es_cardio  "true")
          (nom  "abdominales posicion cangrejo")
     )
     
     ([sprints_cinta_correr] of Duratiu 
          (max_duracio  6)
          (min_duracio  3)
          (involucra [Cama])
          (satisfa  [Baixar_de_pes] [Posar_se_en_forma])
          (dificultat  "Mitja")
          (edat_max_recomanada  75)
          (es_cardio  "true")
          (nom  "sprints cinta correr")
     )
     
     ([saltos_en_la_caja] of Repetitiu
          (max_repeticions 23)
          (min_repeticions 10)
          (duracio  6)
          (involucra [Cama])
          (satisfa  [Baixar_de_pes] [Manteniment])
          (dificultat  "Facil")
          (edat_max_recomanada  75)
          (es_cardio  "true")
          (nom  "saltos en la caja")
     )
     
     ([caminata_del_oso] of Duratiu 
          (max_duracio  6)
          (min_duracio  3)
          (involucra  [Braç] [Tors])
          (satisfa [Baixar_de_pes])
          (dificultat  "Dificil")
          (edat_max_recomanada  75)
          (es_cardio  "true")
          (nom  "caminata del oso")
     )
     
     ([subida_de_escaleras] of Duratiu 
          (max_duracio  7)
          (min_duracio  5)
          (involucra [Cama])
          (satisfa  [Baixar_de_pes] [Manteniment])
          (dificultat  "Facil")
          (edat_max_recomanada  90)
          (es_cardio  "true")
          (nom  "subida de escaleras")
     )
     
     ([patadas_de_tijera] of Duratiu 
          (max_duracio  4)
          (min_duracio  3)
          (involucra [Tors])
          (satisfa  [Baixar_de_pes] [Manteniment] [Posar_se_en_forma])
          (dificultat  "Mitja")
          (edat_max_recomanada  75)
          (es_cardio  "true")
          (nom  "patadas de tijera")
     )
     
     ([estiramiento_cuello] of Duratiu 
          (max_duracio  6)
          (min_duracio  5)
          (involucra [Tors])
          (satisfa  [Rehabilitacio] [Manteniment])
          (dificultat  "Facil")
          (edat_max_recomanada  85)
          (es_cardio  "false")
          (nom  "estiramiento cuello")
     )
     
     ([balanceo_con_kettlebell] of Duratiu 
          (max_duracio  6)
          (min_duracio  5)
          (involucra [Tors])
          (satisfa [Rehabilitacio])
          (dificultat  "Mitja")
          (edat_max_recomanada  80)
          (es_cardio  "false")
          (nom  "balanceo con kettlebell")
     )
     
     ([rotaciones_hombros] of Duratiu 
          (max_duracio  4)
          (min_duracio  3)
          (involucra [Espatlla])
          (satisfa [Rehabilitacio])
          (dificultat  "Facil")
          (edat_max_recomanada  80)
          (es_cardio  "false")
          (nom  "rotaciones hombros ")
     )
     
     ([elevacion_hombros] of Repetitiu
          (max_repeticions 15)
          (min_repeticions 8)
          (duracio  6)
          (involucra [Espatlla])
          (satisfa [Rehabilitacio])
          (dificultat  "Facil")
          (edat_max_recomanada  75)
          (es_cardio  "false")
          (nom  "elevacion de hombros")
     )
     
     ([retraimiento_escapular] of Repetitiu
          (max_repeticions 20)
          (min_repeticions 10)
          (duracio  6)
          (involucra [Espatlla])
          (satisfa [Rehabilitacio])
          (dificultat  "Mitja")
          (edat_max_recomanada  80)
          (es_cardio  "false")
          (nom  "retraimiento escapular")
     )
     
     ([rotacion_externa_hombro] of Repetitiu
          (max_repeticions 15)
          (min_repeticions 8)
          (duracio  5)
          (involucra [Espatlla])
          (satisfa [Rehabilitacio])
          (dificultat  "Facil")
          (edat_max_recomanada  80)
          (es_cardio  "false")
          (nom  "rotacion externa de hombro")
     )
     
     ([abduccion_hombro] of Repetitiu
          (max_repeticions 20)
          (min_repeticions 10)
          (duracio  5)
          (involucra [Espatlla])
          (satisfa [Rehabilitacio])
          (dificultat  "Mitja")
          (edat_max_recomanada  80)
          (es_cardio  "false")
          (nom  "abducción de hombro")
     )
     
     ([estiramiento_cuadriceps] of Duratiu 
          (max_duracio  4)
          (min_duracio  3)
          (involucra [Cama])
          (satisfa [Rehabilitacio])
          (dificultat  "Facil")
          (edat_max_recomanada  75)
          (es_cardio  "false")
          (nom  "estiramiento de cuadriceps")
     )
     
     ([estiramiento_isquiotibiales] of Duratiu 
          (max_duracio  6)
          (min_duracio  5)
          (involucra [Cama])
          (satisfa [Rehabilitacio])
          (dificultat  "Facil")
          (edat_max_recomanada  80)
          (es_cardio  "false")
          (nom  "estiramiento de isquiotibiales")
     )
     
     ([puente_gluteo] of Repetitiu
          (max_repeticions 20)
          (min_repeticions 10)
          (duracio  6)
          (involucra [Cama])
          (satisfa  [Rehabilitacio] [Manteniment])
          (dificultat  "Facil")
          (edat_max_recomanada  75)
          (es_cardio  "false")
          (nom  "puente de gluteos")
     )
     
     ([extensiones_tobillo] of Repetitiu
          (max_repeticions 20)
          (min_repeticions 10)
          (duracio  6)
          (involucra [Cama])
          (satisfa [Rehabilitacio])
          (dificultat  "Facil")
          (edat_max_recomanada  80)
          (es_cardio  "false")
          (nom  "extensiones de tobillo")
     )
     
     ([flexion_tobillo] of Repetitiu
          (max_repeticions 20)
          (min_repeticions 10)
          (duracio  5)
          (involucra [Cama])
          (satisfa [Rehabilitacio])
          (dificultat  "Mitja")
          (edat_max_recomanada  80)
          (es_cardio  "false")
          (nom  "flexion de tobillo")
     )
     
     ([estiramiento_lateral_tronco] of Duratiu 
          (max_duracio  4)
          (min_duracio  3)
          (involucra [Tors])
          (satisfa [Rehabilitacio])
          (dificultat  "Dificil")
          (edat_max_recomanada  75)
          (es_cardio  "false")
          (nom  "estiramiento lateral del tronco")
     )
     
     ([elevacion_talon_sentado] of Repetitiu
          (max_repeticions 20)
          (min_repeticions 10)
          (duracio  6)
          (involucra [Cama])
          (satisfa [Rehabilitacio])
          (dificultat  "Mitja")
          (edat_max_recomanada  80)
          (es_cardio  "false")
          (nom  "elevación de talón sentado")
     )
     
     ([rotacion_cadera] of Duratiu 
          (max_duracio  4)
          (min_duracio  3)
          (involucra [Tors])
          (satisfa [Rehabilitacio])
          (dificultat  "Facil")
          (edat_max_recomanada  80)
          (es_cardio  "false")
          (nom  "rotacion de cadera")
     )
     
     ([estiramiento_pectoral] of Duratiu 
          (max_duracio  4)
          (min_duracio  3)
          (involucra [Pit])
          (satisfa [Rehabilitacio])
          (dificultat  "Dificil")
          (edat_max_recomanada  75)
          (es_cardio  "false")
          (nom  "estiramiento pectoral")
     )
     
     ([estiramiento_biceps] of Duratiu 
          (max_duracio  5)
          (min_duracio  4)
          (involucra [Braç])
          (satisfa [Rehabilitacio])
          (dificultat  "Facil")
          (edat_max_recomanada  80)
          (es_cardio  "false")
          (nom  "estiramiento de biceps")
     )
     
     ([estiramiento_triceps] of Duratiu 
          (max_duracio  5)
          (min_duracio  4)
          (involucra [Braç])
          (satisfa [Rehabilitacio])
          (dificultat  "Mitja")
          (edat_max_recomanada  80)
          (es_cardio  "false")
          (nom  "estiramiento de triceps")
     )
     
     ([rotaciones_lumbares] of Duratiu 
          (max_duracio  6)
          (min_duracio  4)
          (involucra [Esquena])
          (satisfa  [Rehabilitacio] [Manteniment])
          (dificultat  "Mitja")
          (edat_max_recomanada  75)
          (es_cardio  "false")
          (nom  "rotaciones lumbares")
     )
     
     ([flexiones_dorsales] of Repetitiu
          (max_repeticions 20)
          (min_repeticions 10)
          (duracio  10)
          (involucra [Esquena])
          (satisfa [Rehabilitacio])
          (dificultat  "Facil")
          (edat_max_recomanada  75)
          (es_cardio  "false")
          (nom  "flexiones dorsales")
     )
     
     ([flexiones_cervicales] of Repetitiu
          (max_repeticions 20)
          (min_repeticions 10)
          (duracio  8)
          (involucra [Tors])
          (satisfa [Rehabilitacio])
          (dificultat  "Mitja")
          (edat_max_recomanada  75)
          (es_cardio  "false")
          (nom  "flexiones cervicales")
     )
     
     ([aqua_terapia] of Duratiu 
          (max_duracio  40)
          (min_duracio  20)
          (involucra  [Braç] [Cama] [Tors])
          (satisfa  [Rehabilitacio] [Manteniment])
          (dificultat  "Facil")
          (edat_max_recomanada  80)
          (es_cardio  "true")
          (nom  "aqua terapia ")
     )
     
     ([postura_de_la_cobra] of Duratiu 
          (max_duracio  5)
          (min_duracio  3)
          (involucra [Esquena])
          (satisfa [Flexibilitat])
          (dificultat  "Dificil")
          (edat_max_recomanada  80)
          (es_cardio  "false")
          (nom  "postura de la cobra")
     )
     
     ([estiramiento_piernas] of Duratiu 
          (max_duracio  6)
          (min_duracio  4)
          (involucra [Cama])
          (satisfa [Flexibilitat])
          (dificultat  "Facil")
          (edat_max_recomanada  80)
          (es_cardio  "false")
          (nom  "estiramiento piernas")
     )
     
     ([estiramiento_espalda] of Duratiu 
          (max_duracio  6)
          (min_duracio  4)
          (involucra [Esquena])
          (satisfa [Flexibilitat])
          (dificultat  "Facil")
          (edat_max_recomanada  80)
          (es_cardio  "false")
          (nom  "estiramiento espalda")
     )
     
     ([torsion_cintura] of Duratiu 
          (max_duracio  6)
          (min_duracio  4)
          (involucra [Tors])
          (satisfa [Flexibilitat])
          (dificultat  "Facil")
          (edat_max_recomanada  80)
          (es_cardio  "false")
          (nom  "torsion cintura")
     )
     
     ([estiramiento_hombros] of Duratiu 
          (max_duracio  6)
          (min_duracio  4)
          (involucra [Espatlla])
          (satisfa [Flexibilitat])
          (dificultat  "Facil")
          (edat_max_recomanada  80)
          (es_cardio  "false")
          (nom  "estiramiento hombros")
     )
     
     ([yoga_pose_perro] of Duratiu 
          (max_duracio  6)
          (min_duracio  4)
          (involucra [Esquena])
          (satisfa [Flexibilitat])
          (dificultat  "Mitja")
          (edat_max_recomanada  80)
          (es_cardio  "false")
          (nom  "yoga pose perro")
     )
     
     ([estiramiento_brazos] of Duratiu 
          (max_duracio  6)
          (min_duracio  5)
          (involucra [Braç])
          (satisfa [Flexibilitat])
          (dificultat  "Facil")
          (edat_max_recomanada  80)
          (es_cardio  "false")
          (nom  "estiramiento brazos")
     )
     
     ([giro_torso_sobre_suelo] of Duratiu 
          (max_duracio  7)
          (min_duracio  3)
          (involucra [Tors])
          (satisfa [Flexibilitat])
          (dificultat  "Mitja")
          (edat_max_recomanada  80)
          (es_cardio  "false")
          (nom  "giro torso sobre suelo")
     )
     
     ([estiramiento_de_cuello] of Duratiu 
          (max_duracio  7)
          (min_duracio  5)
          (involucra [Esquena])
          (satisfa [Flexibilitat])
          (dificultat  "Facil")
          (edat_max_recomanada  80)
          (es_cardio  "false")
          (nom  "estiramiento de cuello")
     )
     
     ([postura_del_gato] of Duratiu 
          (max_duracio  9)
          (min_duracio  7)
          (involucra [Esquena])
          (satisfa [Flexibilitat])
          (dificultat  "Mitja")
          (edat_max_recomanada  75)
          (es_cardio  "false")
          (nom  "postura del gato")
     )
     
     ([postura_del_niño] of Duratiu 
          (max_duracio  9)
          (min_duracio  6)
          (involucra [Esquena])
          (satisfa [Flexibilitat])
          (dificultat  "Facil")
          (edat_max_recomanada  75)
          (es_cardio  "false")
          (nom  "postura del niño")
     )
     
     ([estiramiento_de_mariposa] of Duratiu 
          (max_duracio  10)
          (min_duracio  7)
          (involucra  [Esquena] [Braç])
          (satisfa [Flexibilitat])
          (dificultat  "Facil")
          (edat_max_recomanada  80)
          (es_cardio  "false")
          (nom  "estiramiento de mariposa")
     )
     
     ([estiramiento_de_isquiotibiales_en_pie] of Duratiu 
          (max_duracio  9)
          (min_duracio  8)
          (involucra [Cama])
          (satisfa [Flexibilitat])
          (dificultat  "Dificil")
          (edat_max_recomanada  80)
          (es_cardio  "false")
          (nom  "estiramiento_de_isquiotibiales_en_pie")
     )
     
     ([estiramiento_triceps] of Duratiu 
          (max_duracio  8)
          (min_duracio  6)
          (involucra [Braç])
          (satisfa [Flexibilitat])
          (dificultat  "Facil")
          (edat_max_recomanada  75)
          (es_cardio  "false")
          (nom  "estiramiento triceps")
     )
     
     ([postura_del_camello] of Duratiu 
          (max_duracio  9)
          (min_duracio  7)
          (involucra [Esquena])
          (satisfa [Flexibilitat])
          (dificultat  "Mitja")
          (edat_max_recomanada  70)
          (es_cardio  "false")
          (nom  "postura del camello")
     )
     
     ([postura_de_la_paloma] of Duratiu 
          (max_duracio  7)
          (min_duracio  6)
          (involucra  [Esquena] [Cama])
          (satisfa [Flexibilitat])
          (dificultat  "Dificil")
          (edat_max_recomanada  65)
          (es_cardio  "false")
          (nom  "postura de la paloma")
     )
     
)
