-- dummy users
INSERT INTO USERS (USER_ID, FIRST_NAME, LAST_NAME, ADDRESS, EMAIL, PASSWORD, PHONE_NUMBER, IS_VERIFIED)
VALUES (1, 'Dipesh', 'BC', 'Banke Gaon, Nepalgunj', 'bcdipeshwork@gmail.com', 'test1234', '9861591162', 1);

INSERT INTO USERS (USER_ID, FIRST_NAME, LAST_NAME, ADDRESS, EMAIL, PASSWORD, PHONE_NUMBER, IS_VERIFIED)
VALUES (2, 'Anish', 'Ghimire', 'Parsa, Chitwan', 'ghimireAnish@gmail.com', 'test1234', '9861591162', 1);

INSERT INTO USERS (USER_ID, FIRST_NAME, LAST_NAME, ADDRESS, EMAIL, PASSWORD, PHONE_NUMBER, IS_VERIFIED)
VALUES (3, 'Pravesh', 'Pansari', 'New Road, Kathmandu', 'pansariPravesh@gmail.com', 'test1234', '9861591162', 1);

INSERT INTO USERS (USER_ID, FIRST_NAME, LAST_NAME, ADDRESS, EMAIL, PASSWORD, PHONE_NUMBER, IS_VERIFIED)
VALUES (4, 'Pujan', 'Bhattarai', 'Balaju, Kathmandu', 'bhattaraiPujan@gmail.com', 'test1234', '9861591162', 1);

INSERT INTO USERS (USER_ID, FIRST_NAME, LAST_NAME, ADDRESS, EMAIL, PASSWORD, PHONE_NUMBER, IS_VERIFIED)
VALUES (5, 'Paritosh', 'Mishra', 'Dhamboji, Nepalgunj', 'mishraParitosh@gmail.com', 'test1234', '9861591162', 1);

INSERT INTO USERS (USER_ID, FIRST_NAME, LAST_NAME, ADDRESS, EMAIL, PASSWORD, PHONE_NUMBER, IS_VERIFIED)
VALUES (6, 'Brichya', 'BC', 'Banke Gaon, Nepalgunj', 'bcBrichya@gmail.com', 'test1234', '9861591162', 1);
---------------------------------------------------------------------------------------

-- dummy customers
INSERT INTO CUSTOMERS (USER_ID) VALUES (6);
---------------------------------------------------------------------------------------

-- dummy traders
INSERT INTO TRADERS (TRADER_ID, USER_ID) VALUES (1, 1);
INSERT INTO TRADERS (TRADER_ID, USER_ID) VALUES (2, 2);
INSERT INTO TRADERS (TRADER_ID, USER_ID) VALUES (3, 3);
INSERT INTO TRADERS (TRADER_ID, USER_ID) VALUES (4, 4);
INSERT INTO TRADERS (TRADER_ID, USER_ID) VALUES (5, 5);
---------------------------------------------------------------------------------------

-- dummy trader_types
INSERT INTO TRADER_TYPES (TRADER_TYPE_ID, TRADER_ID, DESCRIPTION) VALUES (1, 1, 'bakery');
INSERT INTO TRADER_TYPES (TRADER_TYPE_ID, TRADER_ID, DESCRIPTION) VALUES (2, 2, 'delicatessen');
INSERT INTO TRADER_TYPES (TRADER_TYPE_ID, TRADER_ID, DESCRIPTION) VALUES (3, 3, 'greengrocer');
INSERT INTO TRADER_TYPES (TRADER_TYPE_ID, TRADER_ID, DESCRIPTION) VALUES (4, 4, 'butcher');
INSERT INTO TRADER_TYPES (TRADER_TYPE_ID, TRADER_ID, DESCRIPTION) VALUES (5, 5, 'fishmonger');
---------------------------------------------------------------------------------------

-- dummy shops
INSERT INTO SHOPS (SHOP_ID, TRADER_ID, TRADER_TYPE_ID, SHOP_NAME) VALUES (1, 1, 1, 'Lorem Fresh Bakeries');
INSERT INTO SHOPS (SHOP_ID, TRADER_ID, TRADER_TYPE_ID, SHOP_NAME) VALUES (2, 2, 2, 'Lorem Fresh Delicatessen');
INSERT INTO SHOPS (SHOP_ID, TRADER_ID, TRADER_TYPE_ID, SHOP_NAME) VALUES (3, 3, 3, 'Lorem Fresh Greengrocer');
INSERT INTO SHOPS (SHOP_ID, TRADER_ID, TRADER_TYPE_ID, SHOP_NAME) VALUES (4, 4, 4, 'Lorem Fresh Butcher');
INSERT INTO SHOPS (SHOP_ID, TRADER_ID, TRADER_TYPE_ID, SHOP_NAME) VALUES (5, 5, 5, 'Lorem Fresh Fishmonger');
---------------------------------------------------------------------------------------

-- dummy product_categories
INSERT INTO PRODUCT_CATEGORIES (PRODUCT_CATEGORY_ID, CATEGORY_NAME, SHOP_ID, DESCRIPTION) 
VALUES (1, 'Bakery', 1, 'Only lorem bakeries here');

INSERT INTO PRODUCT_CATEGORIES (PRODUCT_CATEGORY_ID, CATEGORY_NAME, SHOP_ID, DESCRIPTION) 
VALUES (2, 'Delicatessen', 2, 'Only lorem delicatessen here');

INSERT INTO PRODUCT_CATEGORIES (PRODUCT_CATEGORY_ID, CATEGORY_NAME, SHOP_ID, DESCRIPTION) 
VALUES (3, 'Greengrocer', 3, 'Only lorem greengrocer here');

INSERT INTO PRODUCT_CATEGORIES (PRODUCT_CATEGORY_ID, CATEGORY_NAME, SHOP_ID, DESCRIPTION) 
VALUES (4, 'Butcher', 4, 'Only lorem butcher here');

INSERT INTO PRODUCT_CATEGORIES (PRODUCT_CATEGORY_ID, CATEGORY_NAME, SHOP_ID, DESCRIPTION) 
VALUES (5, 'Fishmonger', 5, 'Only lorem fishmonger here');
---------------------------------------------------------------------------------------

-- dummy products
-- bakery products
INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'Lorem ipsum-1', 'Deliciously lorem ipsum dolor init', 19, 1, 'bakery/prod_1.jpg', 'no allergy eat away', 1, 10, 100);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'Lorem ipsum-2', 'Deliciously lorem ipsum dolor init', 19.99, 1, 'bakery/prod_2.jpg', 'no allergy eat away', 1, 10, 100);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'Lorem ipsum-3', 'Deliciously lorem ipsum dolor init', 20, 1, 'bakery/prod_3.jpg', 'no allergy eat away', 1, 10, 100);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'Lorem ipsum-4', 'Deliciously lorem ipsum dolor init', 20.99, 1, 'bakery/prod_4.jpg', 'no allergy eat away', 1, 10, 100);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'Lorem ipsum-5', 'Deliciously lorem ipsum dolor init', 30, 1, 'bakery/prod_5.jpg', 'no allergy eat away', 1, 10, 100);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'Lorem ipsum-6', 'Deliciously lorem ipsum dolor init', 30.99, 1, 'bakery/prod_6.jpg', 'no allergy eat away', 1, 10, 100);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'Lorem ipsum-7', 'Deliciously lorem ipsum dolor init', 40, 1, 'bakery/prod_7.jpg', 'no allergy eat away', 1, 10, 100);
----------------------------------------------------------------------------------------------------------------------------------------------


-- data for delicatessen products
INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Lorem ipsum-1', 'Deliciously lorem ipsum dolor init', 19.99, 1, 'delicatessen/prod_1.jpg', 'no allergy eat away', 1, 10, 100);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Lorem ipsum-2', 'Deliciously lorem ipsum dolor init', 20, 1, 'delicatessen/prod_2.jpg', 'no allergy eat away', 1, 10, 100);
------------------------------------------------------------------------------------------------------------------------------------


-- data for greengrocer products
INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Lorem ipsum-1', 'Deliciously lorem ipsum dolor init', 19.99, 1, 'greengrocer/prod_1.jpg', 'no allergy eat away', 1, 10, 100);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Lorem ipsum-2', 'Deliciously lorem ipsum dolor init', 20, 1, 'greengrocer/prod_2.jpg', 'no allergy eat away', 1, 10, 100);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Lorem ipsum-3', 'Deliciously lorem ipsum dolor init', 20.99, 1, 'greengrocer/prod_3.jpg', 'no allergy eat away', 1, 10, 100);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Lorem ipsum-4', 'Deliciously lorem ipsum dolor init', 30, 1, 'greengrocer/prod_4.jpg', 'no allergy eat away', 1, 10, 100);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Lorem ipsum-5', 'Deliciously lorem ipsum dolor init', 30.99, 1, 'greengrocer/prod_5.jpg', 'no allergy eat away', 1, 10, 100);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Lorem ipsum-6', 'Deliciously lorem ipsum dolor init', 40, 1, 'greengrocer/prod_6.jpg', 'no allergy eat away', 1, 10, 100);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Lorem ipsum-7', 'Deliciously lorem ipsum dolor init', 40.99, 1, 'greengrocer/prod_7.jpg', 'no allergy eat away', 1, 10, 100);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Lorem ipsum-7', 'Deliciously lorem ipsum dolor init', 50, 1, 'greengrocer/prod_8.jpg', 'no allergy eat away', 1, 10, 100);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Lorem ipsum-7', 'Deliciously lorem ipsum dolor init', 50.99, 1, 'greengrocer/prod_9.jpg', 'no allergy eat away', 1, 10, 100);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Lorem ipsum-7', 'Deliciously lorem ipsum dolor init', 60, 1, 'greengrocer/prod_10.jpg', 'no allergy eat away', 1, 10, 100);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Lorem ipsum-7', 'Deliciously lorem ipsum dolor init', 60.99, 1, 'greengrocer/prod_11.jpg', 'no allergy eat away', 1, 10, 100);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Lorem ipsum-7', 'Deliciously lorem ipsum dolor init', 70, 1, 'greengrocer/prod_12.jpg', 'no allergy eat away', 1, 10, 100);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Lorem ipsum-7', 'Deliciously lorem ipsum dolor init', 70.99, 1, 'greengrocer/prod_13.jpg', 'no allergy eat away', 1, 10, 100);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Lorem ipsum-7', 'Deliciously lorem ipsum dolor init', 80, 1, 'greengrocer/prod_14.jpg', 'no allergy eat away', 1, 10, 100);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Lorem ipsum-7', 'Deliciously lorem ipsum dolor init', 80.99, 1, 'greengrocer/prod_15.jpg', 'no allergy eat away', 1, 10, 100);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Lorem ipsum-7', 'Deliciously lorem ipsum dolor init', 100, 1, 'greengrocer/prod_16.jpg', 'no allergy eat away', 1, 10, 100);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Lorem ipsum-7', 'Deliciously lorem ipsum dolor init', 100.99, 1, 'greengrocer/prod_17.jpg', 'no allergy eat away', 1, 10, 100);
------------------------------------------------------------------------------------------------------------------------------------


-- data for butcher products
INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (4, 'Lorem ipsum-1', 'Deliciously lorem ipsum dolor init', 19.99, 1, 'butcher/prod_1.jpg', 'no allergy eat away', 1, 10, 100);
------------------------------------------------------------------------------------------------------------------------------------


-- data for fishmonger products
INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (5, 'Lorem ipsum-1', 'Deliciously lorem ipsum dolor init', 19.99, 1, 'fishmonger/prod_1.jpg', 'no allergy eat away', 1, 10, 100);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (5, 'Lorem ipsum-2', 'Deliciously lorem ipsum dolor init', 20.99, 1, 'fishmonger/prod_2.jpg', 'no allergy eat away', 1, 10, 100);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (5, 'Lorem ipsum-3', 'Deliciously lorem ipsum dolor init', 30, 1, 'fishmonger/prod_3.jpg', 'no allergy eat away', 1, 10, 100);
------------------------------------------------------------------------------------------------------------------------------------

-- DATA FOR BASKETS
--INSERT INTO BASKETS (BASKET_ID, CUSTOMER_ID) VALUES (1, 6);

-- DATA FOR BASKET_PRODUCTS
--INSERT INTO BASKET_PRODUCTS (PRODUCT_ID, BASKET_ID, QUANTITY) VALUES (1, 1, 10);
--INSERT INTO BASKET_PRODUCTS (PRODUCT_ID, BASKET_ID, QUANTITY) VALUES (2, 1, 5);