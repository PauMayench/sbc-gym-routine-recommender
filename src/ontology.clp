;;; ---------------------------------------------------------
;;; src/ontologia.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology ontologia/ontologia.ttl
;;; :Date 09/05/2024 11:33:33

(defclass Exercici
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot compatible
        (type INSTANCE)
        (create-accessor read-write))
    (multislot alleuja
        (type INSTANCE)
        (create-accessor read-write))
    (multislot involucra
        (type INSTANCE)
        (create-accessor read-write))
    (multislot part_de
        (type INSTANCE)
        (create-accessor read-write))
    (multislot satisfa
        (type INSTANCE)
        (create-accessor read-write))
    (slot calories_temps
        (type INTEGER)
        (create-accessor read-write))
    (multislot dificultat
        (type STRING)
        (create-accessor read-write))
    (slot edat_max_recomanada
        (type INTEGER)
        (create-accessor read-write))
    (slot es_cardio
        (type SYMBOL)
        (create-accessor read-write))
    (slot nom
        (type STRING)
        (create-accessor read-write))
)

(defclass Duratiu
    (is-a Exercici)
    (role concrete)
    (pattern-match reactive)
    (slot duracio
        (type INTEGER)
        (create-accessor read-write))
    (slot duracio_maxima
        (type INTEGER)
        (create-accessor read-write))
    (slot duracio_minima
        (type INTEGER)
        (create-accessor read-write))
)

(defclass Repetitiu
    (is-a Exercici)
    (role concrete)
    (pattern-match reactive)
    (slot max_repeticions
        (type INTEGER)
        (create-accessor read-write))
    (slot min_repeticions
        (type INTEGER)
        (create-accessor read-write))
    (slot repeticions
        (type INTEGER)
        (create-accessor read-write))
)

(defclass Problema_de_Salut
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
)

(defclass Dolor
    (is-a Problema_de_Salut)
    (role concrete)
    (pattern-match reactive)
    (multislot afecta
        (type INSTANCE)
        (create-accessor read-write))
)

(defclass Invalidesa
    (is-a Problema_de_Salut)
    (role concrete)
    (pattern-match reactive)
    (multislot invalida
        (type INSTANCE)
        (create-accessor read-write))
)

(defclass Sense
    (is-a Problema_de_Salut)
    (role concrete)
    (pattern-match reactive)
)

(defclass Activitat
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot es_activa
        (type SYMBOL)
        (create-accessor read-write))
    (slot frequencia
        (type INTEGER)
        (create-accessor read-write))
)

(defclass Grup_Muscular
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
)

(defclass Objectiu
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot nom
        (type STRING)
        (create-accessor read-write))
)

(defclass Persona "Identifica l'usuari que li recomanem el programa."
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot fa
        (type INSTANCE)
        (create-accessor read-write))
    (slot obte_un
        (type INSTANCE)
        (create-accessor read-write))
    (multislot te
        (type INSTANCE)
        (create-accessor read-write))
    (slot IMC
        (type INTEGER)
        (create-accessor read-write))
    (slot alçada
        (type INTEGER)
        (create-accessor read-write))
    (slot edat
        (type INTEGER)
        (create-accessor read-write))
    (slot intensitat_inicial
        (type INTEGER)
        (create-accessor read-write))
    (slot max_pres_sang
        (type INTEGER)
        (create-accessor read-write))
    (slot min_pres_sang
        (type INTEGER)
        (create-accessor read-write))
    (slot pes_corporal
        (type INTEGER)
        (create-accessor read-write))
    (slot ppm
        (type INTEGER)
        (create-accessor read-write))
    (slot te_mareig
        (type SYMBOL)
        (create-accessor read-write))
    (slot te_tibantor_muscular
        (type SYMBOL)
        (create-accessor read-write))
    (slot temps_diari
        (type INTEGER)
        (create-accessor read-write))
)

(defclass Programa
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
)