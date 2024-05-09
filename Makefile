CLIPS_INTERPRETER = "../clips_core_source_631/core/clips"

run: 
	@${CLIPS_INTERPRETER}  -f src/main.clp 

excel2clips:
	python3 exercices_to_clips/convert_clips.py > exercises.clp


owl2clips:
	owl2clips --input ontologia/Ontologia.ttl --output src/ontologia.clp --format turtle



