-- You are taking an inventory and want to know the variety, color, and stem
-- length of each 'pink' or 'purple' flower. Order the flowers by their variety,
-- then by their color, then by their stem length.

SELECT * FROM flowers f
JOIN flower_types t ON f.flower_type_id = t.id
WHERE color in ('pink', 'purple')
ORDER BY t.name, color, stem_length;
