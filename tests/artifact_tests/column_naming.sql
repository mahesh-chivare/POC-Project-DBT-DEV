SELECT
table_name,
column_name
FROM information_schema.columns
WHERE NOT REGEXP_LIKE(
column_name,
'^[A-Z][A-Z0-9_]*$'
)