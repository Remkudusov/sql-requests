SELECT 
	ppv.product_id as product_id,
	p.title as title,
	(SELECT ppv1.value 
		FROM product_property_value AS ppv1
		WHERE ppv1.property_id = 1 AND
		ppv1.product_id = ppv.product_id) AS color,
	(SELECT ppv2.value 
		FROM product_property_value AS ppv2
		WHERE ppv2.property_id = 2 AND
		ppv2.product_id = ppv.product_id) AS width,
	(SELECT ppv3.value 
		FROM product_property_value AS ppv3
		WHERE ppv3.property_id = 3 AND
		ppv3.product_id = ppv.product_id) AS height
FROM product_property_value ppv, product p
WHERE p.id = ppv.product_id AND
color = 'Красный' AND
height = 5 AND
width >= 4 AND
width <= 5
GROUP BY product_id;