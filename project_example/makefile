all: publication

.PHONY: data analysis publication

data:
	$(MAKE) -C data

analysis: data
	$(MAKE) -C analysis

publication: analysis
	$(MAKE) -C publication
