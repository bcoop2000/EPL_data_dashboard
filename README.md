# EPL_data_dashboard
Made a dashboard using MySQL and game data from the 2022/23 Premier League season. Will update with second half of season stats when they come in. Used MySQL for database, Power BI for visuals, and Excel for .csv files.

## Data source and conversion:
The data was sourced from Kaggle: https://www.kaggle.com/datasets/acothaha/epl-dataset-20222023-update-every-week?select=epl_2022_2023_07_02_2023.json, provided by ABDURRAHMAN SHIDDIQ THAHA. The dataset was in JSON format, which was then converted to CSV using the online tool: https://www.convertcsv.com/json-to-csv.htm.

## Project Setup/Layout:

### Folders:

&rarr; Data

Contains all the .txt and .csv files for the imports into the MySQL database.

&rarr; MySQL code

Contains all the MySQL scripts and the workbench file for initializing and populating the Database.

&rarr; Final Dashboard Images

Contains the screenshots of the Power BI pages. The Power BI page can't be published or exported without paying for an account so these screenshots are the best way to show the results of this project.

## Workflow Summary

### Data structure and initial grooming:
The original CSV had 254 columns and 210 rows. Several issues were identified, such as misrecorded data related to red cards and other statistics. These issues were fixed manually.

### Creating new variables from "events variables":
New variables were derived from the textual data representing key events in the matches. These variables include:

Team scores
Team substitutions
Red cards
Winner
Winner_home_or_away

### Renaming variables and formatting:
Several changes were made to the variable names and formats to make the data more consistent and easier to understand. Some examples include:

Changing "startings" to "starters"
Replacing "team1" with "home" and "team2" with "away"
Correcting "tackels" to "tackles"
Replacing "possession_%" with "possession" and "foul" with "fouls"
Loading the CSV into MySQL:
To import the cleaned CSV into MySQL, the file was first opened in Notepad and saved with ANSI encoding. Then, the "initialize_epl_2022_2023_database.sql" file was used to create a database and data table in MySQL.

### Creating additional tables:
Two more tables were created to facilitate further analysis:

Table Team_performance: This table was created to make it easier to analyze team-level performance in each match. The SQL script "create_team_performance_table" was used to generate this table.
Table Player_info: This table contains player information and was created using the "create_player_info.sql" script.
Merging new data:
A separate table containing variables for stadium and date/time of each match was obtained from https://fixturedownload.com/results/epl-2022. The CSV file was prepared for import and merged with the existing data.

### Visualizing the data:
Power BI was used to create the "Team Performance by Matchweek" dashboard, which offers an interactive view of key match statistics. The dashboard includes:

A table showing match details such as matchweek, opponent, date, location, result, goals scored and conceded, passes, possession, shots, and shots on target.
Three visuals representing shooting, possession, and overall performance (measured in goal difference) broken down by matchweek.
Users can filter the dashboard by any variable from the Team_performance table, allowing for more in-depth analysis by selecting a specific team, location, or result.
