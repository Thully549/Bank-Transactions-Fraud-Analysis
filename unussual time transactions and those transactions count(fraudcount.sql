SELECT 
    EXTRACT(HOUR FROM transaction_time) AS hour_of_transaction,
    unusual_time_transaction,
    
    COUNT(*) AS duplicate_count,
    
    SUM(CASE 
        WHEN unusual_time_transaction = 'Yes' THEN 1 
        ELSE 0 
    END) AS fraud_count

FROM transactions
WHERE transaction_id IN (
    SELECT transaction_id
    FROM transactions
    GROUP BY transaction_id
    HAVING COUNT(*) > 1
)
GROUP BY  hour_of_transaction, unusual_time_transaction

ORDER BY duplicate_count DESC;
