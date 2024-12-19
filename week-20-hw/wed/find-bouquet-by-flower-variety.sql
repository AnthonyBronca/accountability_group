SELECT * FROM bouquets WHERE id IN (
    SELECT bouquet_id FROM flowers WHERE flower_type_id IN (
        SELECT id FROM flower_types WHERE name = 'Carnation'
    ) 
);
