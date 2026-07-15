CREATE OR REPLACE VIEW master_timeline AS
	SELECT datetime, 'lateral_movement' AS source_table, to_jsonb(t) AS data
	FROM lateral_movement t
	
	UNION ALL
	
	SELECT datetime, 'malicious_execution', to_jsonb(t)
	FROM malicious_execution t
	
	UNION ALL
	
	SELECT datetime, 'powershell_scripts', to_jsonb(t)
	FROM powershell_scripts t
	
	UNION ALL
	SELECT datetime, 'data_accessed', to_jsonb(t)
	FROM data_accessed t
	
	UNION ALL
	
	SELECT datetime, 'user_account_changes', to_jsonb(t)
	FROM user_account_changes t
	
	UNION ALL
	
	SELECT datetime, 'timeline', to_jsonb(t)
	FROM timeline t
	
	ORDER BY datetime;