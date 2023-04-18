USE epl_2022_2023;

## CREATE TEAM_PERFORMANCE TABLE

CREATE TABLE team_performance
(id INT AUTO_INCREMENT PRIMARY KEY,
match_id INT,
team_name varchar(255),
is_home int,
location varchar(255),
opponent varchar(255),
result varchar(10),
score int,
opponent_score int,
substitutions int,
matchweek int,
date_played date,
starters_0 varchar(255),
starters_1 varchar(255),
starters_2 varchar(255),
starters_3 varchar(255),
starters_4 varchar(255),
starters_5 varchar(255),
starters_6 varchar(255),
starters_7 varchar(255),
starters_8 varchar(255),
starters_9 varchar(255),
starters_10 varchar(255),
subs_0 varchar(255),
subs_1 varchar(255),
subs_2 varchar(255),
subs_3 varchar(255),
subs_4 varchar(255),
subs_5 varchar(255),
subs_6 varchar(255),
subs_7 varchar(255),
subs_8 varchar(255),
possession decimal(5, 1),
shots_on_target int,
shots int,
touches int,
passes int,
tackles int,
clearances int,
corners int,
offsides int,
yellow_cards int,
fouls_conceded int,
FOREIGN KEY (match_id) REFERENCES match_data(match_id));

## INITIALLY FILL THE TABLE
INSERT INTO team_performance (match_id, team_name, is_home, location, opponent, result, score, opponent_score, substitutions, matchweek, date_played,
starters_0, starters_1, starters_2, starters_3, starters_4, starters_5, starters_6, starters_7, starters_8, starters_9, starters_10, 
subs_0, subs_1, subs_2, subs_3, subs_4, subs_5, subs_6, subs_7, subs_8, 
possession, shots_on_target, shots, touches, passes, tackles, clearances, corners, offsides, yellow_cards, fouls_conceded)
SELECT match_id, home_name, 1, location, away_name, CASE WHEN winner_home_or_away = "home" THEN "win"
															WHEN winner_home_or_away = "away" THEN "loss"
															WHEN winner_home_or_away = "draw" THEN "draw"
															END,
		home_score, away_score, home_substitutions, matchweek, date_played, home_starters_0, home_starters_1, home_starters_2, home_starters_3,
        home_starters_4, home_starters_5, home_starters_6, home_starters_7, home_starters_8, home_starters_9, home_starters_10,
        home_subs_0, home_subs_1, home_subs_2, home_subs_3, home_subs_4, home_subs_5, home_subs_6, home_subs_7, home_subs_8, 
		home_possession, home_shots_on_target, home_shots, home_touches, home_passes, home_tackles, home_clearances, home_corners, home_offsides,
        home_yellow_cards, home_fouls_conceded
FROM match_data;

INSERT INTO team_performance (match_id, team_name, is_home, location, opponent, result, score, opponent_score, substitutions, matchweek, date_played,
starters_0, starters_1, starters_2, starters_3, starters_4, starters_5, starters_6, starters_7, starters_8, starters_9, starters_10, 
subs_0, subs_1, subs_2, subs_3, subs_4, subs_5, subs_6, subs_7, subs_8, 
possession, shots_on_target, shots, touches, passes, tackles, clearances, corners, offsides, yellow_cards, fouls_conceded)
SELECT match_id, away_name, 0, location, home_name, CASE WHEN winner_home_or_away = "home" THEN "loss"
															WHEN winner_home_or_away = "away" THEN "win"
															WHEN winner_home_or_away = "draw" THEN "draw"
															END,
		away_score, home_score, away_substitutions, matchweek, date_played, away_starters_0, away_starters_1, away_starters_2, away_starters_3,
        away_starters_4, away_starters_5, away_starters_6, away_starters_7, away_starters_8, away_starters_9, away_starters_10,
        away_subs_0, away_subs_1, away_subs_2, away_subs_3, away_subs_4, away_subs_5, away_subs_6, away_subs_7, away_subs_8, 
		away_possession, away_shots_on_target, away_shots, away_touches, away_passes, away_tackles, away_clearances, away_corners, away_offsides,
        away_yellow_cards, away_fouls_conceded
FROM match_data;

## ALTER THE TABLE

ALTER TABLE team_performance
RENAME COLUMN id TO performance_id;

ALTER TABLE team_performance
RENAME COLUMN opponent TO opponent_name;

UPDATE team_performance
SET team_name = "Brighton and Hove Albion"
WHERE team_name = "Brighton & Hove Albion";

UPDATE team_performance
SET opponent_name = "Brighton and Hove Albion"
WHERE opponent_name = "Brighton & Hove Albion";

## TESTING/PLAYING WITH TABLE

SELECT matchweek, date_played, location, result, passes, shots
FROM team_performance
WHERE team_name = "Manchester City"
ORDER BY date_played;