.PHONY: county_fips state_fips


us-atlas: 
	cd us-atlas && npm install && cp us/*geojson.json ../data/

county_fips: 
	curl https://www2.census.gov/geo/docs/reference/codes/national_county.txt > data/county_fips.txt

state_fips:
	curl https://www2.census.gov/geo/docs/reference/state.txt > data/state_fips.txt

