CREATE TABLE IF NOT EXISTS elo (
 eloNum INTEGER,
 elo TEXT NOT NULL PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS campeao (
 campeaoId INTEGER NOT NULL,
 nome TEXT NOT NULL PRIMARY KEY,
 pickrate FLOAT,
 winrate FLOAT,
 posicao1 TEXT,
 posicao2 TEXT,
 posicao3 TEXT
);

CREATE TABLE IF NOT EXISTS jogador (
 summonerId INTEGER PRIMARY KEY,
 nick text NOT NULL,
 elo TEXT NOT NULL,
 pdl INTEGER NOT NULL,
 vitorias INTEGER NOT NULL,
 derrotas INTEGER NOT NULL,
 winrate FLOAT NOT NULL,
 posicao1 TEXT,
 posicao2 TEXT,
	FOREIGN KEY (elo) REFERENCES elo (elo)
);

CREATE TABLE IF NOT EXISTS campeao_jogador (
 campeaoNome TEXT NOT NULL,
 campeaoPref INTEGER NOT NULL,
 summonerId INTEGER NOT NULL,
 partidas INTEGER NOT NULL,
 vitorias INTEGER NOT NULL,
 derrotas INTEGER NOT NULL,
 winrate INTEGER NOT NULL,
 kda FLOAT NOT NULL,
 cs FLOAT NOT NULL,
 ouro INTEGER NOT NULL,
 danoCausado INTEGER NOT NULL,
 danoRecebido INTEGER NOT NULL,
	PRIMARY KEY (summonerId, campeaoNome),
	FOREIGN KEY (summonerId) REFERENCES jogador (summonerId),
	FOREIGN KEY (campeaoNome) REFERENCES campeao (nome)
);


CREATE TABLE IF NOT EXISTS partida (
 gameId INTEGER PRIMARY KEY,
 vitoria INTEGER NOT NULL,
 firstBlood INTEGER NOT NULL,
 firstTower INTEGER NOT NULL,
 firstInhibitor INTEGER NOT NULL,
 firstBaron INTEGER NOT NULL,
 firstDragon INTEGER NOT NULL,
 firstRiftHerald INTEGER NOT NULL,
 t2_baronKills INTEGER NOT NULL,
 t1_baronKills INTEGER NOT NULL,
 t2_dragonKills INTEGER NOT NULL,
 t1_dragonKills INTEGER NOT NULL,
 t2_riftHeraldKills INTEGER NOT NULL,
 t1_riftHeraldKills INTEGER NOT NULL,
 t2_towerKills INTEGER NOT NULL,
 t1_towerKills INTEGER NOT NULL,
 t2_inhibitorKills INTEGER NOT NULL,
 t1_inhibitorKills INTEGER NOT NULL,
 killsRed INTEGER NOT NULL,
 killsBlue INTEGER NOT NULL,
 goldRed INTEGER NOT NULL,
 goldBlue INTEGER NOT NULL
);

 

CREATE TABLE IF NOT EXISTS jogador_partida (
 gameId INTEGER NOT NULL,
 time INTEGER NOT NULL,
 summonerId  INTEGER NOT NULL,
 campeaoNome INTEGER NOT NULL,
 kdaPartida FLOAT NOT NULL,
 danoPartida INTEGER NOT NULL,
 wardsPartida INTEGER NOT NULL,
 csPartida INTEGER NOT NULL,
	FOREIGN KEY (gameId) REFERENCES partida (gameId),
	FOREIGN KEY (summonerId) REFERENCES jogador (summonerId),
	FOREIGN KEY (campeaoNome) REFERENCES campeao (nome)
);