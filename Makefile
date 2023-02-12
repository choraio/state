gen:
	@find . -name 'go.mod' -type f -execdir go generate ./... \;
.PHONY: gen

gen-specs:
	@plantuml specs/coop.puml
.PHONY: gen-specs

local:
	@docker-compose down -v --remove-orphans
	@docker-compose build fuseki postgres
	@docker-compose up fuseki postgres
.PHONY: local

example:
	@go run github.com/choraio/state/cmd/example
.PHONY: example

clean:
	@docker-compose down -v --remove-orphans
.PHONY: clean
