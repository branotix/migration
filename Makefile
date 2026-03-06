# .env file load kora
ifneq ("$(wildcard .env)","")
    include .env
    export $(shell sed 's/=.*//' .env)
endif

.PHONY: up down create force

# Migration up kora
up:
	migrate -path db/migrations -database "$(DATABASE_URL)" up

# Migration down kora (Usage: make down name=2)
down:
	@read -p "Rolling back migration(s). Continue? [y/N]: " confirm; \
	if [ "$$confirm" = "y" ]; then \
		count=$(or $(name),1); \
		migrate -path db/migrations -database "$(DATABASE_URL)" down $$count; \
	fi

# Migration create kora (Usage: make create name=user_table)
create:
	migrate create -ext sql -dir migrations -seq $(name)

# Dirty state fix kora (Usage: make force name=1)
force:
	migrate -path migrations -database "$(DATABASE_URL)" force $(name)