(definstances instances
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
