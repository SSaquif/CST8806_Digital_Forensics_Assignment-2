-- evidence
SELECT * FROM public.evidence_collected;
SELECT * FROM public.compromised_user_accounts;

-- executions
SELECT * FROM public.malicious_execution order by datetime;
SELECT * FROM public.powershell_scripts order by datetime;

-- user account related
SELECT * FROM public.user_account_changes order by datetime;
SELECT * FROM public.lateral_movement order by datetime ASC;

-- data related
SELECT * FROM public.data_accessed order by datetime;

-- overall timeline
SELECT * FROM public.timeline order by datetime;





