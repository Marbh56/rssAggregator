-- +goose Up
Alter Table users ADD COLUMN api_key VARCHAR(64) UNIQUE NOT NULL DEFAULT(
    encode(sha256(random()::text::bytea), 'hex')
);

-- +goose Down

Alter Table users DROP COLUMN api_key;