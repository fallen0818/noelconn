SELECT FORMAT(SUM(u.kwh202503), 0) AS total_kwh
FROM tblcustomer c
JOIN tblkwh u ON c.customerid = u.customerid
WHERE RouteNumber = 567;