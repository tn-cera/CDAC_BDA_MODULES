use sprint2;
/*Q1. Palindrome Stations
The metro authority wants to print a fun fact on its souvenir map: stations whose names read the same
forwards and backwards. Write a query to list all such stations. The comparison must ignore letter case and spaces (for
example, "Mala Lam" counts as a palindrome).
*/

select * from stations;
# remove the Trailing Space
select name from stations
where replace(trim(name),' ','') = reverse(replace(trim(name),' ',''));

/*Q2. Midnight Riders
Night-shift commuters often enter the metro before midnight and exit after it, which causes billing to fall on
two different dates. Identify every trip that started on one calendar date and ended on the next. */

select * from trips;
select * from trips
where date(exit_time) = date(entry_time); 

/* 
Q3. Hardening the Trips Table
Data audits found trips where the entry and exit stations were the same, and the analytics team keeps
recalculating trip duration by hand. Modify the trips table so that (a) a CHECK constraint rejects any row where
entry_station equals exit_station, and (b) a STORED generated column trip_minutes automatically holds the duration
of the trip in minutes. Then insert one invalid row to prove the constraint works.
*/

select * from trips;

alter table trips
add constraint chk_station CHECK (entry_station <> exit_station),

add column total_min
int generated always as (timestampdiff(minutes,entry_time,exit_time))
 stored;
 
/* Q4. Weekend Psychological Pricing
The marketing team believes sellers who list on weekends use "psychological pricing" (prices ending in 99).
List all items that were listed on a Saturday or Sunday and whose base_price ends with the digits 99.*/

select * from items;
select item_id,title from items
where DAYNAME(listed_on) in ("Saturday","Sunday") and base_price like "%99.00";


/*
Q5. The Swap Problem
A faulty gate reader recorded some trips with the entry and exit stations reversed; these rows are marked flag
= 'SWAP'. Correct these rows with a SINGLE UPDATE statement so that the stations are swapped and the flag is set to
'FIXED'. First try SET entry_station = exit_station, exit_station = entry_station, observe the result, and explain in a
comment why it does not work in MySQL before writing the correct solution.

*/

select * from trips;

update trips set entry_station = exit_station ,exit_station = entry_station , flag="FIXED" where flag ="SWAP" ;

/* 
When MySQL executes `SET entry_station = exit_station, exit_station = entry_station`, 
it processes the assignments sequentially from left to right. 
1. First, `entry_station` is overwritten with the value of `exit_station`. 
2. Next, when it tries to execute `exit_station = entry_station`, the original value 
   of `entry_station` is already gone! It reads the *newly updated* value.
As a result, BOTH columns end up holding the exact same value (the original exit station). 
Because both stations are now identical, it triggers and violates the 'CHK_STATION' 
constraint, causing the entire query to fail.
*/

-- SOLUTION 1
UPDATE trips 
SET 
    entry_station = CASE WHEN flag = 'SWAP' THEN exit_station ELSE entry_station END,
    exit_station  = CASE WHEN flag = 'SWAP' THEN entry_station ELSE exit_station END,
    flag = 'FIXED'
WHERE flag = 'SWAP';


-- SOLUTION 2
UPDATE TRIPS AS ORIGINAL
JOIN TRIPS AS SNAPSHOT
ON original.trip_id = snapshot.trip_id
SET
    original.entry_station = snapshot.exit_station,
    original.exit_station  = snapshot.entry_station,
    original.flag          = 'FIXED'
WHERE original.flag = 'SWAP';

/* 
Q6. Favourite Destination
For every card holder, find the station where they exit most often — their "favourite destination". If two or
more stations are tied, pick the one that comes first alphabetically.
*/

SELECT * FROM TRIPS;
SELECT * FROM STATIONS;


 WITH FAV_DST AS (
SELECT T.CARD_ID,NAME,
COUNT(EXIT_STATION) 
OVER(partition by NAME ORDER BY NAME) AS favourite_destination
FROM 
TRIPS AS T
JOIN 
STATIONS AS S
ON T.EXIT_STATION = S.STATION_ID
)
SELECT * FROM FAV_DST
GROUP BY FAV_DST.CARD_ID
LIMIT 1;








