CREATE DATABASE epl_2022_2023;

USE epl_2022_2023;

## CREATE MATCH_DATA TABLE (MAIN TABLE)

CREATE TABLE match_data 
(match_id int primary key,
winner_home_or_away varchar(10),
winner_team_name varchar(255),
home_score int,
away_score int,
home_substitutions int,
away_substitutions int,
red_cards int,
matchweek int,
home_name varchar(255),
home_starters_0 varchar(255),
home_starters_1 varchar(255),
home_starters_2 varchar(255),
home_starters_3 varchar(255),
home_starters_4 varchar(255),
home_starters_5 varchar(255),
home_starters_6 varchar(255),
home_starters_7 varchar(255),
home_starters_8 varchar(255),
home_starters_9 varchar(255),
home_starters_10 varchar(255),
home_subs_0 varchar(255),
home_subs_1 varchar(255),
home_subs_2 varchar(255),
home_subs_3 varchar(255),
home_subs_4 varchar(255),
home_subs_5 varchar(255),
home_subs_6 varchar(255),
home_subs_7 varchar(255),
home_subs_8 varchar(255),
home_possession decimal(5, 1),
home_shots_on_target int,
home_shots int,
home_touches int,
home_passes int,
home_tackles int,
home_clearances int,
home_corners int,
home_offsides int,
home_yellow_cards int,
home_fouls_conceded int,
away_name varchar(255),
away_starters_0 varchar(255),
away_starters_1 varchar(255),
away_starters_2 varchar(255),
away_starters_3 varchar(255),
away_starters_4 varchar(255),
away_starters_5 varchar(255),
away_starters_6 varchar(255),
away_starters_7 varchar(255),
away_starters_8 varchar(255),
away_starters_9 varchar(255),
away_starters_10 varchar(255),
away_subs_0 varchar(255),
away_subs_1 varchar(255),
away_subs_2 varchar(255),
away_subs_3 varchar(255),
away_subs_4 varchar(255),
away_subs_5 varchar(255),
away_subs_6 varchar(255),
away_subs_7 varchar(255),
away_subs_8 varchar(255),
away_possession decimal(5, 1),
away_shots_on_target int,
away_shots int,
away_touches int,
away_passes int,
away_tackles int,
away_clearances int,
away_corners int,
away_offsides int,
away_yellow_cards int,
away_fouls_conceded int);

# FILLED WITH "epl_2022_2023_ansi.csv" USING IMPORT WIZARD

## ALTER TABLE

UPDATE match_data
SET home_name = "Brighton and Hove Albion"
WHERE home_name = "Brighton & Hove Albion";

UPDATE match_data
SET away_name = "Brighton and Hove Albion"
WHERE away_name = "Brighton & Hove Albion";


## TESTING/PLAYING WITH TABLE

SELECT matchweek, home_name, away_name, date_played, location, home_score, away_score FROM match_data;