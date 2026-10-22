SELECT database_name
FROM snowflake.account_usage.databases
WHERE NOT REGEXP_LIKE(
    database_name,
    '^(DEV|ACC|PROD)_[A-Z0-9_]+_DB$'
);
