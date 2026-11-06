
-- =====================================================
-- MATH FUNCTION - FACTORIAL OF A NUMBER
-- =====================================================

CREATE OR REPLACE FUNCTION fn_factorial(n INTEGER)
RETURNS NUMERIC
LANGUAGE plpgsql
IMMUTABLE
AS $$
DECLARE
    result NUMERIC := 1;
    i INTEGER;
BEGIN
    IF n IS NULL THEN
        RETURN NULL;
    END IF;

    IF n < 0 THEN
        RAISE EXCEPTION 'Factorial is not defined for negative numbers: %', n;
    END IF;

    FOR i IN 2..n LOOP
        result := result * i;
    END LOOP;

    RETURN result;
END;
$$;

COMMENT ON FUNCTION fn_factorial(INTEGER)
IS 'Returns n! as NUMERIC (0! = 1). Raises an exception for negative input.';

-- =====================================================
-- END OF MATH FACTORIAL
-- =====================================================
