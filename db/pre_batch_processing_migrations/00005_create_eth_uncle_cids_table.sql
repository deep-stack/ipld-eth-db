-- +goose Up
CREATE TABLE eth.uncle_cids (
    block_hash            VARCHAR(66) NOT NULL,
    header_id             VARCHAR(66) NOT NULL,
    parent_hash           VARCHAR(66) NOT NULL,
    cid                   TEXT NOT NULL,
    reward                NUMERIC NOT NULL,
    mh_key                TEXT NOT NULL
);

-- +goose Down
DROP TABLE eth.uncle_cids;
