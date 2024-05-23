CLIPS_INTERPRETER = "../clips_core_source_631/core/clips"

# executar el programa a clips, i fa els loads
run: 
	@${CLIPS_INTERPRETER}  -f src/loader.clp 
test1: 
	@${CLIPS_INTERPRETER}  -f src/loader_test1.clp 
test2: 
	@${CLIPS_INTERPRETER}  -f src/loader_test2.clp 
test3: 
	@${CLIPS_INTERPRETER}  -f src/loader_test3.clp 
test4: 
	@${CLIPS_INTERPRETER}  -f src/loader_test4.clp 
test5: 
	@${CLIPS_INTERPRETER}  -f src/loader_test5.clp 
test6: 
	@${CLIPS_INTERPRETER}  -f src/loader_test6.clp 
test7: 
	@${CLIPS_INTERPRETER}  -f src/loader_test7.clp 
test8: 
	@${CLIPS_INTERPRETER}  -f src/loader_test8.clp 

excel2clips:
	python3 exercices_to_clips/convert_clips.py > src/instances.clp


ttl2clips:
	owl2clips --input ontologia/ontologia.ttl --output src/ontology.clp --format turtle



