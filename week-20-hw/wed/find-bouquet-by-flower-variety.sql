SELECT name, price FROM bouquets
JOIN flowers ON flowers.bouquet_id = bouquets.id
JOIN flower_types ON flowers.flower_type_id = flower_types.id
WHERE types = 'Carnation'
ORDER BY name
LIMIT 1;