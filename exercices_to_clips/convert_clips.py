import pandas as pd
import sys
import re

'''
fomrat out:


    ([Curl_mancuerna_biceps] of Repetitiu
         (max_repeticions  25)
         (min_repeticions  5)
         (involucra  [Braç])
         (satisfa  [Musculacio])
         (dificultat  "Facil")
         (edat_max_recomanada  75)
         (nom  "Curl mancuerna biceps")
    )

    ([Dolor_braç] of Dolor
         (afecta  [Braç])
    )


'''

def format_brakets(s):
     s = re.sub(r'([A-Z])', r' \1', s)
     a = " ".join( list(f"[{elem}]" for elem in s.replace(",", " " ).split()))
     if len(s.replace(",", " " ).split()) > 1:
          a = " " + a
          #a = " +" + a
     return a

dificultats= {
     "facil": "Facil",
     "Facil": "Facil",
     "FACIL": "Facil",
     "fcil": "Facil",
     "facil ": "Facil",
     "Facil ": "Facil",
     " facil": "Facil",
     "mitja":  "Mitja",
     "Mitja": "Mitja",
     "Mitja ": "Mitja",
     "mitja ": "Mitja",
     " mitja": "Mitja",
     " Mitja": "Mitja",
     "MITJA": "Mitja",
     "Mitjana": "Mitja",
     "mitjana": "Mitja",
     "dificil":  "Dificil",
     "Dificil": "Dificil",
     "Dificil ": "Dificil",
     "dificil ": "Dificil",
     " dificil": "Dificil",
     " Dificil": "Dificil",
     "DIFICIL": "Dificil"
}


def exercici_a_clips_string(exercici):
     es_duratiu = exercici["Tipus: rep/dur"] == "dur"
     exercici_clips = f"""
     ([{exercici["nom_instancia"]}]{(" of Duratiu "if es_duratiu else " of Repetitiu") if str(exercici["Tipus: rep/dur"]) != "nan" else ""}
          { ("(max_duracio  " + str(exercici["max_duracio"]) +  ")" if es_duratiu else "(max_repeticions " + str(exercici["max_repeticions"]) +")") if str(exercici["max_duracio"])!= "nan" or str(exercici["max_repeticions"])!= "nan" else "" }
          { ("(min_duracio  " + str(exercici["min_duracio"]) +  ")" if es_duratiu else "(min_repeticions " + str(exercici["min_repeticions"]) +")" ) if str(exercici["min_duracio"])!= "nan" or str(exercici["min_repeticions"])!= "nan" else ""}
          { "(duracio  " + str(exercici["duracio"]) +  ")" if not es_duratiu else ""}
          { ("(involucra  " + exercici["involucra"] +")" if "[" in exercici["involucra"] else "(involucra " +  format_brakets(exercici["involucra"]) +")" )if str(exercici["involucra"]) != "nan" else ""}
          { ("(satisfa  " + exercici["satisfa"] +")" if "[" in exercici["satisfa"] else "(satisfa " +  format_brakets(exercici["satisfa"]) +")" )if str(exercici["satisfa"]) != "nan" else ""}
          { '(dificultat  "' + dificultats[exercici["dificultat"]] + '")' if str(exercici["dificultat"]) != "nan" else ""}
          { '(edat_max_recomanada  ' + str(exercici["edat_maxima_recomanada"]) + ')' if str(exercici["edat_maxima_recomanada"]) != "nan" else ""}
          { '(nom  ' +'"' + str(exercici["nom_exercici"]) + '"'+ ')' if str(exercici["nom_exercici"]) != "nan" else ""}
          { ("(alleuja  " + exercici["alleuja"] +")" if "[" in exercici["alleuja"] else "(alleuja " +  format_brakets(exercici["alleuja"]) +")" )if str(exercici["alleuja"]) != "nan" else ""}
     )
     
     """
     #     { ("(satisfa  " + exercici["alleuja"] +")" if "[" in exercici["alleuja"] else "(alleuja " +  format_brakets(exercici["alleuja"]) +")" )if str(exercici["alleuja"]) != "nan" else ""}
     #          { ("(satisfa  " + exercici["satisfa"] +")" if "[" in exercici["satisfa"] else "(satisfa " +  format_brakets(exercici["satisfa"]) +")" )if str(exercici["satisfa"]) != "nan" else ""}
     #filtra linies blanques
     exercici_clips = re.sub(r'^\s*$\n', '', exercici_clips, flags=re.MULTILINE)
     return exercici_clips



def main():

     data = pd.read_excel("exercices_to_clips/exercicisExcel.xlsx")

     print("(definstances instances")
     for _, exercici in data.iterrows():
          if str(exercici["nom_instancia"]) != "nan" and "#" not in exercici["nom_instancia"]:
               exercici_clips = exercici_a_clips_string(exercici)
               print(exercici_clips)
     print(")")

def fitxer_def_instances_original():
     #try:
          with open("exercices_to_clips/definstances_ontologia.clp", 'r') as file:
               lines = file.readlines()
               for line in lines[:-1]:
                    print(line.replace("+", ""), end='')

               data = pd.read_excel("exercices_to_clips/exercicisExcel.xlsx")

               
               for _, exercici in data.iterrows():
                    if str(exercici["nom_instancia"]) != "nan" and "#" not in exercici["nom_instancia"]:
                         exercici_clips = exercici_a_clips_string(exercici)
                         print(exercici_clips)
               print(")")
     #except:
      #    print("ERROR")


if __name__ == "__main__":
     fitxer_def_instances_original()