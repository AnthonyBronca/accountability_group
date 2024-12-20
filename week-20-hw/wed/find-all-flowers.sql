SELECT  flower_types.types, color, stem_length FROM flowers 
JOIN flower_types ON flowers.flower_type_id = flower_types.id
ORDER BY flower_types.types, color, stem_length;
