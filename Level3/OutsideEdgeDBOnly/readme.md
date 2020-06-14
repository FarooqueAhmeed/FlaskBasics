# Outside Edge

The yearly IPL tournament is a professional Twenty20 cricket tournament where eight(sometimes a few more) battle it out to determine the ultimate dream team of cricketers from around the world.

However, what one fails to notice is the abundance of data and the need to store and manage it efficiently, there are over 60 matches spanned over two months, multiple days having two games a day.

The proposed Database Management system aims to handle the multitude of data like the details of the Teams, the players playing for the team, the owner of the team, their home ground, the officials of the matches, the fixtures between teams, and the game by match report for the entire duration of the Tournament. Besides this, the solution provides the admins of the IPL board and the chairman with a complete overview of the Tournament managing the salaries of all that are part of this Tournament, be it the officials, the players, the coaches or the respected cricket ground boards. The Database manages and updates the data. In it, as the Tournament progresses and adds to the record of the performances by individual players and the teams as a collective unit.

## Getting Started

install the necesary requiremnets (Python, MySQL, and corresponding libraries for connectors and web deployment)

### Relation Schema of the DB

![Alt text](./rs.png?raw=true "Relational Schema")

## Web Site in Action

![Alt text](./extras/1.png?raw=true "Login")
![Alt text](./extras/2.png?raw=true "Dash")
![Alt text](./extras/3.png?raw=true "Profile")
![Alt text](./extras/4.png?raw=true "Glance")
![Alt text](./extras/5.png?raw=true "Update")
![Alt text](./extras/6.png?raw=true "Insert")
![Alt text](./extras/7.png?raw=true "About Us")

## Normalization

The given Database is represented in the Boyce Codd Normal Form (BCNF) as all functional dependencies have been removed, and there are no transitive dependencies as well. In each of the tables, the Left-hand side for every functional dependency is the Primary Key for that relation, thus satisfying the criteria for BCNF.

## Triggers

For insertion in the Database, several constraints have been imposed either implicitly (by referential integrity constraints) or otherwise like Adding data for a player does not take in values for the team for which he plays, which can only be set once the player has been auctioned to some team. A similar approach has been implemented for teams and owners, i.e., a team cannot exist without an owner, and each team can have exactly one owner at any given point of time.
Keeping the data consistent throughout, we added a handful of triggers that take care of all assumptions of the Mini World and also make the Database consistent for use.

* addPlayer
* deletePlayer
* auction_change_team
* auction_add_player
* deleteTeam
* addTeam
* updateTeam

The design choice behind adding triggers instead of augmenting the Database to store the information in different tables was that the latter would involve taking a handful of JOINS for every operation for which a trigger was created. Since a JOIN operation is quite expensive, we decided to go with the earlier approach, and having created indices on team_name and team_id majority of these operations are quite efficient and also greatly reduces the storage requirements. Further, the choice was optimal since the frequency of addition of Players, teams, and sale of Players in Auction is quite less as compared to the frequency with which this data is queried so the System can afford a bit higher cost in terms of addition/ modification to the records than in terms of queries (which in turn would be higher if one uses multiple tables to store the data).

## Events

* upLoads- This event occurs every 1 minute (for simplicity purposes, otherwise should occur every 24 hours) that updates the PurpleCap and OrangeCap relations with the leading wicket takers and run scorers.

* An additional backup script that backs up the database, DATABASE RECOVERY

## Built With

* Flask 
* MySQL

## Version Info

Version : 1.0.1

## Authors

* **Suchet Aggarwal** - *IIIT-Delhi* - [Other Work](https://github.com/Suchet-Agg)

## Acknowledgments

* [Website Template](https://www.creative-tim.com/)

The project was built as part of Database Systems Management course at IIIT Delhi

