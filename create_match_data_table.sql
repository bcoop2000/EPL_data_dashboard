﻿CREATE TABLE match_data (
    match_id INT,
    winner_home_or_away VARCHAR(10),
    winner_team_name VARCHAR(255),
    home_score INT,
    away_score INT,
    home_substitutions INT,
    away_substitutions INT,
    red_cards INT,
    matchweek INT,
    home_name VARCHAR(255),
    home_starters_0 VARCHAR(255),
    home_starters_1 VARCHAR(255),
    home_starters_2 VARCHAR(255),
    home_starters_3 VARCHAR(255),
    home_starters_4 VARCHAR(255),
    home_starters_5 VARCHAR(255),
    home_starters_6 VARCHAR(255),
    home_starters_7 VARCHAR(255),
    home_starters_8 VARCHAR(255),
    home_starters_9 VARCHAR(255),
    home_starters_10 VARCHAR(255),
    home_subs_0 VARCHAR(255),
    home_subs_1 VARCHAR(255),
    home_subs_2 VARCHAR(255),
    home_subs_3 VARCHAR(255),
    home_subs_4 VARCHAR(255),
    home_subs_5 VARCHAR(255),
    home_subs_6 VARCHAR(255),
    home_subs_7 VARCHAR(255),
    home_subs_8 VARCHAR(255),
    home_possession DECIMAL(5, 1),
    home_shots_on_target INT,
    home_shots INT,
    home_touches INT,
    home_passes INT,
    home_tackles INT,
    home_clearances INT,
    home_corners INT,
    home_offsides INT,
    home_yellow_cards INT,
    home_fouls_conceded INT,
    away_name VARCHAR(255),
    away_starters_0 VARCHAR(255),
    away_starters_1 VARCHAR(255),
    away_starters_2 VARCHAR(255),
    away_starters_3 VARCHAR(255),
    away_starters_4 VARCHAR(255),
    away_starters_5 VARCHAR(255),
    away_starters_6 VARCHAR(255),
    away_starters_7 VARCHAR(255),
    away_starters_8 VARCHAR(255),
    away_starters_9 VARCHAR(255),
    away_starters_10 VARCHAR(255),
    away_subs_0 VARCHAR(255),
    away_subs_1 VARCHAR(255),
    away_subs_2 VARCHAR(255),
    away_subs_3 VARCHAR(255),
    away_subs_4 VARCHAR(255),
    away_subs_5 VARCHAR(255),
    away_subs_6 VARCHAR(255),
    away_subs_7 VARCHAR(255),
    away_subs_8 VARCHAR(255),
    away_possession DECIMAL(5, 1),
    away_shots_on_target INT,
    away_shots INT,
    away_touches INT,
    away_passes INT,
    away_tackles INT,
    away_clearances INT,
    away_corners INT,
    away_offsides INT,
    away_yellow_cards INT,
    away_fouls_conceded INT
);
