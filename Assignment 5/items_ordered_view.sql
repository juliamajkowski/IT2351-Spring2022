-- Purpose create a query that uses the guitar database to show the product name, item price and quantity for each item ordered
-- Julia Majkowski IT2351 03/28/2022

CREATE VIEW items_ordered AS SELECT product_name, item_price, quantity FROM products p JOIN order_items od ON p.product_id = od.product_id;
SELECT * FROM julia_guitar_shop.items_ordered;