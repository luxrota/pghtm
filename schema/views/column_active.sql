/**
 * Column (Active) View. Global inhibiton.
 * @SpatialPooler
 */
CREATE VIEW htm.column_active AS (
  SELECT column_overlap_boost.id
  FROM htm.column_overlap_boost
  ORDER BY column_overlap_boost.overlap_boosted DESC
  LIMIT htm.column_active_get_limit()  -- global column_inhibit
);

