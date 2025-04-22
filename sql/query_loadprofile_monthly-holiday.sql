SELECT DATE_FORMAT(billing_date, '%Y-%m') AS month,
    FORMAT(MAX(kilowatts), 0) AS max_kilowatts
FROM tbl_load_profile
WHERE billing_time BETWEEN 6 AND 17
    AND billing_date IN ('2024-12-24', '2024-12-25', '2024-12-30')
GROUP BY DATE_FORMAT(billing_date, '%Y-%m')
ORDER BY month ASC;