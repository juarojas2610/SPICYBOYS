
-- =====================================================
-- MATH FUNCTION - AVERAGE OF A LIST OF NUMBERS
-- =====================================================

CREATE OR REPLACE FUNCTION fn_average(vals NUMERIC[])
RETURNS NUMERIC
LANGUAGE sql
IMMUTABLE
AS $$
    SELECT AVG(v) FROM unnest(vals) AS v;
$$;

COMMENT ON FUNCTION fn_average(NUMERIC[])
IS 'Returns the average of an array of numbers. NULL elements are ignored; empty or NULL array returns NULL.';

-- =====================================================
-- END OF MATH AVERAGE
-- =====================================================
