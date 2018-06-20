
/* Creamos algunos usuarios con sus roles no se necesita agregar el id, se hace automatico en la bd*/
INSERT INTO usuario (username, clave, email, fecha_creacion, ultimo_acceso,estatus) VALUES ('master','$2a$10$O9wxmH/AeyZZzIS09Wp8YOEMvFnbRVJ8B4dmAMVSGloR62lj.yqXG','master@webq.com',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,TRUE);
INSERT INTO usuario (username, clave, email, fecha_creacion, ultimo_acceso,estatus) VALUES ('admin','$2a$10$DOMDxjYyfZ/e7RcBfUpzqeaCs8pLgcizuiQWXPkU35nOhZlFcE9MS','admin@webq.com',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,TRUE);
INSERT INTO usuario (username, clave, email, fecha_creacion, ultimo_acceso,estatus) VALUES ('usuario','$2a$10$DOMDxjYyfZ/e7RcBfUpzqeaCs8pLgcizuiQWXPkU35nOhZlFcE9MS','usuario@webq.com',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,TRUE);
INSERT INTO usuario (username, clave, email, fecha_creacion, ultimo_acceso,estatus) VALUES ('Alfred','$2a$10$DOMDxjYyfZ/e7RcBfUpzqeaCs8pLgcizuiQWXPkU35nOhZlFcE9MS','alfredjm.02@gmail.com',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,TRUE);
INSERT INTO usuario (username, clave, email, fecha_creacion, ultimo_acceso,estatus) VALUES ('Karen','$2a$10$DOMDxjYyfZ/e7RcBfUpzqeaCs8pLgcizuiQWXPkU35nOhZlFcE9MS','kareng27@gmail.com',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,TRUE);
INSERT INTO usuario (username, clave, email, fecha_creacion, ultimo_acceso,estatus) VALUES ('MarioMario','$2a$10$DOMDxjYyfZ/e7RcBfUpzqeaCs8pLgcizuiQWXPkU35nOhZlFcE9MS','MarioM@yahoo.com',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,TRUE);
INSERT INTO usuario (username, clave, email, fecha_creacion, ultimo_acceso,estatus) VALUES ('LuigiMario','$2a$10$DOMDxjYyfZ/e7RcBfUpzqeaCs8pLgcizuiQWXPkU35nOhZlFcE9MS','LuigiM@hotmail.com',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,TRUE);
/*Cuenta master*/
INSERT INTO rol (usuario_id, authority) VALUES (1, 'ROLE_MASTER');
INSERT INTO rol (usuario_id, authority) VALUES (1,'ROLE_ADMIN');
/*Cuenta admin*/
INSERT INTO rol (usuario_id, authority) VALUES (2,'ROLE_ADMIN');
INSERT INTO rol (usuario_id, authority) VALUES (2,'ROLE_USER');
/*Cuenta user*/
INSERT INTO rol (usuario_id, authority) VALUES (3,'ROLE_USER');
/*Cuenta Alfred*/
INSERT INTO rol (usuario_id, authority) VALUES (4,'ROLE_ADMIN');
INSERT INTO rol (usuario_id, authority) VALUES (4,'ROLE_USER');
/*Cuenta Karen*/
INSERT INTO rol (usuario_id, authority) VALUES (5,'ROLE_USER');
/*Cuenta MarioMario*/
INSERT INTO rol (usuario_id, authority) VALUES (6,'ROLE_USER');
/*Cuenta LuigiMario*/
INSERT INTO rol (usuario_id, authority) VALUES (7,'ROLE_USER');


/* Creamos algunas disciplinas y equipos*/
INSERT INTO disciplina (nombre, estatus, fechayhora) VALUES ('Beisbol', TRUE, CURRENT_TIMESTAMP);
INSERT INTO disciplina (nombre, estatus, fechayhora) VALUES ('Futbol', TRUE, CURRENT_TIMESTAMP);
INSERT INTO disciplina (nombre, estatus, fechayhora) VALUES ('Baloncesto', FALSE, CURRENT_TIMESTAMP);
INSERT INTO disciplina (nombre, estatus, fechayhora) VALUES ('Tennis', FALSE, CURRENT_TIMESTAMP);

/*FIFA WC*/
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Alemania', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Arabia Saudi', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Argentina', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Australia', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Bélgica', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Brasil', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Colombia', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Costa Rica', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Croacia', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Dinamarca', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Egipto', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('España', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Francia', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Inglaterra', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Islandia', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Japon', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Marruecos', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('México', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Nigeria', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Panamá', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Perú', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Polonia', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Portugal', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('República de Korea', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Irán', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Rusia', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Senegal', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Serbia', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Suecia', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Suiza', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Túnez', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Uruguay', CURRENT_TIMESTAMP, TRUE, '');
/*MLB*/
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Orioles de Baltimore', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Medias Rojas de Boston', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Yankees de Nueva York', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Rays de Tampa Bay', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Azulejos de Toronto', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Bravos de Atlanta', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Marlins de Miami', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Mets de Nueva York', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Phillies de Philadelphia', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Washington Nationals', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Medias Blancas de Chicago', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Indios de Cleveland', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Tigres de Detroit', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Kansas City Royals', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Mellizos de Minnesota', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Cachorros de Chicago', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Rojos de Cincinnati', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Cerveceros de Milwaukee', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Piratas de Pittsburg', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Cardenales de San Luis', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Astros de Houston', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Angelinos de Los Angeles', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Atleticos de Oakland', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Marineros de Seattle', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Rangers de Texas', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Diamondbacks de Arizona', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Rockies de Colorado', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Dodgers de Los Angeles', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Padres de San Diego', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Gigantes de San Francisco', CURRENT_TIMESTAMP, TRUE, '');
/*NBA*/
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Celtas de Boston', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Brooklin Nets', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('New York Knicks', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Philadelphia 76ers', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Toronto Raptors', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Golden State Warriors', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('LA Clippers', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Los Angeles Lakers', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Phoenix Suns', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Sacramento Kings', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Chicago Bulls', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Cleveland Cavaliers', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Detroit Pistons', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Indiana Pacers', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Milwaukee Bucks', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Dallas Mavericks', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Houston Rockets', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Memphis Grizzlies', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('New Orleans Pelicans', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('San Antonio Spurs', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Atlanta Hawks', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Charlotte Hornets', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Miami Heat', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Olando Magic', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Washington Wizards', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Denver Nuggets', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Minnesota Timberwolves', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Oklahoma City Thunder', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Portland Trail Blazers', CURRENT_TIMESTAMP, TRUE, '');
INSERT INTO equipo (nombre, fechayhora, estatus, logo) VALUES ('Utah Jazz', CURRENT_TIMESTAMP, TRUE, '');

/*Relacion muchos a muchos equipo_disciplina*/
/*FIFA WC 2018*/
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (1,2);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (2,2);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (3,2);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (4,2);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (5,2);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (6,2);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (7,2);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (8,2);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (9,2);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (10,2);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (11,2);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (12,2);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (13,2);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (14,2);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (15,2);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (16,2);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (17,2);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (18,2);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (19,2);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (20,2);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (21,2);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (22,2);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (23,2);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (24,2);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (25,2);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (26,2);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (27,2);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (28,2);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (29,2);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (30,2);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (31,2);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (32,2);
/*MLB*/
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (33,1);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (34,1);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (35,1);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (36,1);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (37,1);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (38,1);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (39,1);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (40,1);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (41,1);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (42,1);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (43,1);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (44,1);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (45,1);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (46,1);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (47,1);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (48,1);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (49,1);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (50,1);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (51,1);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (52,1);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (53,1);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (54,1);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (55,1);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (56,1);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (57,1);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (58,1);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (59,1);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (60,1);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (61,1);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (62,1);
/*NBA*/
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (63,3);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (64,3);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (65,3);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (66,3);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (67,3);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (68,3);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (69,3);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (70,3);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (71,3);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (72,3);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (73,3);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (74,3);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (75,3);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (76,3);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (77,3);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (78,3);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (79,3);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (80,3);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (81,3);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (82,3);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (83,3);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (84,3);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (85,3);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (86,3);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (87,3);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (88,3);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (89,3);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (90,3);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (91,3);
INSERT INTO equipo_disciplina (equipo_id, disciplina_id) VALUES (92,3);

/*ALGUNAS QUINIELAS Y SUS REGLAMENTOS Y FASES*/
/*QUINIELA FIFA WC 2018*/
INSERT INTO quiniela (nombre, fecha_inicio, fecha_final, administrador, estatus, fechayhora, esprivada) VALUES ('FIFA WC 2018', '2018/06/14 18:00:00.00', NULL, 2, TRUE, now(), FALSE);
INSERT INTO quiniela (nombre, fecha_inicio, fecha_final, administrador, estatus, fechayhora, esprivada) VALUES ('FIFA WC 2018', '2018/06/14 18:00:00.00', NULL, 4, TRUE, now(), TRUE);
/*REGLAMENTOS*/
INSERT INTO reglamento (quiniela_id, descripcion, puntaje_score, puntaje_ganador, puntaje_empate) VALUES (1,'10 puntos por cada score acertado, 7 puntos por acertar el ganador, 3 puntos por acertar el empate', 10,7,3);
INSERT INTO reglamento (quiniela_id, descripcion, puntaje_score, puntaje_ganador, puntaje_empate) VALUES (2,'5 puntos por cada score acertado, 1 puntos por acertar el ganador, 4 puntos por acertar el empate', 5,1,4);

/*AGREGAMOS ALGUNOS PARTICIPANTES */
/*cuenta admin quiniela publica fifa wc 2018*/
INSERT INTO usuario_quiniela(usuario_id, quiniela_id) VALUES (2,1);
/*cuenta user quiniela publica fifa wc 2018*/
INSERT INTO usuario_quiniela(usuario_id, quiniela_id) VALUES (3,1);
/*cuenta Alfred quiniela privada fifa wc 2018*/
INSERT INTO usuario_quiniela(usuario_id, quiniela_id) VALUES (4,2);
/*cuenta Karen quiniela publica fifa wc 2018*/
INSERT INTO usuario_quiniela(usuario_id, quiniela_id) VALUES (5,1);
/*cuenta MarioMario quiniela publica fifa wc 2018*/
INSERT INTO usuario_quiniela(usuario_id, quiniela_id) VALUES (6,1);
/*cuenta MarioMario quiniela privada fifa wc 2018*/
INSERT INTO usuario_quiniela(usuario_id, quiniela_id) VALUES (6,2);
/*cuenta LuigiMario quiniela privada fifa wc 2018*/
INSERT INTO usuario_quiniela(usuario_id, quiniela_id) VALUES (7,2);


/*AGREGAMOS ALGUNAS FASES Y JUEGOS*/
INSERT INTO fase (nombre, fechayhora) VALUES ('Fase de grupos quiniela publica', now());
INSERT INTO fase (nombre, fechayhora) VALUES ('Fase de grupos quiniela privada',now());

/*AGREGAMOS LOS EQUIPOS DE LA FASE DE GRUPOS DE LA QUINIELA PUBLICA*/
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (1,1);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (1,2);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (1,3);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (1,4);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (1,5);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (1,6);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (1,7);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (1,8);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (1,9);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (1,10);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (1,11);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (1,12);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (1,13);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (1,14);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (1,15);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (1,16);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (1,17);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (1,18);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (1,19);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (1,20);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (1,21);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (1,22);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (1,23);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (1,24);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (1,25);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (1,26);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (1,27);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (1,28);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (1,29);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (1,30);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (1,31);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (1,32);

/*AGREGAMOS LOS EQUIPOS DE LA FASE DE GRUPOS DE LA QUINIELA PRIVADA*/
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (2,1);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (2,2);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (2,3);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (2,4);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (2,5);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (2,6);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (2,7);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (2,8);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (2,9);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (2,10);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (2,11);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (2,12);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (2,13);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (2,14);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (2,15);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (2,16);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (2,17);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (2,18);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (2,19);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (2,20);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (2,21);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (2,22);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (2,23);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (2,24);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (2,25);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (2,26);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (2,27);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (2,28);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (2,29);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (2,30);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (2,31);
INSERT INTO equipo_fase (fase_id, equipo_id) VALUES (2,32);

/*AGREGAMOS LOS JUEGOS DE LA QUINIELA PUBLICA JUEGOS DEL 1 AL 48*/

INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (1,5,0,'2018/06/14 18:00:00',now());

INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (1,0,1,'2018/06/15 17:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (1,0,1,'2018/06/15 18:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (1,3,3,'2018/06/15 21:00:00',now());

INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (1,2,1,'2018/06/16 13:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (1,1,1,'2018/06/16 16:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (1,0,1,'2018/06/16 19:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (1,2,0,'2018/06/16 21:00:00',now());

INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (1,0,1,'2018/06/17 16:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (1,0,1,'2018/06/17 18:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (1,1,1,'2018/06/17 21:00:00',now());

INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (1,1,0,'2018/06/18 15:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (1,3,0,'2018/06/18 18:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (1,1,2,'2018/06/18 21:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (1,1,2,'2018/06/19 15:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (1,1,2,'2018/06/19 18:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (1,3,1,'2018/06/19 21:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (1,1,0,'2018/06/20 15:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (1,NULL,NULL,'2018/06/20 18:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (1,NULL,NULL,'2018/06/20 21:00:00',now());

INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (1,NULL,NULL,'2018/06/21 16:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (1,NULL,NULL,'2018/06/21 20:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (1,NULL,NULL,'2018/06/21 21:00:00',now());

INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (1,NULL,NULL,'2018/06/22 15:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (1,NULL,NULL,'2018/06/22 18:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (1,NULL,NULL,'2018/06/22 20:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (1,NULL,NULL,'2018/06/23 15:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (1,NULL,NULL,'2018/06/23 18:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (1,NULL,NULL,'2018/06/23 21:00:00',now());

INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (1,NULL,NULL,'2018/06/24 15:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (1,NULL,NULL,'2018/06/24 20:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (1,NULL,NULL,'2018/06/24 21:00:00',now());

INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (1,NULL,NULL,'2018/06/25 18:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (1,NULL,NULL,'2018/06/25 17:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (1,NULL,NULL,'2018/06/25 20:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (1,NULL,NULL,'2018/06/25 21:00:00',now());

INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (1,NULL,NULL,'2018/06/26 17:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (1,NULL,NULL,'2018/06/26 17:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (1,NULL,NULL,'2018/06/26 21:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (1,NULL,NULL,'2018/06/26 21:00:00',now());

INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (1,NULL,NULL,'2018/06/27 17:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (1,NULL,NULL,'2018/06/27 19:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (1,NULL,NULL,'2018/06/27 21:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (1,NULL,NULL,'2018/06/27 21:00:00',now());

INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (1,NULL,NULL,'2018/06/28 17:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (1,NULL,NULL,'2018/06/28 18:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (1,NULL,NULL,'2018/06/28 21:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (1,NULL,NULL,'2018/06/28 20:00:00',now());

/*AGREGAMOS LOS JUEGOS DE LA QUINIELA PRIVADA JUEGOS DEL 49 AL 88*/

INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (2,5,0,'2018/06/14 18:00:00',now());

INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (2,0,1,'2018/06/15 17:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (2,0,1,'2018/06/15 18:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (2,3,3,'2018/06/15 21:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (2,2,1,'2018/06/16 13:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (2,1,1,'2018/06/16 16:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (2,0,1,'2018/06/16 19:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (2,2,0,'2018/06/16 21:00:00',now());

INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (2,0,1,'2018/06/17 16:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (2,0,1,'2018/06/17 18:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (2,1,1,'2018/06/17 21:00:00',now());

INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (2,1,0,'2018/06/18 15:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (2,3,0,'2018/06/18 18:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (2,1,2,'2018/06/18 21:00:00',now());

INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (2,1,2,'2018/06/19 15:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (2,1,2,'2018/06/19 18:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (2,3,1,'2018/06/19 21:00:00',now());

INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (2,1,0,'2018/06/20 15:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (2,NULL,NULL,'2018/06/20 18:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (2,NULL,NULL,'2018/06/20 21:00:00',now());

INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (2,NULL,NULL,'2018/06/21 16:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (2,NULL,NULL,'2018/06/21 20:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (2,NULL,NULL,'2018/06/21 21:00:00',now());

INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (2,NULL,NULL,'2018/06/22 15:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (2,NULL,NULL,'2018/06/22 18:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (2,NULL,NULL,'2018/06/22 20:00:00',now());

INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (2,NULL,NULL,'2018/06/23 15:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (2,NULL,NULL,'2018/06/23 18:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (2,NULL,NULL,'2018/06/23 21:00:00',now());

INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (2,NULL,NULL,'2018/06/24 15:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (2,NULL,NULL,'2018/06/24 20:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (2,NULL,NULL,'2018/06/24 21:00:00',now());

INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (2,NULL,NULL,'2018/06/25 18:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (2,NULL,NULL,'2018/06/25 17:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (2,NULL,NULL,'2018/06/25 20:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (2,NULL,NULL,'2018/06/25 21:00:00',now());

INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (2,NULL,NULL,'2018/06/26 17:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (2,NULL,NULL,'2018/06/26 17:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (2,NULL,NULL,'2018/06/26 21:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (2,NULL,NULL,'2018/06/26 21:00:00',now());

INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (2,NULL,NULL,'2018/06/27 17:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (2,NULL,NULL,'2018/06/27 19:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (2,NULL,NULL,'2018/06/27 21:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (2,NULL,NULL,'2018/06/27 21:00:00',now());

INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (2,NULL,NULL,'2018/06/28 17:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (2,NULL,NULL,'2018/06/28 18:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (2,NULL,NULL,'2018/06/28 21:00:00',now());
INSERT INTO juego (fase_id, score_final_a, score_final_b, fechayhorajuego, fechayhora) VALUES (2,NULL,NULL,'2018/06/28 20:00:00',now());

/*AGREGAMOS LOS PRONOSTICOS*/
/*Pronosticos de admin PUBLICA (usuario_quiniela_id = 1)*/
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (1,1,5,2,'a',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (1,2,0,0,'e',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (1,3,0,1,'b',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (1,4,1,1,'e',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (1,5,0,1,'b',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (1,6,2,2,'e',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (1,7,0,2,'b',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (1,8,0,1,'b',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (1,9,0,1,'b',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (1,10,3,0,'a',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (1,11,1,0,'a',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (1,12,1,0,'a',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (1,13,2,0,'a',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (1,14,2,1,'a',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (1,15,0,1,'b',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (1,16,1,1,'e',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (1,17,2,0,'a',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (1,18,1,0,'a',now());

/*Pronosticos de user PUBLICA (usuario_quiniela_id = 2)*/

INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (2,1,5,0,'a',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (2,2,0,1,'b',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (2,3,0,1,'b',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (2,4,3,3,'e',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (2,5,2,1,'a',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (2,6,1,1,'e',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (2,7,0,1,'b',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (2,8,2,0,'a',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (2,9,0,1,'b',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (2,10,0,1,'b',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (2,11,1,1,'e',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (2,12,1,0,'a',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (2,13,3,0,'a',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (2,14,1,2,'b',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (2,15,1,2,'b',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (2,16,1,2,'b',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (2,17,3,1,'a',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (2,18,1,0,'a',now());

/*Pronosticos de Alfred PRIVADA (usuario_quiniela_id = 3)*/
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (3,49,2,1,'a',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (3,50,0,1,'b',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (3,51,0,1,'b',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (3,52,2,1,'a',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (3,53,1,0,'a',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (3,54,1,1,'e',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (3,55,0,2,'b',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (3,56,0,2,'b',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (3,57,0,2,'b',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (3,58,1,0,'a',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (3,59,1,0,'a',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (3,60,1,0,'a',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (3,61,1,1,'e',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (3,62,1,3,'b',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (3,63,2,3,'b',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (3,64,1,1,'e',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (3,65,3,2,'a',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (3,66,1,0,'a',now());

/*Pronosticos de Karen PUBLICA (usuario_quiniela_id = 4)*/
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (4,1,2,0,'a',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (4,2,0,2,'b',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (4,3,0,3,'b',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (4,4,2,2,'e',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (4,5,3,1,'a',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (4,6,0,0,'e',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (4,7,0,3,'b',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (4,8,1,0,'a',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (4,9,0,2,'b',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (4,10,0,1,'b',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (4,11,2,2,'e',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (4,12,3,0,'a',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (4,13,1,3,'b',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (4,14,0,1,'b',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (4,15,0,1,'b',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (4,16,2,1,'a',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (4,17,2,0,'a',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (4,18,2,2,'e',now());

/*Pronosticos de MarioMario PUBLICA (usuario_quiniela_id = 5)*/
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (5,1,3,0,'a',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (5,2,0,1,'b',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (5,3,2,2,'e',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (5,4,0,1,'b',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (5,5,2,2,'e',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (5,6,0,0,'e',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (5,7,1,0,'a',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (5,8,1,2,'b',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (5,9,1,2,'b',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (5,10,3,0,'a',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (5,11,2,1,'a',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (5,12,2,1,'a',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (5,13,1,0,'a',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (5,14,1,0,'a',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (5,15,3,2,'a',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (5,16,1,0,'a',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (5,17,2,2,'e',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (5,18,1,0,'a',now());

/*Pronosticos de MarioMario PRIVADA (usuario_quiniela_id = 6)*/
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (6,49,3,0,'a',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (6,50,0,1,'b',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (6,51,2,2,'e',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (6,52,0,1,'b',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (6,53,2,2,'e',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (6,54,0,0,'e',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (6,55,1,0,'a',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (6,56,1,2,'b',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (6,57,1,2,'b',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (6,58,3,0,'a',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (6,59,2,1,'a',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (6,60,2,1,'a',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (6,61,1,0,'a',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (6,62,1,0,'a',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (6,63,3,2,'a',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (6,64,1,0,'a',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (6,65,2,2,'e',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (6,66,1,0,'a',now());

/*Pronosticos de LuigiMario PRIVADA (usuario_quiniela_id = 7)*/
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (7,49,3,0,'a',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (7,50,0,1,'b',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (7,51,2,2,'e',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (7,52,0,1,'b',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (7,53,2,2,'e',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (7,54,0,0,'e',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (7,55,1,0,'a',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (7,56,1,2,'b',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (7,57,1,2,'b',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (7,58,3,0,'a',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (7,59,2,1,'a',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (7,60,2,1,'a',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (7,61,1,0,'a',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (7,62,1,0,'a',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (7,63,3,2,'a',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (7,64,1,0,'a',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (7,65,2,2,'e',now());
INSERT INTO pronostico (usuario_quiniela_id, juego_id, pronostico_a, pronostico_b, ganador, fechayhora) VALUES (7,66,1,0,'a',now());

/*SOLICITUDES DE ADMIN*/
INSERT INTO solicitud (tipo,emisor,receptor,mensaje,fechayhora,estatus) VALUES ('Solicitud de administrador', 7,1,'Hola, concedame el permiso de admnistrador de quinielas', now(),FALSE);
INSERT INTO solicitud (tipo,emisor,receptor,mensaje,fechayhora,estatus) VALUES ('Solicitud de administrador', 5,1,'Hola, concedame el permiso de admnistrador de quinielas', now(),TRUE);

INSERT INTO solicitud (tipo,emisor,receptor,mensaje,fechayhora,estatus) VALUES ('Consulta a administrador admin',5,4,'Hola permitame el acceso a la quiniela privada de la FIFA WC 2018',now(),FALSE);