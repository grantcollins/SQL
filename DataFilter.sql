/* DATA FILTERING */

/* filter with WHERE on specific column value */
SELECT id, name FROM customers WHERE id = 3;
/* filter out with not equal sign != */
SELECT id, name FROM customers WHERE id != 3;

/* filter segment of results with inequality signs */
SELECT id, name FROM customers WHERE id < 3;
SELECT id, name FROM customers WHERE id >= 3;

/* filter range with BETWEEEN AND keywords */
SELECT id, name FROM customers WHERE id BETWEEN 2 AND 4;

/* filter on more than one condition */
SELECT name, state, city FROM customers WHERE state = 'NC' AND city = 'Raleigh';

/* filter on either or conditions */
SELECT name, state, city FROM customers WHERE city = 'Clayton' OR city = 'Cary';

/* order of operations for filters */
SELECT id, name, city FROM customers WHERE (id=1 OR id=2) AND state='NC';

/* filter on multiple OR statements using IN */
SELECT name, state FROM customers WHERE state IN ('CA','NC');

/* filter out results using NOT IN */
SELECT name, state FROM customers WHERE state NOT IN ('CA','NC');

/* filter wildcard % to search for word beginning with ... */
SELECT item_name FROM shopping WHERE item_name LIKE 'Family%';

/* filter wildcard % % to search for word anywhere in name */
SELECT item_name FROM shopping WHERE item_name LIKE '%table%';
SELECT item_name FROM shopping WHERE item_name LIKE '%e';

/* filter wildcard _ to wildcard single character */
SELECT item_name, cost FROM shopping WHERE cost LIKE '_.%';

/* group together column values with GROUP BY */
SELECT seller_id, COUNT(*) AS Item_Count FROM shopping GROUP BY seller_id;

/* filter GROUP BY values */
/* this shows item count for every seller with < 3 items */
SELECT seller_id, COUNT(*) AS Item_Count FROM shopping GROUP BY seller_id HAVING COUNT(*) < 3;

/* filter GROUP BY values and ORDER BY in ascending order */
SELECT seller_id, COUNT(*) AS Cost FROM shopping GROUP BY seller_id ORDER BY Cost;

/* filter GROUP BY values and ORDER BY in descending order */
SELECT seller_id, COUNT(*) AS Cost FROM shopping GROUP BY seller_id ORDER BY Cost DESC;
