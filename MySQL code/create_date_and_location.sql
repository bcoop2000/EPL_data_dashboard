USE epl_2022_2023;

## Create date_and_location table

CREATE TABLE date_and_location
(matchweek int,
date_played varchar(255),
location varchar(255),
home_team varchar(255),
away_team varchar(255));

# Import table from "date_and_location.csv" using import wizard

## Alter Table

ALTER TABLE date_and_location
ADD new_date_column DATE;

UPDATE date_and_location
SET new_date_column = STR_TO_DATE(date_played, '%d/%m/%Y');

ALTER TABLE date_and_location
DROP date_played;

ALTER TABLE date_and_location
RENAME COLUMN new_date_column TO date_played;

## Add to match_data table

ALTER TABLE match_data
ADD location varchar(255);

ALTER TABLE match_data
ADD date_played DATE;

UPDATE match_data
JOIN date_and_location
ON match_data.home_name = date_and_location.home_team
AND match_data.away_name = date_and_location.away_team
SET match_data.date_played = date_and_location.date_played,
    match_data.location = date_and_location.location;

UPDATE match_data
JOIN date_and_location
ON match_data.home_name = date_and_location.home_team
AND match_data.away_name = date_and_location.away_team
SET match_data.matchweek = date_and_location.matchweek;
