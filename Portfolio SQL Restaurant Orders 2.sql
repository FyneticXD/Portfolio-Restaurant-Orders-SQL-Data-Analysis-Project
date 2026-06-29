-- 1. Lihat tabel order_details.
SELECT*FROM order_details;
-- 2. Apa rentang tanggal yang tercakup dalam tabel tersebut?
SELECT MIN(order_date), MAX(order_date) FROM order_details;
-- 3. Berapa banyak pesanan yang dibuat dalam rentang tanggal tersebut?
SELECT COUNT(DISTINCT order_id) FROM order_details;
-- 4. Berapa banyak barang yang dipesan dalam rentang tanggal tersebut?
SELECT COUNT(*) FROM order_details;
-- 5. Pesanan mana yang memiliki jumlah barang terbanyak?
SELECT order_id, COUNT(item_id) AS num_items
FROM order_details
GROUP BY order_id
ORDER BY num_items DESC;
-- 6. Berapa banyak pesanan yang berisi lebih dari 12 barang?
SELECT COUNT(*) FROM

(SELECT order_id, COUNT(item_id) AS num_items
FROM order_details
GROUP BY order_id
HAVING num_items>12) AS num_orders;

