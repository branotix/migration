include .env
export

migrate-up:
    @migrate -path db/migrations -database "$(DB_URL)" up

migrate-down:
    @migrate -path db/migrations -database "$(DB_URL)" down

migrate-new:
    @migrate create -ext sql -dir db/migrations -seq $(name)
