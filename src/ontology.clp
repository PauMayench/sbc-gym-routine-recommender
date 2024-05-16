;;; ---------------------------------------------------------
;;; src/ontology.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology ontologia/ontologia.ttl
;;; :Date 16/05/2024 20:40:53

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
    (slot duracio_minima
        (type INTEGER)
        (create-accessor read-write))
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
    (slot pateix
        (type INSTANCE)
        (create-accessor read-write))
    (slot fa
        (type INSTANCE)
        (create-accessor read-write))
    (slot obte_un
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

(definstances instances
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

    ([Curl_mancuerna_biceps] of Repetitiu
         (max_repeticions  25)
         (min_repeticions  5)
         (involucra  [Braç])
         (satisfa  [Musculacio])
         (dificultat  "Facil")
         (edat_max_recomanada  75)
         (es_cardio  "false")
         (nom  "Curl mancuerna biceps")
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

    ([Preparacio_powerlifting] of Objectiu
         (nom  "Preparacio powerlifting")
    )

    ([Rehabilitacio] of Objectiu
         (nom  "Rehabilitacio")
    )

    ([Tors] of Grup_Muscular
    )

)
