-- payload execution (just 4 rows)
SELECT *
FROM powershell_scripts
ORDER BY datetime;

-- essentially all of the rows
-- the where clause is not required, added to check
SELECT *
FROM user_account_changes
WHERE
    event_id ilike '%4724%'
ORDER BY datetime;

-- 10-10-2021 because PYSA payload execution occured on that day
-- Just wanted the timeline after execution, to see what happened afterwards
SELECT
    datetime,
    source_table,
    data
FROM master_timeline
WHERE datetime >= '2021-10-10'
ORDER BY datetime;