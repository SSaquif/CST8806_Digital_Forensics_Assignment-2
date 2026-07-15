SELECT *
FROM malicious_execution
ORDER BY datetime;

-- Show only PsExec-related activity
-- first row shows where it was initially staged C:share$\Psexec.exe
SELECT
	-- *
    datetime,
    system_name,
    artifact,
    path,
    event_id_or_sha1_hash,
    remarks
FROM malicious_execution
WHERE
    path ILIKE '%psexec%'
    OR remarks ILIKE '%psexec%'
ORDER BY datetime;

-- Looking for the SHA-1 hashes
-- Amcache is a Windows forensic artifact that records information about executables that have been run on the system.
SELECT
	-- *
	datetime,
    system_name,
    artifact,
    path,
    event_id_or_sha1_hash
FROM malicious_execution
WHERE
    artifact = 'Amcache'
	-- artifact <> 'Amcache' -- (Checking non amcache ones, doesnt have sha1 hash)
--ORDER BY path;
ORDER BY datetime;

-- looking for service installations = EVENT ID = 7045
SELECT *
FROM malicious_execution
WHERE
    event_id_or_sha1_hash ILIKE '%7045%'
	OR
	event_id_or_sha1_hash ILIKE '%A service was installed%'
ORDER BY datetime;

-- Looking for batch files
SELECT *
FROM malicious_execution
WHERE
    path ILIKE '%.bat'
ORDER BY datetime;

-- User Assist artifacts
-- User Assist is another Windows Registry artifact.
-- Unlike Amcache,it records
-- which programs a user actually launched through Windows Explorer.
SELECT
    datetime,
    system_name,
    artifact,
    path
FROM malicious_execution
WHERE
    artifact ILIKE 'User Assist'
ORDER BY datetime;