CREATE TABLE SERVICES_CARD_SHEDLOCK
(
    NAME       VARCHAR(64),
    LOCK_UNTIL TIMESTAMP(3) NULL,
    LOCKED_AT  TIMESTAMP(3) NULL,
    LOCKED_BY  VARCHAR(255),
    CONSTRAINT SERVICES_CARD_SHEDLOCK_PK PRIMARY KEY (NAME) USING INDEX TABLESPACE API_SERVICES_CARD_IDX
);
CREATE TABLE SERVICES_CARD_EVENT
(
    EVENT_ID      RAW(16)                             NOT NULL,
    EVENT_PAYLOAD VARCHAR2(4000)                      NOT NULL,
    EVENT_STATUS  VARCHAR2(200)                        NOT NULL,
    EVENT_TYPE    VARCHAR2(200)                        NOT NULL,
    SAGA_ID       RAW(16),
    EVENT_OUTCOME VARCHAR2(200)                        NOT NULL,
    REPLY_CHANNEL VARCHAR2(200),
    CREATE_USER   VARCHAR(32)                         NOT NULL,
    CREATE_DATE   timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
    UPDATE_USER   VARCHAR(32)                         NOT NULL,
    UPDATE_DATE   timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
    CONSTRAINT SERVICES_CARD_EVENT_PK PRIMARY KEY (EVENT_ID) USING INDEX TABLESPACE API_SERVICES_CARD_IDX
);