CREATE TABLE IF NOT EXISTS elo (
 eloNum INTEGER,
 elo TEXT NOT NULL PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS campeao (
 campeaoId INTEGER NOT NULL,
 nome TEXT NOT NULL,
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
 campeaoId INTEGER NOT NULL,
 summonerId INTEGER NOT NULL,
 partidas INTEGER NOT NULL,
 winrate INTEGER NOT NULL,
 cs FLOAT NOT NULL,
 ouro INTEGER NOT NULL,
 danoCausado INTEGER NOT NULL,
 danoRecebido INTEGER NOT NULL,
	PRIMARY KEY (summonerId, campeaoId),
	FOREIGN KEY (summonerId) REFERENCES jogador (summonerId),
	FOREIGN KEY (campeaoId) REFERENCES campeao (campeaoId)
);


CREATE TABLE IF NOT EXISTS partida (
 gameId INTEGER PRIMARY KEY,
 vitoria INTEGER NOT NULL,
 baroesRed INTEGER NOT NULL,
 baroesBlue INTEGER NOT NULL,
 dragoesRed INTEGER NOT NULL,
 dragoesBlue INTEGER NOT NULL,
 torresRed INTEGER NOT NULL,
 torresBlue INTEGER NOT NULL,
 killsRed INTEGER NOT NULL,
 killsBlue INTEGER NOT NULL,
 ouroRed INTEGER NOT NULL,
 ouroBlue INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS jogador_partida (
 gameId INTEGER NOT NULL,
 summonerId  INTEGER NOT NULL,
 campeaoId INTEGER NOT NULL,
 kdaPartida FLOAT NOT NULL,
 danoPartida INTEGER NOT NULL,
 wardsPartida INTEGER NOT NULL,
 csPartida INTEGER NOT NULL,
	FOREIGN KEY (gameId) REFERENCES partida (gameId),
	FOREIGN KEY (summonerId) REFERENCES jogador (summonerId)
);