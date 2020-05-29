SELECT * FROM patient_popularity
Where patient_id IN (
    SELECT patient_id FROM cities
    WHERE city_name = 'Gwangju')
    
    
SELECT * FROM patient_popularity
WHERE bd_year BETWEEN '1995' AND '1999'


SELECT * FROM patient_popularity
WHERE country_name IN (
    SELECT country_name FROM states)
    AND patient_id IN (
    SELECT patient_id FROM cities)
