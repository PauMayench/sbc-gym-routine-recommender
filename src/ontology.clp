;;; ---------------------------------------------------------
;;; src/ontology.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology ontologia/ontologia.ttl
;;; :Date 26/05/2024 08:51:01

(defclass Exercici
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot alleuja
        (type INSTANCE)
        (create-accessor read-write))
    (multislot compatible
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
    (multislot dificultat
        (type STRING)
        (create-accessor read-write))
    (slot duracio
        (type INTEGER)
        (create-accessor read-write))
    (slot edat_max_recomanada
        (type INTEGER)
        (create-accessor read-write))
    (slot nom
        (type STRING)
        (create-accessor read-write))
)

(defclass Duratiu
    (is-a Exercici)
    (role concrete)
    (pattern-match reactive)
    (slot max_duracio
        (type INTEGER)
        (create-accessor read-write))
    (slot min_duracio
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

(defclass Activitat "Classe que defineix l'activitat de la persona, si es activa o inactiva."
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot es_activa
        (type STRING)
        (create-accessor read-write))
    (slot frequencia
        (type INTEGER)
        (create-accessor read-write))
)

(defclass Dia
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot conte_exercicis
        (type INSTANCE)
        (create-accessor read-write))
    (slot nom
        (type STRING)
        (create-accessor read-write))
    (slot temps_dia
        (type INTEGER)
        (create-accessor read-write))
    (slot temps_maxim
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
    (slot fa
        (type INSTANCE)
        (create-accessor read-write))
    (slot obte_un
        (type INSTANCE)
        (create-accessor read-write))
    (slot pateix
        (type INSTANCE)
        (create-accessor read-write))
    (slot te
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
    (slot nom
        (type STRING)
        (create-accessor read-write))
    (slot pes_corporal
        (type INTEGER)
        (create-accessor read-write))
    (slot ppm
        (type INTEGER)
        (create-accessor read-write))
    (slot te_mareig
        (type STRING)
        (create-accessor read-write))
    (slot te_tibantor_muscular
        (type STRING)
        (create-accessor read-write))
    (slot temps_diari
        (type INTEGER)
        (create-accessor read-write))
)

(defclass Programa
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot dia1
        (type INSTANCE)
        (create-accessor read-write))
    (slot dia2
        (type INSTANCE)
        (create-accessor read-write))
    (slot dia3
        (type INSTANCE)
        (create-accessor read-write))
    (slot dia4
        (type INSTANCE)
        (create-accessor read-write))
    (slot dia5
        (type INSTANCE)
        (create-accessor read-write))
    (slot nom
        (type STRING)
        (create-accessor read-write))
)