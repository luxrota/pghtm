/**
 * Region Schema Test
 */

BEGIN;
SET search_path TO htm, public;
SELECT plan(18);  -- Test count


SELECT has_table('region');
SELECT columns_are(
  'region', 
  ARRAY [
    'id',
    'boost_factor_max',
    'boost_factor_min',
    'duty_cycle_active_max',
    'duty_cycle_active_min'
  ]
);
SELECT has_pk('region');

SELECT col_type_is('region', 'id', 'integer');
SELECT col_not_null('region', 'id');
SELECT col_is_pk('region', 'id');

SELECT col_type_is('region', 'boost_factor_max', 'numeric');
SELECT col_not_null('region', 'boost_factor_max');
SELECT col_has_check('region', 'boost_factor_max');

SELECT col_type_is('region', 'boost_factor_min', 'numeric');
SELECT col_not_null('region', 'boost_factor_min');
SELECT col_has_check('region', 'boost_factor_min');

SELECT col_type_is('region', 'duty_cycle_active_max', 'numeric');
SELECT col_not_null('region', 'duty_cycle_active_max');
SELECT col_has_check('region', 'duty_cycle_active_max');

SELECT col_type_is('region', 'duty_cycle_active_min', 'numeric');
SELECT col_not_null('region', 'duty_cycle_active_min');
SELECT col_has_check('region', 'duty_cycle_active_min');


SELECT * FROM finish();
ROLLBACK;  -- Don't save test data

