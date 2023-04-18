USE epl_2022_2023;

## CREATE PLAYER_INFO TABLE

CREATE TABLE player_info
(player_id int,
player_name varchar(255),
team_name varchar(255),
birthday date,
position varchar(10));

# FILLED WITH "player_info_ansi.csv" USING IMPORT WIZARD

## TESTING/PLAYING WITH TABLE

SELECT * FROM player_info WHERE birthday > "2006-01-01";