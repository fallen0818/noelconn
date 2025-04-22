SELECT 
    c.customerid, 
    c.cname, 
    c.caddress, 
    c.ctype,
    c.routenumber, 
    u.kwh202501, 
    u.kwh202502, 
    u.kwh202503,
    CASE 
        WHEN u.kwh202502 = 0 THEN NULL
        ELSE ((u.kwh202503 - u.kwh202502) / u.kwh202502) * 100
    END AS percent_change
FROM tblcustomer c
JOIN tblkwh u ON c.customerid = u.customerid
HAVING percent_change < -50
ORDER BY kwh202503 DESC;