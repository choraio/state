specs:
	plantuml specs/coop.puml
.PHONY: specs

local:
	@docker-compose down -v --remove-orphans
	@docker-compose build fuseki postgres
	@docker-compose up fuseki postgres
.PHONY: local

clean:
	@docker-compose down -v --remove-orphans
.PHONY: clean
