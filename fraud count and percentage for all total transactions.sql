SELECT 
    COUNT(*) FILTER (WHERE fraud_label = 'Fraud') AS fraud_count,
    COUNT(*) AS total_transactions,
    ROUND(
        COUNT(*) FILTER (WHERE fraud_label = 'Fraud') * 100.0 / COUNT(*), 
        2
    ) AS fraud_percentage
FROM transactions;