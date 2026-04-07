SELECT merchant_category,
       COUNT(*) AS total_transactions,
       ROUND(SUM(CASE WHEN fraud_label='Fraud' THEN 1 ELSE 0 END)*100/COUNT(*),2) AS fraud_rate
FROM transactions
GROUP BY merchant_category
ORDER BY fraud_rate DESC;

SELECT device_id
      FROM transactions
GROUP BY device_id
;


SELECT card_type,
       COUNT(*) AS total_transactions,
       ROUND(SUM(CASE WHEN fraud_label='Fraud' THEN 1 ELSE 0 END)*100/COUNT(*),2) AS fraud_rate
FROM transactions
GROUP BY card_type
ORDER BY fraud_rate DESC;


SELECT transaction_location,
       COUNT(*) AS total_transactions,
       ROUND(SUM(CASE WHEN fraud_label='Fraud' THEN 1 ELSE 0 END)*100/COUNT(*),2) AS fraud_rate
FROM transactions
GROUP BY transaction_location
ORDER BY fraud_rate DESC;


SELECT unusual_time_transaction,
       COUNT(*) AS total_transactions,
       ROUND(SUM(CASE WHEN fraud_label='Fraud' THEN 1 ELSE 0 END)*100/COUNT(*),2) AS fraud_rate
FROM transactions
GROUP BY unusual_time_transaction
ORDER BY fraud_rate DESC;


