CLIPS_INTERPRETER = "../clips_core_source_631/core/clips"

# executar el programa a clips, i fa els loads
run: 
	@${CLIPS_INTERPRETER}  -f src/loader.clp 
test1: 
	@${CLIPS_INTERPRETER}  -f src/loader_test1.clp 


excel2clips:
	python3 exercices_to_clips/convert_clips.py > src/instances.clp


ttl2clips:
	owl2clips --input ontologia/ontologia.ttl --output src/ontology.clp --format turtle



