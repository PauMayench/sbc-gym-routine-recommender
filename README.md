# Knowledge-based system of a Gym routine recommender<br>

Project for the subject AI at FIB-UPC Barcelona 2023-2024 (in Catalan/Spanish)<br>
---

**Team Members:**
- [Arnau Claramunt](https://github.com/ArnauCS03)<br>
- [Josep Díaz Sosa](https://github.com/Nascarin)<br>
- [Pau Mayench](https://github.com/PauMayench)<br><br>

[![GitHub followers](https://img.shields.io/github/followers/ArnauCS03?label=ArnauCS03)](https://github.com/ArnauCS03) &nbsp;&nbsp; [![GitHub followers](https://img.shields.io/github/followers/Nascarin?label=Nascarin)](https://github.com/Nascarin) &nbsp;&nbsp; [![GitHub followers](https://img.shields.io/github/followers/PauMayench?label=PauMayench)](https://github.com/PauMayench) <br><br>

---
![Screenshot from 2024-05-26 18-33-40](https://github.com/PauMayench/sbc-gym-routine-recommender/assets/95536223/b599eee7-c7e0-4ae1-85ec-6ba444d9c51e)

![Screenshot from 2024-05-26 18-33-57](https://github.com/PauMayench/sbc-gym-routine-recommender/assets/95536223/614f6e02-33ad-45b9-ae1b-335f67124c03)


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
