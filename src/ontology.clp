;;; ---------------------------------------------------------
;;; src/ontology.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology ontologia/ontologia.ttl
;;; :Date 26/05/2024 09:08:22

(defclass Exercici "Classe que contindra els exercicis del programa"
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot alleuja
        (type INSTANCE)
        (create-accessor read-write))
    (multislot compatible
        (type INSTANCE)
        (create-accessor read-write))
    ;;; Relacio entre un exercici i un grup muscular
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

(defclass Duratiu "Subclasse de Exercici on els exercicis tenen una certa duracio de temps"
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

(defclass Repetitiu "Subclasse d'exercici on aquests tenen unes certes repeticions a fer"
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

(defclass Problema_de_Salut "Classe que contindra l'estat de la salut del usuari"
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
)

(defclass Dolor "Classe que defineix el dolor que pot tenir un usuari"
    (is-a Problema_de_Salut)
    (role concrete)
    (pattern-match reactive)
    (multislot afecta
        (type INSTANCE)
        (create-accessor read-write))
)

(defclass Invalidesa "Classe que defineix la invalidesa que pot tenir un usuari"
    (is-a Problema_de_Salut)
    (role concrete)
    (pattern-match reactive)
    (multislot invalida
        (type INSTANCE)
        (create-accessor read-write))
)

(defclass Sense "Classe que defineix un usuari que no te problemes de salut"
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

(defclass Dia "Classe on es defineix cada dia de la setmana del programa"
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

(defclass Grup_Muscular "Classe que contindra tots els possibles grups musculars"
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
)

(defclass Objectiu "Classe que conte l'objectiu del programa del usuari"
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
    ;;; Atribut que defineix les pulsacions per minut d'un usuari
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

)
