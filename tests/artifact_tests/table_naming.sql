SELECT
table_schema,
table_name
FROM information_schema.tables
WHERE table_type = 'BASE TABLE'
AND NOT REGEXP_LIKE(
table_name,
'^[A-Z][A-Z0-9_]*$'
)