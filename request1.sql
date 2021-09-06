SELECT p1.id, p1.title, p1.stock, p1.price
FROM (SELECT id, title, stock, price
		FROM product
		WHERE stock > 0
		ORDER BY price) p1
UNION ALL
SELECT p2.id, p2.title, p2.stock, p2.price
FROM (SELECT id, title, stock, price
					FROM product
					WHERE stock == 0
					ORDER BY price) p2;