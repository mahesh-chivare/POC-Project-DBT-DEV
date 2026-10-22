SELECT database_name
FROM snowflake.account_usage.databases
WHERE NOT REGEXP_LIKE(
    database_name,
    '^[A-Z0-9_$]+$'
) 
