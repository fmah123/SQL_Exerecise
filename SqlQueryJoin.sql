/* This query gives an anwser to the question which is: 
As a courier service, I Would like to know which items need sending the earliest time so I need the customer name, location, amount paid, order date and agent name*/

select CUSTOMER.CUST_NAME, CUSTOMER.CUST_CITY, CUSTOMER.PAYMENT_AMT, AGENTS.AGENT_NAME, ORDERS.ORD_DATE from AGENTS inner join CUSTOMER on AGENTS.AGENT_CODE = CUSTOMER.AGENT_CODE INNER JOIN ORDERS ON AGENTS.AGENT_CODE = ORDERS.AGENT_CODE ORDER BY ORDERS.ORD_DATE ASC;