SELECT * FROM transactions
WHERE transaction_id IN(
   Select transaction_id
   FROM transactions
   GROUP BY transaction_id
   HAVING COUNT(*) >1
   )
    ORDER BY transaction_id;

	SELECT  * FROM  transactions
	transaction_id;