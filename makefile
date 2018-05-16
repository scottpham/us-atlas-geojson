.PHONY: county_fips state_fips us-atlas reproduce clean flip_axis


reproduce: clean county_fips state_fips us-atlas flip_axis

clean: 
	rm -rf data output && mkdir data output && rm -rf us-atlas/node_modules

us-atlas: 
	cd us-atlas && npm install && cp us/*geojson.json ../data/

state_fips:
	curl https://www2.census.gov/geo/docs/reference/state.txt > data/state_fips.txt

flip_axis: 
	jupyter nbconvert \
		--to notebook \
		--output flip_axis \
		--execute flip_axis;

