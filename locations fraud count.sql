SELECT 
    transaction_location,
    COUNT(*) AS total_transactions,
    SUM(transaction_amount) AS total_amount
FROM transactions
GROUP BY transaction_location
ORDER BY total_transactions DESC;

SELECT 
    transaction_location,
    COUNT(*) AS total_transactions,
    SUM(CASE WHEN fraud_label='Fraud' THEN 1 ELSE 0 END)  AS fraud_count
FROM transactions
GROUP BY transaction_location 
ORDER BY  fraud_count DESC;
