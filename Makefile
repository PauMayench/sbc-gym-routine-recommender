CLIPS_INTERPRETER = "../clips_core_source_631/core/clips"

# executar el programa a clips, i fa els loads
run: 
	@${CLIPS_INTERPRETER}  -f src/main.clp 

excel2clips:
	python3 exercices_to_clips/convert_clips.py > exercises.clp


ttl2clips:
	owl2clips --input ontologia/ontologia.ttl --output src/ontologia.clp --format turtle



