# Knowledge-based system of a Gym routine recommender<br>

Project for the subject AI in UPC-FIB (Barcelona) 2023-2024<br>
---

**Team Members:**
- [Arnau Claramunt](https://github.com/ArnauCS03)<br>
- [Josep Díaz](https://github.com/Nascarin)<br>
- [Pau Mayench](https://github.com/PauMayench)<br><br>

## Objective
The problem is given by the [teachers](https://www.fib.upc.edu/es/estudios/grados/grado-en-ingenieria-informatica/plan-de-estudios/asignaturas/IA) descrived in the pdf in the [*problem_description*](https://github.com/PauMayench/sbc-gym-routine-recommender/tree/master/problem_description) folder (in Spanish).
The main goal is to create a rocommender for a full week routine in a gym. With various exercises, and asking questions to the user in order to know the objectives, intensity level and health related problems.

The Ontology is created with [Protégé](https://protege.stanford.edu/) and the recommender with [CLIPS](https://www.clipsrules.net/).

# Requirements
owl2clips:<br>
To convert the file exported from the ontology in `.ttl` format, to `.clp`, use the command `owl2clips`.<br>
To intall it easyly, just execute: 
```bash
pip install -r requirements.txt
```
<br>After you can use the Makefile:  `make ttl2clips`  remember to add the path to your installed clips in *CLIPS_INTERPRETER*
