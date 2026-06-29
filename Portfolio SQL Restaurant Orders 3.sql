-- 1. Gabungkan tabel menu_items dan order_details menjadi satu tabel tunggal.
SELECT*FROM menu_items;

SELECT*FROM order_details;

SELECT*
FROM order_details od LEFT JOIN menu_items mi
ON od.item_id = mi.menu_item_id;
-- 2. Apa saja item yang paling sedikit dan paling banyak dipesan? Termasuk ke dalam kategori apa saja item-item tersebut?
SELECT item_name, category, COUNT(order_details_id) AS num_purchases
FROM order_details od LEFT JOIN menu_items mi
ON od.item_id = mi.menu_item_id
GROUP BY item_name, category
ORDER BY num_purchases;

-- 3. Apa saja 5 pesanan (orders) teratas yang menghabiskan uang paling banyak?
SELECT order_id, SUM(price) AS total_spend
FROM order_details od LEFT JOIN menu_items mi
ON od.item_id = mi.menu_item_id
GROUP BY order_id
ORDER BY total_spend DESC
LIMIT 5;

-- 4. Lihat detail dari pesanan dengan pengeluaran tertinggi. Wawasan (insights) apa yang bisa Anda dapatkan dari hasil tersebut?
SELECT category, COUNT(item_id) AS num_items
FROM order_details od LEFT JOIN menu_items mi
ON od.item_id = mi.menu_item_id
where order_id = 440
GROUP BY category;


-- 5. Lihat detail dari 5 pesanan dengan pengeluaran tertinggi. Wawasan (insights) apa yang bisa Anda dapatkan dari hasil tersebut?
SELECT order_id, category, COUNT(item_id) AS num_items
FROM order_details od LEFT JOIN menu_items mi
ON od.item_id = mi.menu_item_id
where order_id IN (440, 2075, 1957, 330, 2675)
GROUP BY order_id, category;
