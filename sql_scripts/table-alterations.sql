alter table evidence_collected
add column ip_addresses TEXT[];

update evidence_collected
set ip_addresses = string_to_array(ip_address, ', ');

