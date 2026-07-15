-- Earliest event
SELECT *
FROM master_timeline
ORDER BY datetime
LIMIT 10;

-- First successful RDP connection
SELECT *
FROM timeline
WHERE artifact = 'RDP'
  AND event_id_or_hash LIKE '%Session reconnection succeeded%'
ORDER BY datetime;
--LIMIT 5;

-- Verify and find all entries in the timeline related to the suspicious source IP
SELECT
    datetime,
    system_name,
    username,
    source_ip_address,
    source_country,
    source_asn,
    asn_type,
    event_id_or_hash
FROM timeline
WHERE source_ip_address = '185.56.80.65';