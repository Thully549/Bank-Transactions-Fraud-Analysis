SELECT 
    is_new_merchant,
    SUM(transaction_amount) AS avg_transaction_amount
FROM transactions
GROUP BY is_new_merchant;


SELECT 
    is_new_merchant,
    AVG(transaction_amount) AS avg_transaction_amount
FROM transactions
GROUP BY is_new_merchant;
