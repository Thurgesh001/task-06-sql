-- scalar queries-- 


SELECT name FROM Members
WHERE MemberID = (SELECT MIN(MemberID) FROM Members);

SELECT 
    productname
FROM
    orders
WHERE
    orderid = (SELECT 
            MAX(orderid)
        FROM
            orders);
            
            
-- coorelated subqueries--and where  

SELECT Name FROM Members m
WHERE EXISTS (
    SELECT 1 FROM Borrow_Records b
    WHERE b.MemberID = m.MemberID
);


-- in subqueries

SELECT Name FROM Authors
WHERE AuthorID IN (
    SELECT AuthorID FROM Books
);