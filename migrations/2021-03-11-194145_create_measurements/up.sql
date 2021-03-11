create table measurements
(
    uuid           binary(16)                                               not null primary key default (UUID_TO_BIN(UUID())),
    id             char(36) generated always as (BIN_TO_UUID(uuid)) virtual not null,

    humidity       float                                                    not null,
    temperature    float                                                    not null,
    carbon_dioxide float                                                    not null,

    created_at     timestamp                                                not null             default current_timestamp,
    updated_at     timestamp                                                null
);