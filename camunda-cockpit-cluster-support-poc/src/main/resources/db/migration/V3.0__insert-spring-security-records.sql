INSERT INTO USERS (USERNAME, PASSWORD, ENABLED) VALUES ('kermit', '{bcrypt}$2a$10$t2ON9NMlmTqMwkDAdpznG.ZY0fGInGYmN37Y1HN2azVApR3uVnk.G', true);

INSERT INTO AUTHORITIES (USERNAME, AUTHORITY) VALUES ('kermit', 'ROLE_ACTUATOR');
INSERT INTO AUTHORITIES (USERNAME, AUTHORITY) VALUES ('kermit', 'ROLE_camunda-admin');