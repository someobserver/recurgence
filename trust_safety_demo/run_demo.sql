-- RFT Trust & Safety Demo - Main Runner
-- Loads all modules in dependency order:
-- 1. Foundation (schema, tables, basic functions)
-- 2. Geometric Analysis (differential geometry operations)
-- 3. Rigidity Pathologies
-- 4. Fragmentation Pathologies
-- 5. Inflation Pathologies
-- 6. Observer-Coupling Pathologies
-- 7. Operational Monitoring (coordination, escalation, dashboards)

\echo 'Loading RFT Trust & Safety Demonstration System...'

\echo 'Step 1/7: Loading Foundation...'
\i 00_foundation.sql

\echo 'Step 2/7: Loading Geometric Analysis...'
\i 01_geometric_analysis.sql

\echo 'Step 3/7: Loading Rigidity Pathologies...'
\i 02_rigidity_pathologies.sql

\echo 'Step 4/7: Loading Fragmentation Pathologies...'
\i 03_fragmentation_pathologies.sql

\echo 'Step 5/7: Loading Inflation Pathologies...'
\i 04_inflation_pathologies.sql

\echo 'Step 6/7: Loading Observer-Coupling Pathologies...'
\i 05_observer_coupling_pathologies.sql

\echo 'Step 7/7: Loading Operational Monitoring...'
\i 06_operational_monitoring.sql

\echo ''
\echo 'RFT Trust & Safety System Loaded Successfully'
\echo ''
\echo 'Components:'
\echo '- 12 Pathology Detection Functions (4 categories x 3 pathologies each)'
\echo '- Geometric field analysis and curvature calculations'
\echo '- Coordination detection via coupling analysis'
\echo '- Escalation prediction via field dynamics'
\echo '- Real-time monitoring dashboards'
\echo ''
\echo 'Functions:'
\echo '- detect_all_pathologies(point_id)'
\echo '- detect_coordination_via_coupling()'
\echo '- detect_escalation_via_field_evolution(point_ids)'
\echo ''
\echo 'Views: coordination_alerts, pathology_alerts'
\echo 'Ready for analysis.' 