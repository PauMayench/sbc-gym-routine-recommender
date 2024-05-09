import pandas as pd
import sys

'''
fomrat out:


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


'''


data = pd.read_excel("exercicisExcel.xlsx")

for index, exercici in data.iterrows():

     if exercici["nom_instancia"] and "#" not in exercici["nom_instancia"]:
          es_duratiu = exercici["Tipus: rep/dur"] == "dur"
          exercici_clips = f"""
          ([{exercici["nom_instancia"]} of {"Duratiu "if es_duratiu else "Repetitiu"}
          { "(max_duracio " + str(int(exercici["max_duracio"])) +  ")" if es_duratiu else "(max_repeticions " + str(int(exercici["max_repeticions"])) +")" }
          { "(min_duracio " + str(int(exercici["min_duracio"])) +  ")" if es_duratiu else "(min_repeticions " + str(int(exercici["min_repeticions"])) +")" }
          (es_cardio  "{"true" if exercici["es_cardio"] else "false"}")
          (nom  "{exercici["nom_exercici"]}")
          )
          
          """


     print(exercici_clips)