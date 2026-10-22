SELECT schema_name
FROM information_schema.schemata
WHERE schema_name NOT IN
(
    'STG',
    'BROWNZE',
    'SILVER',
    'GOLD'
)