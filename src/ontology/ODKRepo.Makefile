## Customize Makefile settings for ODKRepo
## 
## If you need to customize your Makefile, make
## changes here rather than in the main Makefile

## ONTOLOGY: obi without individuals
.PHONY: mirror-obi
.PRECIOUS: $(MIRRORDIR)/obi.owl
mirror-obi: | $(TMPDIR)
	if [ $(MIR) = true ] && [ $(IMP) = true ]; then curl -L $(OBOBASE)/obi.owl --create-dirs -o $(MIRRORDIR)/obi.owl --retry 4 --max-time 200 &&\
	$(ROBOT) convert -i $(MIRRORDIR)/obi.owl -o $@.tmp.owl &&\
	$(ROBOT) remove -i $@.tmp.owl --select individuals -o $@.tmp.owl &&\
	mv $@.tmp.owl $(TMPDIR)/$@.owl; fi

## ONTOLOGY: omo
.PHONY: mirror-omo
.PRECIOUS: $(MIRRORDIR)/omo.owl
mirror-omo: | $(TMPDIR)
	if [ $(MIR) = true ] && [ $(IMP) = true ]; then curl -L $(OBOBASE)/omo.owl --create-dirs -o $(MIRRORDIR)/omo.owl --retry 4 --max-time 200 &&\
		$(ROBOT) convert -i $(MIRRORDIR)/omo.owl -o $@.tmp.owl &&\
		$(ROBOT) remove -i $@.tmp.owl --select individuals -o $@.tmp.owl &&\
		mv $@.tmp.owl $(TMPDIR)/$@.owl; fi