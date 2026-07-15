-- Check for distinct (external) IPs in LM table
SELECT DISTINCT source_ip_address FROM lateral_movement order by source_ip_address;

-- Check for distinct (external) IPs in LM table
SELECT DISTINCT source_ip_address FROM timeline order by source_ip_address;

-- Count LM Activity for each IPs, order by which src IP did a LM first 
SELECT
    source_ip_address,
    COUNT(*) AS events,
    MIN(datetime) AS first_seen,
    MAX(datetime) AS last_seen
FROM lateral_movement
GROUP BY source_ip_address
ORDER BY first_seen;

-- Query showing every unique attacking IP with its metadata.
SELECT DISTINCT
    source_ip_address,
    source_country,
    source_asn,
    asn_type
FROM timeline
WHERE source_ip_address IS NOT NULL
ORDER BY source_ip_address;