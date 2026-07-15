# CST8806 - Digital Forensics Assignment 2

This repository contains the SQL scripts and exported CSV datasets used during the forensic investigation for CST8806 Assignment 2. The original evidence was provided as an Excel workbook and manually exported to CSV to facilitate analysis in PostgreSQL.

## Repository Contents

- `csv/` – CSV files exported from the original Excel evidence.
- `table-creation.sql` – Creates the PostgreSQL database tables.
- `table-alterations.sql` – Applies required schema changes after table creation.
- `master-timeline-view.sql` – Creates the `master_timeline` view used to reconstruct the attack timeline.

## Setup Instructions

1. Create a new PostgreSQL database.
2. Execute `table-creation.sql`.
3. Execute `table-alterations.sql`.
4. Import each CSV file into its corresponding PostgreSQL table using pgAdmin's **Import/Export Data** feature.
5. After all tables have been populated, execute `master-timeline-view.sql` to create the consolidated `master_timeline` view.

The `master_timeline` view is not part of the original evidence. It was created during the investigation by combining the timestamped datasets into a single chronological view to simplify querying and timeline reconstruction. The underlying evidence tables remain unchanged.

## Notes

- The CSV files are direct exports of the original Excel workbook supplied for the assignment.
- SQL scripts were used only to create the database schema and analytical view. No forensic evidence or source data was modified during the investigation.
