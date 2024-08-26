-- Remove duplicates
SET SQL_SAFE_UPDATES = 0;
DELETE FROM sales WHERE sale_id IN (
  SELECT sale_id FROM (
    SELECT sale_id, ROW_NUMBER() OVER (PARTITION BY sale_id ORDER BY sale_id) AS rnum
    FROM sales
  ) t WHERE rnum > 1
);
