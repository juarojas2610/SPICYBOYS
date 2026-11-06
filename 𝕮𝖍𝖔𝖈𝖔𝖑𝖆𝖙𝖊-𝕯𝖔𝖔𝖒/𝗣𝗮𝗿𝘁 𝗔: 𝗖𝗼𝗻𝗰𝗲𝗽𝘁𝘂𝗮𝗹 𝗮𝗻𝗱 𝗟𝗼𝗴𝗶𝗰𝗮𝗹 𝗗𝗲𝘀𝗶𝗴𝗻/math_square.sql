
-- =====================================================
-- MATH FUNCTION - SQUARE OF A NUMBER
-- =====================================================

CREATE OR REPLACE FUNCTION fn_square(x NUMERIC)
RETURNS NUMERIC
LANGUAGE sql
IMMUTABLE
AS $$
    SELECT x * x;
$$;

COMMENT ON FUNCTION fn_square(NUMERIC)
IS 'Returns the square of a number (x * x). NULL input returns NULL.';

-- =====================================================
-- END OF MATH SQUARE
-- =====================================================
