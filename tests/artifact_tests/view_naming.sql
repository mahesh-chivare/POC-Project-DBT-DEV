SELECT
    table_schema,
    table_name
FROM information_schema.views
WHERE NOT REGEXP_LIKE(
    table_name,
    '^[A-Z0-9_$]+$'
    
)