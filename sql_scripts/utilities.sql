-- Check for leading space in lists
SELECT
    ip_address,
    string_to_array(ip_address, ',') AS arr,    
	'"' || (string_to_array(ip_address, ','))[1] || '"' AS first_value,
	length((string_to_array(ip_address, ','))[1]) AS first_length,
    '"' || (string_to_array(ip_address, ','))[2] || '"' AS second_value,
	length((string_to_array(ip_address, ','))[2]) AS second_length
FROM evidence_collected;
