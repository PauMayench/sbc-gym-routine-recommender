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

    ;;; Instancia de la classe objectiu, defineix que l'usuari te com a objectiu el manteniment
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

     ([curl_manc_biceps] of Repetitiu
          (max_repeticions 25)
          (min_repeticions 5)
          (duracio  9)
          (involucra [Braç])
          (satisfa  [Musculacio] [Manteniment] [Posar_se_en_forma])
          (dificultat  "Facil")
          (edat_max_recomanada  75)
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
          (nom  "hiperextensiones")
          (alleuja [Esquena])
     )
     
     ([extension_cuadriceps] of Repetitiu
          (max_repeticions 20)
          (min_repeticions 10)
          (duracio  9)
          (involucra [Cama])
          (satisfa  [Musculacio] [Manteniment])
          (dificultat  "Facil")
          (edat_max_recomanada  80)
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
          (nom  "press militar multipower")
     )
     
     ([elevaciones_frontales_manc] of Repetitiu
          (max_repeticions 16)
          (min_repeticions 6)
          (duracio  8)
          (involucra  [Espatlla] [Braç])
          (satisfa  [Musculacio] [Posar_se_en_forma])
          (dificultat  "Facil")
          (edat_max_recomanada  75)
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
          (nom  "elevaciones laterales")
     )
     
     ([pajaro_manucerna] of Repetitiu
          (max_repeticions 16)
          (min_repeticions 6)
          (duracio  5)
          (involucra  [Espatlla] [Braç])
          (satisfa [Musculacio])
          (dificultat  "Dificil")
          (edat_max_recomanada  75)
          (nom  "pajaro mancuerna")
     )
     
     ([encogimientos_barra] of Repetitiu
          (max_repeticions 14)
          (min_repeticions 6)
          (duracio  8)
          (involucra [Esquena])
          (satisfa  [Musculacio] [Posar_se_en_forma])
          (dificultat  "Facil")
          (edat_max_recomanada  75)
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
          (nom  "elevacion de piernas")
     )
     
     ([plancha_abdominal] of Duratiu 
          (max_duracio  8)
          (min_duracio  4)
          (involucra [Tors])
          (satisfa [Musculacio])
          (dificultat  "Mitja")
          (edat_max_recomanada  75)
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
          (nom  "peso muerto")
     )
     
     ([cinta_de_correr] of Duratiu 
          (max_duracio  30)
          (min_duracio  5)
          (involucra [Cama])
          (satisfa  [Baixar_de_pes] [Posar_se_en_forma] [Manteniment])
          (dificultat  "Facil")
          (edat_max_recomanada  75)
          (nom  "cinta de correr")
     )
     
     ([saltar_a_la_comba] of Duratiu 
          (max_duracio  20)
          (min_duracio  2)
          (involucra [Cama])
          (satisfa  [Baixar_de_pes] [Manteniment] [Posar_se_en_forma])
          (dificultat  "Facil")
          (edat_max_recomanada  73)
          (nom  "saltar a la comba")
     )
     
     ([aqua_gym] of Duratiu 
          (max_duracio  60)
          (min_duracio  30)
          (involucra  [Braç] [Cama] [Tors])
          (satisfa  [Baixar_de_pes] [Manteniment])
          (dificultat  "Facil")
          (edat_max_recomanada  90)
          (nom  "aqua gym")
          (alleuja  [Braç] [Cama] [Tors])
     )
     
     ([idas_y_vueltas_piscina] of Repetitiu
          (max_repeticions 20)
          (min_repeticions 3)
          (duracio  20)
          (involucra  [Braç] [Cama] [Esquena])
          (satisfa  [Baixar_de_pes] [Yoga] [Manteniment])
          (dificultat  "Mitja")
          (edat_max_recomanada  80)
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
          (nom  "burpees")
     )
     
     ([caminar_cinta_correr] of Duratiu 
          (max_duracio  45)
          (min_duracio  10)
          (involucra [Cama])
          (satisfa  [Baixar_de_pes] [Manteniment])
          (dificultat  "Facil")
          (edat_max_recomanada  85)
          (nom  "caminar cinta correr")
          (alleuja [Cama])
     )
     
     ([bicicleta_eliptica] of Duratiu 
          (max_duracio  45)
          (min_duracio  10)
          (involucra [Cama])
          (satisfa  [Baixar_de_pes] [Manteniment] [Posar_se_en_forma])
          (dificultat  "Mitja")
          (edat_max_recomanada  85)
          (nom  "bici eliptica")
     )
     
     ([bicicleta_estatica] of Duratiu 
          (max_duracio  60)
          (min_duracio  10)
          (involucra [Cama])
          (satisfa  [Baixar_de_pes] [Manteniment] [Posar_se_en_forma])
          (dificultat  "Facil")
          (edat_max_recomanada  85)
          (nom  "bicicleta estatica")
     )
     
     ([drumfit_rower] of Duratiu 
          (max_duracio  8)
          (min_duracio  2)
          (involucra  [Esquena] [Braç] [Espatlla])
          (satisfa  [Baixar_de_pes] [Manteniment])
          (dificultat  "Mitja")
          (edat_max_recomanada  80)
          (nom  "drumfit rower")
          (alleuja [Esquena])
     )
     
     ([zancadas] of Duratiu 
          (max_duracio  3)
          (min_duracio  1)
          (involucra [Cama])
          (satisfa [Baixar_de_pes])
          (dificultat  "Mitja")
          (edat_max_recomanada  75)
          (nom  "zancadas")
     )
     
     ([mountain_climbers] of Duratiu 
          (max_duracio  3)
          (min_duracio  1)
          (involucra [Tors])
          (satisfa  [Baixar_de_pes] [Posar_se_en_forma])
          (dificultat  "Dificil")
          (edat_max_recomanada  65)
          (nom  "mountain climbers")
     )
     
     ([pasos_laterales] of Repetitiu
          (max_repeticions 20)
          (min_repeticions 15)
          (duracio  6)
          (involucra [Cama])
          (satisfa  [Baixar_de_pes] [Manteniment])
          (dificultat  "Facil")
          (edat_max_recomanada  75)
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
          (nom  "toques hombro en plancha")
     )
     
     ([zancadas_patinador] of Repetitiu
          (max_repeticions 20)
          (min_repeticions 10)
          (duracio  6)
          (involucra [Cama])
          (satisfa  [Baixar_de_pes] [Posar_se_en_forma] [Manteniment])
          (dificultat  "Mitja")
          (edat_max_recomanada  70)
          (nom  "zancadas patinador")
     )
     
     ([rollbacks] of Repetitiu
          (max_repeticions 16)
          (min_repeticions 6)
          (duracio  6)
          (involucra [Tors])
          (satisfa  [Baixar_de_pes] [Manteniment])
          (dificultat  "Mitja")
          (edat_max_recomanada  70)
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
          (nom  "lateral toe taps")
     )
     
     ([sit-outs] of Duratiu 
          (max_duracio  8)
          (min_duracio  4)
          (involucra [Tors])
          (satisfa [Baixar_de_pes])
          (dificultat  "Dificil")
          (edat_max_recomanada  65)
          (nom  "sit-outs")
     )
     
     ([jumping_jacks] of Duratiu 
          (max_duracio  8)
          (min_duracio  4)
          (involucra  [Braç] [Cama])
          (satisfa  [Baixar_de_pes] [Manteniment])
          (dificultat  "Facil")
          (edat_max_recomanada  70)
          (nom  "jumping jacks")
     )
     
     ([toques_altos_rodilla] of Duratiu 
          (max_duracio  8)
          (min_duracio  4)
          (involucra [Cama])
          (satisfa [Baixar_de_pes])
          (dificultat  "Mitja")
          (edat_max_recomanada  70)
          (nom  "toques altos")
     )
     
     ([saltos_en_cuclillas] of Duratiu 
          (max_duracio  8)
          (min_duracio  4)
          (involucra [Cama])
          (satisfa  [Baixar_de_pes] [Manteniment])
          (dificultat  "Dificil")
          (edat_max_recomanada  70)
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
          (nom  "jabs")
     )
     
     ([plancha_lateral] of Duratiu 
          (max_duracio  4)
          (min_duracio  3)
          (involucra [Tors])
          (satisfa [Baixar_de_pes])
          (dificultat  "Dificil")
          (edat_max_recomanada  70)
          (nom  "plancha lateral")
     )
     
     ([ondas_con_cuerdas] of Duratiu 
          (max_duracio  4)
          (min_duracio  3)
          (involucra [Braç])
          (satisfa  [Baixar_de_pes] [Manteniment])
          (dificultat  "Facil")
          (edat_max_recomanada  80)
          (nom  "ondas con cuerdas")
     )
     
     ([abdominales_posicion_cangrejo] of Duratiu 
          (max_duracio  3)
          (min_duracio  2)
          (involucra [Tors])
          (satisfa [Baixar_de_pes])
          (dificultat  "Mitja")
          (edat_max_recomanada  70)
          (nom  "abdominales posicion cangrejo")
     )
     
     ([sprints_cinta_correr] of Duratiu 
          (max_duracio  6)
          (min_duracio  3)
          (involucra [Cama])
          (satisfa  [Baixar_de_pes] [Posar_se_en_forma])
          (dificultat  "Mitja")
          (edat_max_recomanada  75)
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
          (nom  "saltos en la caja")
     )
     
     ([caminata_del_oso] of Duratiu 
          (max_duracio  6)
          (min_duracio  3)
          (involucra  [Braç] [Tors])
          (satisfa [Baixar_de_pes])
          (dificultat  "Dificil")
          (edat_max_recomanada  75)
          (nom  "caminata del oso")
     )
     
     ([subida_de_escaleras] of Duratiu 
          (max_duracio  7)
          (min_duracio  5)
          (involucra [Cama])
          (satisfa  [Baixar_de_pes] [Manteniment])
          (dificultat  "Facil")
          (edat_max_recomanada  90)
          (nom  "subida de escaleras")
     )
     
     ([patadas_de_tijera] of Duratiu 
          (max_duracio  4)
          (min_duracio  3)
          (involucra [Tors])
          (satisfa  [Baixar_de_pes] [Manteniment] [Posar_se_en_forma])
          (dificultat  "Mitja")
          (edat_max_recomanada  75)
          (nom  "patadas de tijera")
     )
     
     ([estiramiento_cuello] of Duratiu 
          (max_duracio  6)
          (min_duracio  5)
          (involucra [Tors])
          (satisfa  [Rehabilitacio] [Manteniment] [Yoga] [Flexibilitat])
          (dificultat  "Facil")
          (edat_max_recomanada  85)
          (nom  "estiramiento cuello")
          (alleuja [Tors])
     )
     
     ([balanceo_con_kettlebell] of Duratiu 
          (max_duracio  6)
          (min_duracio  5)
          (involucra [Tors])
          (satisfa [Rehabilitacio])
          (dificultat  "Mitja")
          (edat_max_recomanada  80)
          (nom  "balanceo con kettlebell")
          (alleuja [Tors])
     )
     
     ([rotaciones_hombros] of Duratiu 
          (max_duracio  4)
          (min_duracio  3)
          (involucra [Espatlla])
          (satisfa  [Rehabilitacio] [Yoga])
          (dificultat  "Facil")
          (edat_max_recomanada  80)
          (nom  "rotaciones hombros ")
          (alleuja [Espatlla])
     )
     
     ([elevacion_hombros] of Repetitiu
          (max_repeticions 15)
          (min_repeticions 8)
          (duracio  6)
          (involucra [Espatlla])
          (satisfa [Rehabilitacio])
          (dificultat  "Facil")
          (edat_max_recomanada  75)
          (nom  "elevacion de hombros")
          (alleuja [Espatlla])
     )
     
     ([retraimiento_escapular] of Repetitiu
          (max_repeticions 20)
          (min_repeticions 10)
          (duracio  6)
          (involucra [Espatlla])
          (satisfa [Rehabilitacio])
          (dificultat  "Mitja")
          (edat_max_recomanada  80)
          (nom  "retraimiento escapular")
          (alleuja [Espatlla])
     )
     
     ([rotacion_externa_hombro] of Repetitiu
          (max_repeticions 15)
          (min_repeticions 8)
          (duracio  5)
          (involucra [Espatlla])
          (satisfa [Rehabilitacio])
          (dificultat  "Facil")
          (edat_max_recomanada  80)
          (nom  "rotacion externa de hombro")
          (alleuja [Espatlla])
     )
     
     ([abduccion_hombro] of Repetitiu
          (max_repeticions 20)
          (min_repeticions 10)
          (duracio  5)
          (involucra [Espatlla])
          (satisfa [Rehabilitacio])
          (dificultat  "Mitja")
          (edat_max_recomanada  80)
          (nom  "abducción de hombro")
          (alleuja [Espatlla])
     )
     
     ([estiramiento_cuadriceps] of Duratiu 
          (max_duracio  4)
          (min_duracio  3)
          (involucra [Cama])
          (satisfa [Rehabilitacio])
          (dificultat  "Facil")
          (edat_max_recomanada  75)
          (nom  "estiramiento de cuadriceps")
          (alleuja [Cama])
     )
     
     ([estiramiento_isquiotibiales] of Duratiu 
          (max_duracio  6)
          (min_duracio  5)
          (involucra [Cama])
          (satisfa [Rehabilitacio])
          (dificultat  "Facil")
          (edat_max_recomanada  80)
          (nom  "estiramiento de isquiotibiales")
          (alleuja [Cama])
     )
     
     ([puente_gluteo] of Repetitiu
          (max_repeticions 20)
          (min_repeticions 10)
          (duracio  6)
          (involucra [Cama])
          (satisfa  [Rehabilitacio] [Manteniment])
          (dificultat  "Facil")
          (edat_max_recomanada  75)
          (nom  "puente de gluteos")
          (alleuja [Cama])
     )
     
     ([extensiones_tobillo] of Repetitiu
          (max_repeticions 20)
          (min_repeticions 10)
          (duracio  6)
          (involucra [Cama])
          (satisfa [Rehabilitacio])
          (dificultat  "Facil")
          (edat_max_recomanada  80)
          (nom  "extensiones de tobillo")
          (alleuja [Cama])
     )
     
     ([flexion_tobillo] of Repetitiu
          (max_repeticions 20)
          (min_repeticions 10)
          (duracio  5)
          (involucra [Cama])
          (satisfa [Rehabilitacio])
          (dificultat  "Mitja")
          (edat_max_recomanada  80)
          (nom  "flexion de tobillo")
          (alleuja [Cama])
     )
     
     ([estiramiento_lateral_tronco] of Duratiu 
          (max_duracio  4)
          (min_duracio  3)
          (involucra [Tors])
          (satisfa  [Rehabilitacio] [Yoga])
          (dificultat  "Dificil")
          (edat_max_recomanada  75)
          (nom  "estiramiento lateral del tronco")
          (alleuja [Tors])
     )
     
     ([elevacion_talon_sentado] of Repetitiu
          (max_repeticions 20)
          (min_repeticions 10)
          (duracio  6)
          (involucra [Cama])
          (satisfa [Rehabilitacio])
          (dificultat  "Mitja")
          (edat_max_recomanada  80)
          (nom  "elevación de talón sentado")
          (alleuja [Cama])
     )
     
     ([rotacion_cadera] of Duratiu 
          (max_duracio  4)
          (min_duracio  3)
          (involucra [Tors])
          (satisfa [Rehabilitacio])
          (dificultat  "Facil")
          (edat_max_recomanada  80)
          (nom  "rotacion de cadera")
          (alleuja [Tors])
     )
     
     ([estiramiento_pectoral] of Duratiu 
          (max_duracio  4)
          (min_duracio  3)
          (involucra [Pit])
          (satisfa [Rehabilitacio])
          (dificultat  "Dificil")
          (edat_max_recomanada  75)
          (nom  "estiramiento pectoral")
          (alleuja [Pit])
     )
     
     ([estiramiento_biceps] of Duratiu 
          (max_duracio  5)
          (min_duracio  4)
          (involucra [Braç])
          (satisfa [Rehabilitacio])
          (dificultat  "Facil")
          (edat_max_recomanada  80)
          (nom  "estiramiento de biceps")
          (alleuja [Braç])
     )
     
     ([estiramiento_triceps] of Duratiu 
          (max_duracio  5)
          (min_duracio  4)
          (involucra [Braç])
          (satisfa [Rehabilitacio])
          (dificultat  "Mitja")
          (edat_max_recomanada  80)
          (nom  "estiramiento de triceps")
          (alleuja [Braç])
     )
     
     ([rotaciones_lumbares] of Duratiu 
          (max_duracio  6)
          (min_duracio  4)
          (involucra [Esquena])
          (satisfa  [Rehabilitacio] [Manteniment])
          (dificultat  "Mitja")
          (edat_max_recomanada  75)
          (nom  "rotaciones lumbares")
          (alleuja [Esquena])
     )
     
     ([flexiones_dorsales] of Repetitiu
          (max_repeticions 20)
          (min_repeticions 10)
          (duracio  10)
          (involucra [Esquena])
          (satisfa [Rehabilitacio])
          (dificultat  "Facil")
          (edat_max_recomanada  75)
          (nom  "flexiones dorsales")
          (alleuja [Esquena])
     )
     
     ([flexiones_cervicales] of Repetitiu
          (max_repeticions 20)
          (min_repeticions 10)
          (duracio  8)
          (involucra [Tors])
          (satisfa [Rehabilitacio])
          (dificultat  "Mitja")
          (edat_max_recomanada  75)
          (nom  "flexiones cervicales")
          (alleuja [Tors])
     )
     
     ([aqua_terapia] of Duratiu 
          (max_duracio  40)
          (min_duracio  20)
          (involucra  [Braç] [Cama] [Tors])
          (satisfa  [Rehabilitacio] [Manteniment])
          (dificultat  "Facil")
          (edat_max_recomanada  80)
          (nom  "aqua terapia ")
          (alleuja  [Braç] [Cama] [Tors])
     )
     
     ([postura_de_la_cobra] of Duratiu 
          (max_duracio  5)
          (min_duracio  3)
          (involucra [Esquena])
          (satisfa  [Flexibilitat] [Yoga])
          (dificultat  "Dificil")
          (edat_max_recomanada  80)
          (nom  "postura de la cobra")
     )
     
     ([estiramiento_piernas] of Duratiu 
          (max_duracio  6)
          (min_duracio  4)
          (involucra [Cama])
          (satisfa  [Flexibilitat] [Yoga])
          (dificultat  "Facil")
          (edat_max_recomanada  80)
          (nom  "estiramiento piernas")
     )
     
     ([estiramiento_espalda] of Duratiu 
          (max_duracio  6)
          (min_duracio  4)
          (involucra [Esquena])
          (satisfa  [Flexibilitat] [Yoga])
          (dificultat  "Facil")
          (edat_max_recomanada  80)
          (nom  "estiramiento espalda")
     )
     
     ([torsion_cintura] of Duratiu 
          (max_duracio  6)
          (min_duracio  4)
          (involucra [Tors])
          (satisfa  [Flexibilitat] [Yoga])
          (dificultat  "Facil")
          (edat_max_recomanada  80)
          (nom  "torsion cintura")
     )
     
     ([estiramiento_hombros] of Duratiu 
          (max_duracio  6)
          (min_duracio  4)
          (involucra [Espatlla])
          (satisfa  [Flexibilitat] [Yoga])
          (dificultat  "Facil")
          (edat_max_recomanada  80)
          (nom  "estiramiento hombros")
     )
     
     ([yoga_pose_perro] of Duratiu 
          (max_duracio  6)
          (min_duracio  4)
          (involucra [Esquena])
          (satisfa  [Flexibilitat] [Yoga])
          (dificultat  "Mitja")
          (edat_max_recomanada  80)
          (nom  "yoga pose perro")
     )
     
     ([estiramiento_brazos] of Duratiu 
          (max_duracio  6)
          (min_duracio  5)
          (involucra [Braç])
          (satisfa  [Flexibilitat] [Yoga])
          (dificultat  "Facil")
          (edat_max_recomanada  80)
          (nom  "estiramiento brazos")
     )
     
     ([giro_torso_sobre_suelo] of Duratiu 
          (max_duracio  7)
          (min_duracio  3)
          (involucra [Tors])
          (satisfa  [Flexibilitat] [Yoga])
          (dificultat  "Mitja")
          (edat_max_recomanada  80)
          (nom  "giro torso sobre suelo")
     )
     
     ([postura_de_la_paloma] of Duratiu 
          (max_duracio  7)
          (min_duracio  6)
          (involucra  [Esquena] [Cama])
          (satisfa  [Flexibilitat] [Yoga])
          (dificultat  "Dificil")
          (edat_max_recomanada  65)
          (nom  "postura de la paloma")
     )
     
     ([postura_del_gato] of Duratiu 
          (max_duracio  9)
          (min_duracio  7)
          (involucra [Esquena])
          (satisfa  [Flexibilitat] [Yoga])
          (dificultat  "Mitja")
          (edat_max_recomanada  75)
          (nom  "postura del gato")
          (alleuja [Esquena])
     )
     
     ([postura_del_niño] of Duratiu 
          (max_duracio  9)
          (min_duracio  6)
          (involucra [Esquena])
          (satisfa  [Flexibilitat] [Yoga])
          (dificultat  "Facil")
          (edat_max_recomanada  75)
          (nom  "postura del niño")
     )
     
     ([estiramiento_de_mariposa] of Duratiu 
          (max_duracio  10)
          (min_duracio  7)
          (involucra  [Esquena] [Braç])
          (satisfa  [Flexibilitat] [Yoga])
          (dificultat  "Facil")
          (edat_max_recomanada  80)
          (nom  "estiramiento de mariposa")
     )
     
     ([estiramiento_de_isquiotibiales_en_pie] of Duratiu 
          (max_duracio  9)
          (min_duracio  8)
          (involucra [Cama])
          (satisfa  [Flexibilitat] [Yoga])
          (dificultat  "Dificil")
          (edat_max_recomanada  80)
          (nom  "estiramiento de isquiotibiales en pie")
     )
     
     ([estiramiento_triceps] of Duratiu 
          (max_duracio  8)
          (min_duracio  6)
          (involucra [Braç])
          (satisfa  [Flexibilitat] [Yoga])
          (dificultat  "Facil")
          (edat_max_recomanada  75)
          (nom  "estiramiento triceps")
     )
     
     ([postura_del_camello] of Duratiu 
          (max_duracio  9)
          (min_duracio  7)
          (involucra [Esquena])
          (satisfa  [Flexibilitat] [Yoga])
          (dificultat  "Mitja")
          (edat_max_recomanada  70)
          (nom  "postura del camello")
     )
     
)
