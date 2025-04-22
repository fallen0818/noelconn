SELECT 
    c.barangay,
    FORMAT(SUM(u.kwh202501), 0) AS total_kwh202501, 
    FORMAT(SUM(u.kwh202502), 0) AS total_kwh202502, 
    FORMAT(SUM(u.kwh202503), 0) AS total_kwh202503
FROM tblcustomer c
JOIN tblkwh u ON c.customerid = u.customerid
WHERE Town LIKE '%alaminos%'
GROUP BY c.barangay
ORDER BY c.barangay ASC;