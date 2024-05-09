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

    es_iteratiu = exercici["Tipus: rep/iter"] == "iter"
    exercici_clips = f"""
    ([{exercici["nom_instancia"]} of {"Iteratiu "if es_iteratiu else "Repetitiu"}
    { "(max_iteracions " + str(int(exercici["max_iteracions"])) +  ")" if es_iteratiu else "(max_repeticions " + str(int(exercici["max_repeticions"])) +")" }
    { "(min_iteracions " + str(int(exercici["min_iteracions"])) +  ")" if es_iteratiu else "(min_repeticions " + str(int(exercici["min_repeticions"])) +")" }
    (es_cardio  "{"true" if exercici["es_carido"] else "false"}")
    (nom  "{exercici["nom_exercici"]}")
    )
    
    """


    print(exercici_clips)