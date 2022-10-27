USE final_project;
CREATE OR REPLACE VIEW fantasy_greater_avg_touchdown AS
SELECT CONCAT(players_fname, " ", players_lname) AS player_name, team_name, 
touchdowns
FROM fantasy
JOIN players USING (players_id)
JOIN teams USING (teams_id)
WHERE touchdowns >
(
SELECT AVG(touchdowns)
FROM fantasy
WHERE (touchdowns > 0)
);
CREATE OR REPLACE VIEW super_bowl_count AS
SELECT team_name, COUNT(super_bowl_id) AS times
FROM teams_has_super_bowl
JOIN teams USING (teams_id)
JOIN super_bowl USING (super_bowl_id)
GROUP BY team_name
ORDER BY team_name;
CREATE OR REPLACE VIEW stadium_limits AS
SELECT stadium_name, CONCAT(address, ", ", city, ", ", state) AS address, 
stadium_capacity, team_name
FROM stadium
JOIN teams USING (stadium_id)
WHERE (stadium_capacity > "70,000");
CREATE OR REPLACE VIEW coaches_more_wins AS
SELECT CONCAT(coaches_fname, " ", coaches_lname) AS name, CONCAT((coaches.wins / 
coaches.losses)) AS percentage, team_name
FROM coaches
JOIN teams USING (coaches_id)
WHERE ((coaches.wins / coaches.losses) >= "1");
CREATE OR REPLACE VIEW teams_point AS
SELECT team_name, point_differential, playoff_appearance
FROM 2021_season
JOIN teams USING (teams_id)