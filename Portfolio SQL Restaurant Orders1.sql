USE restaurant_db;

-- 1. Lihat tabel menu_items.
SELECT * FROM menu_items;

-- 2. Cari tahu jumlah hidangan yang ada di menu.
SELECT COUNT(*) FROM menu_items;
-- 3. Apa saja hidangan termurah dan termahal di menu?
SELECT * FROM menu_items
ORDER BY price;

SELECT * FROM menu_items
ORDER BY price DESC;

-- 4. Berapa banyak hidangan Italia yang ada di menu?
SELECT COUNT(*) FROM menu_items
WHERE category ='Italian'
ORDER BY price;
-- 5. Apa saja hidangan Italia termurah dan termahal di menu?
SELECT*FROM menu_items
WHERE category='Italian'
ORDER BY price;

SELECT* FROM menu_items
WHERE category ='Italian'
ORDER BY price DESC;
-- 6. Berapa banyak hidangan di setiap kategori?
SELECT category, Count(menu_item_id) AS num_dishes
FROM menu_items
GROUP BY category;

-- 7. Berapa harga rata-rata hidangan di setiap kategori?
SELECT category, AVG(price) AS avg_price
FROM menu_items
GROUP BY category;