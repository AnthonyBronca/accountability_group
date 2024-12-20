SELECT c.name, c.price
FROM bouquet_flower a 
JOIN flower_types b ON a.flower_id = b.id
JOIN bouquets c ON a.bouquet_id = c.id
WHERE b.name = 'Carnation'
LIMIT 1;