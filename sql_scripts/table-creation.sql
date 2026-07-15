CREATE TABLE evidence_collected (
	system_name TEXT,
	collection_type TEXT,
	collected_by TEXT,
	operating_system TEXT,
	ip_address TEXT
);

CREATE TABLE compromised_user_accounts (
	username TEXT,
	user_sid TEXT
);

CREATE TABLE timeline (
    datetime TIMESTAMP WITHOUT TIME ZONE,
    system_name TEXT,
    artifact TEXT,
    file_or_service_name TEXT,
    path TEXT,
    event_id_or_hash TEXT,
    username TEXT,
    source_ip_address TEXT,
    source_country TEXT,
    source_state TEXT,
    source_asn TEXT,
    asn_type TEXT
);

CREATE TABLE lateral_movement (
    datetime TIMESTAMP WITHOUT TIME ZONE,
    system_name TEXT,
    direction TEXT,
	event_description TEXT,
	username TEXT,
	source_ip_address TEXT,
	source_country TEXT,
	source_state TEXT,
	source_asn TEXT,
    asn_type TEXT
);

CREATE TABLE malicious_execution (
	datetime TIMESTAMP WITHOUT TIME ZONE,
    system_name TEXT,
    artifact TEXT,
    path TEXT,
    remarks TEXT,
    username TEXT,
	event_id_or_sha1_hash TEXT
);

CREATE TABLE powershell_scripts (
	datetime TIMESTAMP WITHOUT TIME ZONE,
    computer TEXT,
	remarks TEXT,    
    filepath_or_command TEXT    
);

CREATE TABLE data_accessed (
	datetime TIMESTAMP WITHOUT TIME ZONE,
    system_name TEXT,
	username TEXT,
    artifact TEXT,
	file_or_folder_path TEXT
);

CREATE TABLE user_account_changes (
	datetime TIMESTAMP WITHOUT TIME ZONE,
    system_name TEXT,
	event_id TEXT,
	username TEXT,
    target_username TEXT,
	target_user_sid TEXT,
	remarks TEXT
);
