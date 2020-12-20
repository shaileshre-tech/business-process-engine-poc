create table USERS(
  USERNAME varchar(50) not null,
  PASSWORD varchar(200) not null,
  ENABLED boolean not null,
  constraint USERS_PK
    primary key (USERNAME)
);
create table AUTHORITIES(
  USERNAME varchar(50) not null,
  AUTHORITY varchar(50) not null
);
create unique index IX_AUTH_USERNAME on AUTHORITIES(
  USERNAME,
  AUTHORITY
);
create table PERSISTENT_LOGINS(
  USERNAME varchar(64) not null,
  SERIES varchar(64) not null,
  TOKEN varchar(64) not null,
  LAST_USED timestamp not null,
  constraint PERSISTENT_LOGINS_PK
    primary key (SERIES)
);
create table SPRING_SESSION(
  PRIMARY_ID char(36) not null,
  SESSION_ID char(36) not null,
  CREATION_TIME bigint not null,
  LAST_ACCESS_TIME bigint not null,
  MAX_INACTIVE_INTERVAL int not null,
  EXPIRY_TIME bigint not null,
  PRINCIPAL_NAME varchar(100) null,
  constraint SPRING_SESSION_PK
    primary key (PRIMARY_ID)
);
create unique index SPRING_SESSION_IX1 on SPRING_SESSION(SESSION_ID);
create index SPRING_SESSION_IX2 on SPRING_SESSION(EXPIRY_TIME);
create index SPRING_SESSION_IX3 on SPRING_SESSION(PRINCIPAL_NAME);
create table SPRING_SESSION_ATTRIBUTES(
  SESSION_PRIMARY_ID char(36) not null,
  ATTRIBUTE_NAME varchar(200) not null,
  ATTRIBUTE_BYTES blob not null,
  constraint SPRING_SESSION_ATTRIBUTES_PK
    primary key (
      SESSION_PRIMARY_ID,
      ATTRIBUTE_NAME
    ),
  constraint SPRING_SESSION_ATTRIBUTES_FK
    foreign key (SESSION_PRIMARY_ID)
    references SPRING_SESSION (PRIMARY_ID) on delete cascade
);