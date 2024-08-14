-- +goose Up
Alter Table feeds ADD COLUMN last_fetched_at TIMESTAMP;

-- +goose Down

Alter Table feeds DROP COLUMN last_fetched_at;