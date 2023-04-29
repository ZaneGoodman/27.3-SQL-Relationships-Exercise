-- write your queries here
-- JOIN ALL
 SELECT * FROM owners FULL JOIN vehicles ON owners.id = vehicles.owner_id;

-- Count the number of cars for each owner. Display the owners first_name, last_name and count of vehicles. The first_name should be ordered in ascending order. Your output should look like this:

 SELECT first_name, last_name, COUNT(*) AS total_cars FROM owners JOIN vehicles ON owners.id = vehicles.owner_id GROUP BY first_name, last_name ORDER BY total_cars ASC;

--  Count the number of cars for each owner and display the average price for each of the cars as integers. Display the owners first_name, last_name, average price and count of vehicles. The first_name should be ordered in descending order. Only display results with more than one vehicle and an average price greater than 10000. Your output should look like this:

SELECT o.first_name, o.last_name, ROUND(AVG(v.price)) AS avg_price, COUNT(v.owner_id) AS count 
FROM owners o JOIN vehicles v ON o.id = v.owner_id 
GROUP BY o.first_name, o.last_name 
HAVING ROUND(AVG(v.price)) > 10000 AND COUNT(v.owner_id) >= 1 
ORDER BY o.first_name DESC;