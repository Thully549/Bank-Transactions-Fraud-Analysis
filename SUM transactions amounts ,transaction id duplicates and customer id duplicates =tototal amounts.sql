SELECT SUM(transaction_amount) AS total_transaction_amount
FROM transactions;

SELECT
 SUM(transaction_amount) AS total_duplicated_id_amount
FROM transactions
WHERE transaction_id IN (
    SELECT transaction_id
    FROM transactions
    GROUP BY transaction_id
    HAVING COUNT(*) > 1
);

SELECT SUM(transaction_amount) AS total_duplicated_customerid_amount
FROM transactions
WHERE customer_id IN (
    SELECT customer_id
    FROM transactions
    GROUP BY customer_id
    HAVING COUNT(*) > 1
);
