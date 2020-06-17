-- users data
INSERT INTO USERS (USER_ID, FIRST_NAME, LAST_NAME, EMAIL, VERIFICATION_TOKEN, ADDRESS, PHONE_NUMBER, PASSWORD, PROFILE_IMG, IS_VERIFIED, ACCOUNT_STATUS) VALUES (2, 'John', 'Legend', 'darkbolt32@gmail.com', null, 'Npj-12, Banke Gaon', '9861591162', '4d3c54a22a97802627566a24f2dc7c1b', '11/profile.jpg', 1, 1);
INSERT INTO USERS (USER_ID, FIRST_NAME, LAST_NAME, EMAIL, VERIFICATION_TOKEN, ADDRESS, PHONE_NUMBER, PASSWORD, PROFILE_IMG, IS_VERIFIED, ACCOUNT_STATUS) VALUES (3, 'Rajbir', 'Chand', 'kratos31m@gmail.com', null, 'Kathmandu', '9861591162', '4d3c54a22a97802627566a24f2dc7c1b', '12/profile.jpg', 1, 1);
INSERT INTO USERS (USER_ID, FIRST_NAME, LAST_NAME, EMAIL, VERIFICATION_TOKEN, ADDRESS, PHONE_NUMBER, PASSWORD, PROFILE_IMG, IS_VERIFIED, ACCOUNT_STATUS) VALUES (4, 'Bijay', 'Giri', 'bijaygiri620@gmail.com', null, 'Mahendranagar, Tinkune', '9861591162', '4d3c54a22a97802627566a24f2dc7c1b', '13/profile.jpg', 1, 1);
INSERT INTO USERS (USER_ID, FIRST_NAME, LAST_NAME, EMAIL, VERIFICATION_TOKEN, ADDRESS, PHONE_NUMBER, PASSWORD, PROFILE_IMG, IS_VERIFIED, ACCOUNT_STATUS) VALUES (5, 'Kadamber', 'Verma', 'kadamberverma@gmail.com', null, 'Npj-8, Bhrikutinagar', '9861591162', '4d3c54a22a97802627566a24f2dc7c1b', '14/profile.jpg', 1, 1);
INSERT INTO USERS (USER_ID, FIRST_NAME, LAST_NAME, EMAIL, VERIFICATION_TOKEN, ADDRESS, PHONE_NUMBER, PASSWORD, PROFILE_IMG, IS_VERIFIED, ACCOUNT_STATUS) VALUES (6, 'Sushant', 'Teewary', 'sushantteewary4@gmail.com', null, 'Kathmandu', '9861591162', '4d3c54a22a97802627566a24f2dc7c1b', '15/profile.jpg', 1, 1);
INSERT INTO USERS (USER_ID, FIRST_NAME, LAST_NAME, EMAIL, VERIFICATION_TOKEN, ADDRESS, PHONE_NUMBER, PASSWORD, PROFILE_IMG, IS_VERIFIED, ACCOUNT_STATUS) VALUES (1, 'TCHFEC', 'ADMIN', 'bcdipeshwork@gmail.com', null, 'NPJ-12, Banke Gaon', '9861591162', '4d3c54a22a97802627566a24f2dc7c1b', '1/profile.png', 1, 1);

-- traders data
INSERT INTO TRADERS (USER_ID, TRADER_ID) VALUES (2, 1);
INSERT INTO TRADERS (USER_ID, TRADER_ID) VALUES (3, 2);
INSERT INTO TRADERS (USER_ID, TRADER_ID) VALUES (4, 3);
INSERT INTO TRADERS (USER_ID, TRADER_ID) VALUES (5, 4);
INSERT INTO TRADERS (USER_ID, TRADER_ID) VALUES (6, 5);

-- admins data
INSERT INTO ADMINS (USER_ID, ADMIN_ID) VALUES (1, 1);

-- trader types data
INSERT INTO TRADER_TYPES (TRADER_ID, TRADER_TYPE_ID, DESCRIPTION) VALUES (1, 1, 'Bakery Trader');
INSERT INTO TRADER_TYPES (TRADER_ID, TRADER_TYPE_ID, DESCRIPTION) VALUES (2, 2, 'Delicatessen Trader');
INSERT INTO TRADER_TYPES (TRADER_ID, TRADER_TYPE_ID, DESCRIPTION) VALUES (3, 3, 'Greengrocer Trader');
INSERT INTO TRADER_TYPES (TRADER_ID, TRADER_TYPE_ID, DESCRIPTION) VALUES (4, 4, 'Butcher Trader');
INSERT INTO TRADER_TYPES (TRADER_ID, TRADER_TYPE_ID, DESCRIPTION) VALUES (5, 5, 'Fishmonger Trader');

-- collection slots data
INSERT INTO COLLECTION_SLOTS (ADMIN_ID, COLLECTION_SLOT_ID, LOCATION, COLLECTION_TIME, MAXIMUM_ORDER, COLLECTION_DAY, AVAILABLE_ORDER) VALUES (1, 1, null, 'Wednesday (10am - 1pm)', 20, 'Wednesday', 20);
INSERT INTO COLLECTION_SLOTS (ADMIN_ID, COLLECTION_SLOT_ID, LOCATION, COLLECTION_TIME, MAXIMUM_ORDER, COLLECTION_DAY, AVAILABLE_ORDER) VALUES (1, 2, null, 'Thursday (1am - 4pm)', 20, 'Thursday', 20);
INSERT INTO COLLECTION_SLOTS (ADMIN_ID, COLLECTION_SLOT_ID, LOCATION, COLLECTION_TIME, MAXIMUM_ORDER, COLLECTION_DAY, AVAILABLE_ORDER) VALUES (1, 3, null, 'Friday (4am - 7pm)', 20, 'Friday', 20);

-- shops data
INSERT INTO SHOPS (TRADER_ID, TRADER_TYPE_ID, SHOP_ID, SHOP_NAME) VALUES (1, 1, 1, 'John Legend Shop');
INSERT INTO SHOPS (TRADER_ID, TRADER_TYPE_ID, SHOP_ID, SHOP_NAME) VALUES (2, 2, 2, 'Rajbir Chand Shop');
INSERT INTO SHOPS (TRADER_ID, TRADER_TYPE_ID, SHOP_ID, SHOP_NAME) VALUES (3, 3, 3, 'Bijay Giri Shop');
INSERT INTO SHOPS (TRADER_ID, TRADER_TYPE_ID, SHOP_ID, SHOP_NAME) VALUES (4, 4, 4, 'Kadamber Verma Shop');
INSERT INTO SHOPS (TRADER_ID, TRADER_TYPE_ID, SHOP_ID, SHOP_NAME) VALUES (5, 5, 5, 'Sushant Teewary Shop');

-- product categories data
INSERT INTO PRODUCT_CATEGORIES (SHOP_ID, PRODUCT_CATEGORY_ID, CATEGORY_NAME, DESCRIPTION) VALUES (1, 1, 'Bakery', 'Bakery products will be sold under this shop.');
INSERT INTO PRODUCT_CATEGORIES (SHOP_ID, PRODUCT_CATEGORY_ID, CATEGORY_NAME, DESCRIPTION) VALUES (2, 2, 'Delicatessen', 'Delicatessen products will be sold under this shop.');
INSERT INTO PRODUCT_CATEGORIES (SHOP_ID, PRODUCT_CATEGORY_ID, CATEGORY_NAME, DESCRIPTION) VALUES (3, 3, 'Greengrocer', 'Greengrocer products will be sold under this shop.');
INSERT INTO PRODUCT_CATEGORIES (SHOP_ID, PRODUCT_CATEGORY_ID, CATEGORY_NAME, DESCRIPTION) VALUES (4, 4, 'Butcher', 'Butcher products will be sold under this shop.');
INSERT INTO PRODUCT_CATEGORIES (SHOP_ID, PRODUCT_CATEGORY_ID, CATEGORY_NAME, DESCRIPTION) VALUES (5, 5, 'Fishmonger', 'Fishmonger products will be sold under this shop.');

-- products data
-- Bakery Data
INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'Macadamia Coconut Cookies', 'These cookies garnered a collective ''Mmmm!'' when we first tasted them. Decadent macadamia nuts, chunks of rich chocolate and chewy flaked coconut are suspended in buttery cookie dough. Perfect for dunking in a tall, cold glass of milk — also perfect for hoarding.', 4.99, 1, 'bakery/product1.jpg', 'N/A', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'Sticky Toffee Pudding Twin Pack, Frozen', 'Scrumptious moist cake made with fresh dates, espresso, and vanilla in a buttery toffee sauce! (from Sticky Toffee Pudding Co.)', 4.99, 1, 'bakery/product2.jpg', 'coffee allergy whic causes  skin rashes, such as hives or blotches of red skin.', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'Brooklyn Mills Fresh Plain Baguette', 'Brooklyn Mills Bakery uses 100% stone milled whole grain flour from local farms. We bring almost five decades of baking experience to creating nutrient dense, naturally leavened, absolutely delicious European style breads. Stone milling is the oldest, slowest, and best method of grinding whole grains. It is a gentle and cool process that preserves every good part of the grain. We slowly grind our whole grains using a small, natural, pink granite stone mill that never overheats the flour. We transform it into living dough within hours of being ground.', 3.99, 1, 'bakery/product3.jpg', 'N/A', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'Challah Rolls', 'This freshly baked challah was made with love in Queens, New York by our partners at Northside Bakery. It contains no preservatives, fillers, or unpronounceable ingredients.', 6, 1, 'bakery/product4.jpg', 'N/A', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'Fresh Brioche Buns', 'We''ve partnered with our friends at Brooklyn Mills to bring you this perfect pack of fresh and flavorful brioches. Master baker Aristos Rusty Tzannos brings over five decades of artisanal baking experience to the creation of every single bun—and you can taste the difference! We love them toasted until golden brown and then buttered generously. Great for burgers, veggie burgers, and all kinds of sandwiches.', 5.99, 1, 'bakery/image-product5.jpg', 'N/A', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'Brooklyn Mills Brioche Loaf', 'We''ve been told that this is the "best brioche ever." And we''d have to agree. It''s made using farm-fresh eggs, real butter, and plenty of time so it has that truly authentic, luxuriant texture. One taste and you''ll immediately know what sets Brooklyn Mills apart.', 7.99, 1, 'bakery/product6.jpg', 'N/A', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'Brooklyn Mills Panino Sandwich Rolls, Frozen', 'Brooklyn Mills Bakery uses 100% stone milled whole grain flour from local farms. We bring almost five decades of baking experience to creating nutrient dense, naturally leavened, absolutely delicious European style breads. Stone milling is the oldest, slowest, and best method of grinding whole grains. It is a gentle and cool process that preserves every good part of the grain. We slowly grind our whole grains using a small, natural, pink granite stone mill that never overheats the flour. We transform it into living dough within hours of being ground. (from Brooklyn Mills)', 14.11, 1, 'bakery/product7.jpg', 'N/A', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'Oven-Ready Multigrain Rolls', 'Satisfying and substantial, our hearty rolls are filled with bulgur, wheatberries, sunflower seeds and wheat bran for extra-nutty flavor. Just bake briefly and these rolls will emerge from your oven warm and fragrant. We think they''re just the thing when they''re toasted and buttered in the morning or dipped in soups and stews for lunch or dinner.', 3.99, 1, 'bakery/product8.jpg', 'N/A', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'The Gluten Free Bakery Burger Buns', 'Our gluten-free burger buns were created to meet our demanding criteria for the "perfect bun"—light, resilient, fluffy enough to soak up juices and ketchup, hardy enough to not fall apart, and most importantly, delicious—not just "good for gluten-free," but delicious, period. They toast, grill, freeze, thaw and reheat perfectly. They look, perform and taste like how an artisan brioche roll would.', 6.99, 1, 'bakery/product9.jpg', 'N/A', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'Northside Bakery Pretzel Rolls', 'These delicious pretzel buns are a burger lover''s dream! The unique brown colored buns are tasty, encompass a soft texture and complement any dinner table. Pretzel buns originate from Germany and are made using wheat flour, pretzel base and a hint of salt. Whether you are enjoying a burger or chicken sandwich these buns are like no other. (from Northside Bakery)', 4.99, 1, 'bakery/product10.jpg', 'N/A', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'Amy''s Bread Semolina Raisin Fennel Rolls', 'If one bread defines Amy''s Bread, it''s the Semolina Golden Raisin Fennel Rolls. They''re slightly sweet, aromatic from the fennel seeds, gritty from cornmeal (in the best way), and they have a great crust. Enjoy for breakfast, lunch or dinner. Pairs well with poultry, fish, and cheese.', 7.99, 1, 'bakery/product11.jpg', 'N/A', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'Arnold 100% Whole Wheat Bread', 'Our 100% whole wheat bread is made with whole grains, is a good source of fiber and every slice adds hearty flavor to sandwiches and more. (from Arnold)', 4.69, 1, 'bakery/product12.jpg', 'N/A', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'Arnold Healthy Multi-Grain Bread', 'Packed with several different whole grains that contain fiber, you''ll get nutrition and great taste in every slice. (from Arnold)', 4.69, 1, 'bakery/product13.jpg', 'N/A', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'Orwashers Thick Sliced Righteous Rye Boule', 'An updated take on the classic corn rye, the crispy chewy crust of our rye bread gives way to a moist interior studded with caraway seeds. The grainy nutty aromas and slight sour taste are enhanced by our not-so secret ingredient: Sixpoint''s Righteous Rye Ale. For bread and beer enthusiasts alike, it''s the perfect loaf for smoked meats, charcuterie, cheese or soup.', 4.99, 1, 'bakery/product14.jpg', 'N/A', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'Vermont Bread Company Organic Soft White Bread', 'At Vermont Bread Company, we''re proud to have a long tradition of baking delicious, all-natural breads and baked goods. Since 1978, we''ve taken great pride in baking our breads with care and traditional, scratch recipes that have been handed down throughout the generations. And, we don''t use any artificial ingredients, high fructose corn syrup, or chemical preservatives or dough conditioners (most of which we couldn''t even pronounce, much less want to put in our breads)! (from Vermont Bread Company)', 4.99, 1, 'bakery/product15.jpg', 'N/A', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'Korn''s Bakery Seeded Jewish Rye Bread', 'Airy, earthy, and aromatic, this traditional Jewish rye bread makes any hearty deli sandwich complete. Korn''s Bakery has been creating delicious loaves of bread since the 1950s using traditional Eastern European recipes that have stayed in the family through the decades. Pile high pastrami, spread on some mustard, and you''ve got a delicious deli sandwich in the comfort of your own home.', 3.99, 1, 'bakery/product16.jpg', 'N/A', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'Arnold Select Sandwich Thins, Multi-Grain', 'We''ve listened to you and made Sandwich Thins rolls even better! Crafted with pride and baked with premium ingredients like olive oil and sea salt, each bite is now more delicious than ever. Perfectly-sized and now 150 calories per roll, we love them and know you will too! (from Arnold)', 4.69, 1, 'bakery/product17.jpg', 'N/A', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'Vermont Bread Company Soft White All-Natural Bread', 'Our wholesome white bread is made with care from traditional recipes and a love for baking without any artificial ingredients! (from Vermont Bread Company)', 4.79, 1, 'bakery/product18.jpg', 'N/A', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'Brooklyn Mills E.V.O.O. Sliced Sourdough Spelt Bread', 'Spelt, with its mild, nutty flavor, is a popular alternative to wheat. Combined with the process of fermentation, this bread is beneficial for good gut health. The long fermentation process of making sourdough releases nutrients like iron, zinc, magnesium, antioxidants, folic acid and other B vitamins. The natural way this occurs allows our bodies to process them more easily. Adding Extra virgin Olive oil is just icing on the cake. (from Brooklyn Mills)', 4.89, 1, 'bakery/product19.jpg', 'N/A', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'Mestemacher Pumpernickel Bread', 'This delicious dark whole meal rye bread has a rich and sweet taste, achieved through gentle baking for up to 20 hours. (from Mestemacher)', 3.99, 1, 'bakery/product20.jpg', 'N/A', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'FreshDirect Flower Cupcakes', 'Hats off to our talented bakers, because these cupcakes are positively gorgeous. Each one is piped with an ornate floral design that is almost too pretty to eat. But their moist vanilla base and rich vanilla buttercream are hard to resist. These will fit in at even the fanciest of parties.', 8.99, 1, 'bakery/product21.jpg', 'N/A', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'House of Cupcakes Assorted Mini Cupcakes', 'You want to bring something special to the party, but you have no idea what everyone would like. Don''t play the guessing game any longer — just grab this crowd-pleasing assortment and you''ll get something for everyone!', 13, 1, 'bakery/product22.jpg', 'N/A', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'House of Cupcakes Chocolate Crème-Filled Cupcakes', 'Childhood memories rush back with a bite of our chocolate cupcake, filled with creamy marshmallow and topped with chocolate ganache and a vanilla wiggle of frosting.', 7, 1, 'bakery/product23.jpg', 'N/A', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'House of Cupcakes Vanilla Riot Cupcakes', 'Named after Ron and Ruthie''s son, Riot, this vanilla cupcake is topped with a traditional vanilla buttercream, and sprinkled with white chocolate vermicelli.', 6.99, 1, 'bakery/product24.jpg', 'N/A', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'Stern''s Seven Layer Cake', 'Decadent chocolate frosting covering seven layers of sponge cake sandwiching a rich buttercream? There''s literally nothing not to love. These kosher treats are baked fresh in Brooklyn by the master bakers at Stern''s.', 7.99, 1, 'bakery/product25.jpg', 'N/A', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'FreshDirect Frozen Cappuccino Cheesecakes', 'All the decadence of cheesecake with a dash of coffee flavor! This mini cheesecake is the perfect dessert to keep in your freezer for whenever your sweet tooth beckons. Espresso is blended into the cream cheese base, which also gets coated in a layer of chocolate cookie crumbs to make things extra special.', 7.72, 1, 'bakery/product26.jpg', 'N/A', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'Mitica Fig Almond Cake w/ Pajarero Figs and Marcona Almonds', 'This freshly pressed fig cake is handmade in Valencia, Spain. It is excellent paired with cheese. Slice it thinly or chunk it and add it to your cheese plate for a wonderful contrast of savory and sweet. Also perfect for a snack or in salads. (from Mitica)', 9, 1, 'bakery/product27.jpg', 'allergy info', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'Pallini Limoncello Layer Cake', 'his cake contains two layers of lemony sponge cake wrapped in a delicious Limoncello icing and soft cake crumbles. Impress your guests with this delightful desert. This product contains less than 0.5% alcohol by volume. (from Pallini)', 19.99, 1, 'bakery/product28.jpg', 'Alchol Alergy', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'Pearl River Mini Chocolate Cheesecake, Frozene', 'This creamy milk chocolate cheesecake sits on a dark chocolate biscotti crumb crust. (from Pearl River)', 4, 1, 'bakery/product29.jpg', 'N/A', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'Pearl River Mini New York Cheesecake, Frozen', 'Classic New York style cheesecake laced with Madagascar Vanilla sitting on an authentic biscotti crumb crust. (from Pearl River)', 8, 1, 'bakery/product30.jpg', 'N/A', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'Hudson''s Gourmet Old School Soft-Baked Chocolate Chunk Cookies', 'Pure chocolate chunks, real butter, eggs, and a secret combination of nutritious ingredients transform a simple cookie into a homespun moment of dessert perfection. Relive a favorite memory or create a new one with each bite of Old School. (from Hudson''s Gourmet)', 7.99, 1, 'bakery/product31.jpg', 'N/A', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'FreshDirect Mini Rice Crispie Squares', 'Crunchy puffed rice is combined with a double dose of sweet, creamy marshmallow sauce in these delicious mini treats. Their small size makes them perfect for packed lunches and little hands, but both adults and children will agree — it''s hard to stop at just one.', 7, 1, 'bakery/product32.jpg', 'N/A', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'FreshDirect Chocolate Chip Cookies', 'Chewy, soft cookies with chocolate in every bite, we decided to leave out the nuts and just load these babies with semisweet chocolate chips. This classic cookie offers everything you could ever want in a treat: the sweet taste of brown sugar, decadent buttery goodness, and chocolate indulgence of course. Milk just doesn''t have a better friend.', 5.99, 1, 'bakery/product33.jpg', 'N/A', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'Ruggero''s Bake Shop Rainbow Cookies', 'The classic rainbow cookie is one of our favorite treats, and this one from our friends at Ruggero''s Bake Shop is unquestionably the best we''ve ever tasted. Layers of almond-based sponge cake are held together with sweet raspberry jam and topped with a rich chocolate coating. Serve with coffee as a mid-morning indulgence or the perfect end to a delicious meal', 6.29, 1, 'bakery/product34.jpg', 'N/A', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'Stern''s Mini Black & White Cookies ', 'Ahh! The classic black-and-white cookie. With its soft and spongy cookie-ness and irresistible black and white frosting, it never fails to delight. These kosher treats are baked fresh in Brooklyn by the master bakers at Stern''s.', 5.99, 1, 'bakery/product35.jpg', 'N/A', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'Cathy''s Biscotti Cranberry Chocolate Almond Biscotti', 'Vanilla biscotti bursting with tangy cranberries, bitter-sweet chocolate, and roasted almonds.All of our biscotti begin with a rich buttery base. We add Callebaut cocoa and bitter-sweet chocolate, Madagascar Bourbon vanilla, fresh eggs, fruits, roasted nuts, and spices to bring you an exquisite treat. (from Cathy''s Biscotti)', 7.99, 1, 'bakery/product36.jpg', 'N/A', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'FreshDirect Mini Coconut Macaroons', 'Our bakers use frothy egg whites and sugar to make these heavenly coconut confections. They''re golden on top with a tender, chewy center inside. While delicate enough to pair with créme brulee and a knockout accompaniment for tropical fruit salads, these sweet cookie classics also go solo with panache. Warning! Our in-house tests have found them to be dangerously addictive.', 5.99, 1, 'bakery/product37.jpg', 'N/A', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'Hudson''s Gourmet Cookie Platter, Small', 'Hudson''s Gourmet soft-baked cookies are a cookie lover''s delight and deserve center of table status at your next party. They''re oversized, the better to savor each cookie''s mind-blowing flavor and unique, chewy texture. Platter contains an assortment of Hudson Gourmet''s most-loved cookies: Blonde Ambition (oatmeal butterscotch stuffed with caramel); Old School Chocolate Chunk (pure chocolate chunks, real butter, eggs, and secret ingredients); Celebration (velvety white chocolate, fresh sweet cream butter, and festive sprinkles); Molasses Ginger (molasses and ginger dough topped with turbinado sugar); and Home Wrecker Triple Chocolate (espresso-topped double chocolate dough filled with dark chocolate chunks and bittersweet chocolate', 25, 1, 'bakery/product38.jpg', 'N/A', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'FreshDirect Apple Pie', 'It''s always a good time to have a slice of apple pie! Mounds of sliced tart apples are baked in a buttery, flaky piecrust until soft and swimming in their own caramelized sugar sauce and our special cinnamon spice. Serve this timeless American classic as is, or top with a nice scoop of vanilla ice cream.', 16, 1, 'bakery/product39.jpg', 'N/A', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'Little Red Kitchen Bake Shop Ready-to-Bake Cookie Pie, The Elvis', 'he King loved his peanut butter and banana sandwiches and we''ve turned that combination (plus some chocolate!) into this incredibly addicting, vegan-friendly cookie pie', 24, 1, 'bakery/product40.jpg', 'N/A', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'FreshDirect Blueberry Pie', 'Juicy blueberries are the star of this classic confection. We choose the best wild and cultivated blueberries at the peak of sweetness, then tuck them in a light, flaky crust. We don''t think you can improve upon perfection, but this pie shines when served with a scoop of vanilla ice cream or a fruit sorbet.', 9, 1, 'bakery/product41.jpg', 'N/A', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'Wholly Wholesome Organic Whole Wheat Pie Shells, Frozen', 'Dessert is a fun item to make but sometimes the thought of making pastry from scratch is too much for busy lifestyles. We have the perfect solution — use Wholly Wholesome Organic Pie Shells as your dessert base (or top!) and get creative with your fillings and toppings. Lemon Meringue, Apple Streusel, and Quiche Lorraine all seem so much easier to complete with all-natural, frozen pie shells waiting patiently in the freezer to be created into something delicious. (from Wholly Wholesome)', 10, 1, 'bakery/product42.jpg', 'N/A', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'Morrisons Corn Muffins', 'PDelicately soft, tender, and sweet, these traditional cornbread muffins are the true cream of the crop. Morrisons Pastry''s very first muffin variety, the flavor and aroma of real sweet corn is baked into every bite. Team it up with a hearty bowl of chili for a warm and satisfying fall delight or enjoy as a side to any Southern-inspired barbecue.', 8.12, 1, 'bakery/product43.jpg', 'N/A', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'Morrisons Marble Crunch Muffins', 'When you can''t decide if you''re in the mood for chocolate or vanilla, these moist, marbled muffins will satisfy both taste temptations. The alternating layers of light and tender vanilla with satiating swirls of luscious, velvety chocolate are topped off with crunchy cinnamon for supreme sweetness. We love them as a grab-and-go breakfast or an after-dinner treat.', 8.99, 1, 'bakery/product44.jpg', 'N/A', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'Morrisons Blueberry Banana Whole Grain Muffins', 'Whole-grain goodness and tangy-sweet blueberries pair perfectly with the natural sweetness of banana in these muffins. The cake is dense and soft, with a texture similar to pound cake. Indulge in this homemade muffin with your morning bowl of cereal or with a cup of relaxing herbal tea for an evening snack.', 91, 1, 'bakery/product45.jpg', 'N/A', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'Abe''s Mom''s Gluten Free and Vegan Muffins, Lemon Poppy', 'The poppy seeds add a perfect crunchy texture to these moist, bite-sized, lemony vegan muffins', 8, 1, 'bakery/product46.jpg', 'N/A', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'Pots & Co. Little Pots of 70% Chocolate', 'Created by Michelin trained chefs who wanted everyone to delight in restaurant quality desserts, these ready-to-eat, smooth, luxurious Little Pots of 70% Chocolate are the perfect delicacy for any dark chocolate lover, and are expertly blended from single origin Colombian chocolate. This is a delicious, sophisticated chocolate Pot', 11, 1, 'bakery/product.47.jpg', 'N/A', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'FreshDirect Frozen Chocolate Soufflé', 'You love a rich chocolate soufflé, but who has the time to put one together? We make it simple. Just heat your oven and pop in these individual soufflés. In mere minutes, you''ll look like a kitchen pro, thanks to these airy, decadent desserts made with deep, dark, high-quality Belgian chocolate. Impressive and delicious, with no fuss and no mess — and as a bonus, you get to keep the attractive ceramic heat-and-serve ramekins.', 11, 1, 'bakery/product48.jpg', 'N/A', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'Gina''s Pasticceria  Banana Pudding', 'Gina''s Banana Pudding is fluffy and creamy. You won''t want to resist this vanilla pudding with layers of Nilla Wafers and fresh banana slices. (from Gina''s Pasticceria)', 13, 1, 'bakery/product49.jpg', 'N/A', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'Sticky Toffee Pudding Co. Sticky Toffee Pudding Twin Pack, Frozen', 'Scrumptious moist cake made with fresh dates, espresso, and vanilla in a buttery toffee sauce', 14, 1, 'bakery/product50.jpg', 'N/A', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (1, 'Jack Bakes Hand-Braided Challah Bread, Frozen', 'What makes our Challah unique is that it is all made by hand. We start with six strands of fresh dough that has been kneaded and triple-proofed. Our Hand-Braided Challah Bread is then baked to perfection; it is moist and flavorful. This bestseller can be prepared in a variety of ways: slice it for sandwiches, make delicious French toast, holiday stuffing, and our favorite—bread pudding', 19.12, 1, 'bakery/product51.jpg', 'N/A', 1, 10, 500);



-- Delicatessen Data
INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Macaroni Salad', 'Nothing shares the plate with a turkey sandwich like macaroni salad. Tender elbow pasta, crunchy carrots, celery and diced red peppers get all gussied up with a lemony mayonnaise dressing. As long as picnicking remains a priority, there will be demand for a classic macaroni salad.', 5.49, 1, 'delicatessen/Macaroni Salad.jpg', 'No Hydrogenated Oils used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Pesto Pasta Salad', 'Al dente orecchiette (Italian for "little ears") pasta has the perfect texture and shape to hold lots of garlicky, green pesto in this hearty pasta salad. Blended with grated parmesan cheese for added "oomph", this pasta salad can be served alongside a sandwich platter or an assortment of other salads.', 6.99, 1, 'delicatessen/Pesto Pasta Salad.jpg', 'Please note: April kitchen uses eggs, fish, milk, shellfish, soy, peanuts, tree nuts and wheat ingredients.', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Chicken Salad', 'Morsels of tender poached chicken breast tossed with mayonnaise, scallions and celery make a traditional salad that will please your inner picnic enthusiast. Pack a creamy chicken salad sandwich in your lunch for a tasty, grownup meal that will make you feel like a kid again.', 11.99, 1, 'delicatessen/Chicken Salad.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Egg Salad', 'Perfectly hard-boiled eggs, dressed with creamy mayonnaise, chives, sea salt and black pepper. The resulting salad is a rich golden yellow. Served on seeded rye with cool, crisp iceberg, this egg salad makes a delicious sandwich. For a variation on the traditional, spread on whole-grain bread and mound with alfalfa sprouts.', 7.99, 1, 'delicatessen/Egg Salad.jpg', 'Please note: April kitchen uses eggs, fish, milk, shellfish, soy, peanuts, tree nuts and wheat ingredients.', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Direct Egg Salad', 'Perfectly hard-boiled eggs, dressed with creamy mayonnaise, chives, sea salt and black pepper. The resulting salad is a rich golden yellow. Served on seeded rye with cool, crisp iceberg, this egg salad makes a delicious sandwich. For a variation on the traditional, spread on whole-grain bread and mound with alfalfa sprouts. Portable and effortless, grab one (or pair with a deli salad companion) for an easy lunch or afternoon snack.', 5.29, 1, 'delicatessen/Direct Egg Salad.jpg', 'Please note: April kitchen uses eggs, fish, milk, shellfish, soy, peanuts, tree nuts and wheat ingredients.', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Chicken, Kale, and Almond Salad', 'Crumbled chicken breast combines with fresh kale and crunchy almonds to create a protein-packed salad. A tasty and original side for any main dish, it"s also perfect in a pita or super in soups. Enjoy it as a post-workout meal or steal the show at your next potluck picnic.', 5.49, 1, 'delicatessen/Chicken, Kale, and Almond Salad.jpg', 'Please note: April kitchen uses eggs, fish, milk, shellfish, soy, peanuts, tree nuts and wheat ingredients.', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Sliced Rosemary Grilled Chicken Breast', 'A grilled chicken breast goes with everything — fabulously. Ours is prepared just right; a garlic-rosemary marinade permeates the chicken breast before it hits the grill. Sliced into the perfect size to cut down prep time, this is one staple you"ll always be glad to have around — toss it onto fresh salads, into pasta dishes or eat as-is with a favorite side for a quick lunch.', 5.99, 1, 'delicatessen/Sliced Rosemary Grilled Chicken Breast.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Sliced Grilled Chicken', 'Our tender salt and pepper chicken breast goes with just about anything. Seasoned perfectly and grilled to greatness, it comes sliced and ready for action, so it"s always handy to have around. Toss it in salads, pair it with pasta, sandwich it in a crusty baguette smeared with mayo, or enjoy as an entree with your favorite sides.', 5.99, 1, 'delicatessen/Sliced Grilled Chicken.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Wild-Caught Tuna Salad', 'Sweet, creamy tuna salad, just like the homemade kind. The mild flavor of the tender fish is even further mellowed with mayo, and the silky texture gets a crunchy lift from chopped celery. Scoop tuna salad onto whole wheat bread with lettuce and tomato.', 5.29, 1, 'delicatessen/Wild-Caught Tuna Salad.jpg', 'Please note: April kitchen uses eggs, fish, milk, shellfish, soy, peanuts, tree nuts and wheat ingredients.', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Steamed Shrimp', 'Tender and tasty, our salt and pepper shrimp go with just about anything. Seasoned and steamed to succulent perfection, they"re bursting with juicy flavor and come ready to toss in salads or pair with pasta. We like to use them in our favorite recipes that call for shrimp—risottos, stews, sauces, and soups—but we especially love them in paella and gumbo.', 6.99, 1, 'delicatessen/Steamed Shrimp.jpg', 'Please note: April kitchen uses eggs, fish, milk, shellfish, soy, peanuts, tree nuts and wheat ingredients.', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Direct Wild-Caught Tuna Salad', 'Sweet, creamy tuna salad, just like the homemade kind. The mild flavor of the tender fish is even further mellowed with mayo, and the silky texture gets a crunchy lift from chopped celery. Scoop tuna salad onto whole wheat bread with lettuce and tomato.', 11.99, 1, 'delicatessen/Direct Wild-Caught Tuna Salad.jpg', 'Please note: April kitchen uses eggs, fish, milk, shellfish, soy, peanuts, tree nuts and wheat ingredients.', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Creamy Coleslaw', 'The quintessential deli slaw: shredded cabbage is mixed with carrot and doused with mayonnaise and vinegar to produce a powerfully tangy kick. The texture is crisp; the taste is bright. Serve alongside deli sandwiches or picnic fare. And for flavor and crunch, spread a layer on your next turkey and Swiss on rye.', 5.99, 1, 'delicatessen/Creamy Coleslaw.jpg', 'Please note: April kitchen uses eggs, fish, milk, shellfish, soy, peanuts, tree nuts and wheat ingredients.', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Curried Chicken Salad', 'Aromatic curry and toasted fenugreek add exotic, spicy depth to classic chicken salad. We toss celery, red onions, and cubes of poached chicken breast in a curried mayo-based dressing that"s pumped up with plump sweet raisins. Try serving wrap style in naan bread (or flour tortillas) with some green-leaf lettuce and a spoonful of mango chutney.', 10.99, 1, 'delicatessen/Curried Chicken Salad.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Wild-Caught Mediterranean Tuna Salad', 'The classic sandwich staple has been given an elegant spin by way of the Mediterranean. Tender white meat wild-caught tuna is blended with red onions, parsley, dill, lemon juice and briny capers. Olive oil brings a fruity, glossy finish to this zesty tuna salad — and makes it very picnic-friendly! Top with an aged Asiago for a grown-up tuna melt or toss with cooked pasta.', 5.99, 1, 'delicatessen/Wild-Caught Mediterranean Tuna Salad.jpg', 'Please note: April kitchen uses eggs, fish, milk, shellfish, soy, peanuts, tree nuts and wheat ingredients.', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Greek Orzo Pasta Salad', 'The Greek God of salads. Creamy feta, crunchy cucumber, briny olives, fresh tomato, pepperoncini peppers, and orzo pasta are tossed in our chef"s Greek dressing. Bring to your next potluck picnic and you"ll have anything but a Greek tragedy on your hands.', 7.99, 1, 'delicatessen/Greek Orzo Pasta Salad.jpg', 'Please note: April kitchen uses eggs, fish, milk, shellfish, soy, peanuts, tree nuts and wheat ingredients.', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Direct Curried Chicken Salad', 'Aromatic curry and toasted fenugreek add exotic, spicy depth to classic chicken salad. We toss celery, red onions, and cubes of poached chicken breast in a curried mayo-based dressing that"s pumped up with plump sweet raisins. Try serving wrap style in naan bread (or flour tortillas) with some green-leaf lettuce and a spoonful of mango chutney.', 5.99, 1, 'delicatessen/Direct Curried Chicken Salad.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Green Vegetable Couscous Salad', 'Whole-wheat couscous is tossed with asparagus, peas, zucchini, and parsley—and seasoned with lemon zest—to bring this bright and refreshing salad to life. As flavorful as it is versatile, this salad thrives alongside almost any meat or fish dish, but it"s also great to throw in your bag for a light lunch. Simply drizzle on our delightful lemon vinaigrette and enjoy!', 7.99, 1, 'delicatessen/Green Vegetable Couscous Salad.jpg', 'Please note: April kitchen uses eggs, fish, milk, shellfish, soy, peanuts, tree nuts and wheat ingredients.', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Coleslaw with Whole Grain Mustard Dressing', 'Crisp, refreshing and just a smidge spicy, this coleslaw gets its zip from tangy whole-grain mustard dressing — instead of the more common mayo-based dressing. The slivered green cabbage and carrots have plenty of crunch and color, making this coleslaw a vibrant side for hot dogs, burgers or even a smoked pork chop. Yum!', 6.99, 1, 'delicatessen/Coleslaw with Whole Grain Mustard Dressing.jpg', 'Please note: April kitchen uses eggs, fish, milk, shellfish, soy, peanuts, tree nuts and wheat ingredients.', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Kale, Farro, and Roasted Artichoke Salad', 'This one"s a FreshDirect staff favorite! Tuscan kale"s deliciously robust and earthy flavor comes to the fore in this slightly sweet, tantalizingly tangy (thanks, lemon vinaigrette!), simple-yet-sophisticated salad. Hearty farro grains and roasted artichokes beautifully complement each other to complete the dish. It"s perfect as a side to any lunch or dinner entree, but most of all we love serving it up with yogurt-marinated lamb or chicken and a tahini-based dressing.', 9.99, 1, 'delicatessen/Kale, Farro, and Roasted Artichoke Salad.jpg', 'Please note: April kitchen uses eggs, fish, milk, shellfish, soy, peanuts, tree nuts and wheat ingredients.', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Direct Greek Orzo Pasta Salad', 'The Greek God of salads. Creamy feta, crunchy cucumber, briny olives, fresh tomato, pepperoncini peppers, and orzo pasta are tossed in our chef"s Greek dressing. Bring to your next potluck picnic and you"ll have anything but a Greek tragedy on your hands.', 4.99, 1, 'delicatessen/Direct Greek Orzo Pasta Salad.jpg', 'Please note: April kitchen uses eggs, fish, milk, shellfish, soy, peanuts, tree nuts and wheat ingredients.', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Chicken Salad, Feta and Artichokes', 'It"s chicken salad by way of the Greek islands! Juicy chunks of poached chicken breast are blended with artichoke hearts, tangy feta cheese, and briny capers. Oregano and crushed red pepper add earthy, sun-blasted spice while fruity olive oil brings it all together. Try this zesty, creamy salad in a whole wheat pita with baby spinach or scoop some on top of a bed of chopped romaine hearts.', 5.99, 1, 'delicatessen/Chicken Salad, Feta and Artichokes.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Lobster Salad', 'A supreme summer fave! The star ingredient in your classic New England lobster roll: tender lobster chunks steamed to perfection and mixed with crispy, crunchy celery and subtly spiced mayonnaise dressing.', 20.99, 1, 'delicatessen/Lobster Salad.jpg', 'Please note: April kitchen uses eggs, fish, milk, shellfish, soy, peanuts, tree nuts and wheat ingredients.', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Turkey Salad with Cranberries and Walnuts', 'One of our favorite things about Thanksgiving is making a sandwich with the leftover turkey and cranberry sauce. Taking delicious inspiration from that holiday tradition, our kitchen has created this fantastic turkey and cranberry salad. Juicy chunks of roasted turkey breast are tossed with sweet dried cranberries, toasted walnuts and creamy mayonnaise. Pile it high on toasted sourdough bread or scoop it over a bed of tender Boston lettuce leaves for a satisfying lunch.', 5.99, 1, 'delicatessen/Turkey Salad with Cranberries and Walnuts.jpg', 'Please note: April kitchen uses eggs, fish, milk, shellfish, soy, peanuts, tree nuts and wheat ingredients.', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Potato Salad', 'The comforting memory of childhood picnics is captured to perfection in this creamy potato salad. Bite-sized nuggets of potato are bathed in a creamy, slightly mustardy mayonnaise dressing flecked with tiny pieces of celery and onion. Perfect on a plate with fried chicken.', 6.99, 1, 'delicatessen/Potato Salad.jpg', 'Please note: April kitchen uses eggs, fish, milk, shellfish, soy, peanuts, tree nuts and wheat ingredients.', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Tabouli with Quinoa', 'A traditional Middle Eastern meze, tabouli makes any meal more delicious. Our healthy take on the classic features quinoa and bulgar as a base, marinating in layers of flavor that honor its zesty origins — extra-virgin olive oil, lemon, and parsley. This super salad"s crisp, fresh flavor is heightened with colorful, sweet grape tomatoes.', 7.99, 1, 'delicatessen/Tabouli with Quinoa.jpg', 'Please note: April kitchen uses eggs, fish, milk, shellfish, soy, peanuts, tree nuts and wheat ingredients.', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Vietnamese-Style Chicken Salad', 'Crumbled chicken breast combines with vermicelli noodles, peanuts, and cucumber to create a zesty salad with Asian flair. A trio of herbs—basil, cilantro, and mint—add refreshing flavor while our nuoc cham sauce rounds out the flavor. Pour into a lettuce cup or wrap for a light lunch or dinner.', 10.99, 1, 'delicatessen/Vietnamese-Style Chicken Salad.jpg', 'Please note: April kitchen uses eggs, fish, milk, shellfish, soy, peanuts, tree nuts and wheat ingredients.', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Roasted Tofu, Butternut Squash, and Kale Salad', 'Simple yet scrumptious, straightforward yet sensational. Our chef roasts tofu, shiitake mushrooms, and butternut squash in a chili and soy sauce marinade—that packs just the right amount of spice—and tosses with fresh kale. Satisfying and comforting, it"s great on its own as an easy lunch, or warmed as a savory side.', 7.99, 1, 'delicatessen/Roasted Tofu, Butternut Squash, and Kale Salad.jpg', 'Please note: April kitchen uses eggs, fish, milk, shellfish, soy, peanuts, tree nuts and wheat ingredients.', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Direct Turkey Salad with Cranberries and Walnuts', 'One of our favorite things about Thanksgiving is making a sandwich with the leftover turkey and cranberry sauce. Taking delicious inspiration from that holiday tradition, our kitchen has created this fantastic turkey and cranberry salad. Juicy chunks of roasted turkey breast are tossed with sweet dried cranberries, toasted walnuts and creamy mayonnaise. Pile it high on toasted sourdough bread or scoop it over a bed of tender Boston lettuce leaves for a satisfying lunch.', 10.99, 1, 'delicatessen/Direct Turkey Salad with Cranberries and Walnuts.jpg', 'Please note: April kitchen uses eggs, fish, milk, shellfish, soy, peanuts, tree nuts and wheat ingredients.', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Beet and Quinoa Salad', 'Bring the beet back, baby! Tender baby beets, pickled red onion, and earthy black quinoa create an unexpected but delightful twist on the classic beet salad. Seasoned simply with balsamic vinegar and olive oil, its versatility makes it sure to satisfy any palate. Serve alongside a rotisserie chicken for a quick and satisfying meal.', 7.99, 1, 'delicatessen/Beet and Quinoa Salad.jpg', 'Please note: April kitchen uses eggs, fish, milk, shellfish, soy, peanuts, tree nuts and wheat ingredients.', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Wild-Caught Tuna and White Bean Salad', 'A new take on your typical tuna, our American wild-caught tuna salad features white beans, Picholine olives, fresh parsley, and a bright lemon and olive oil dressing. Regional variations of this time-honored classic are served all over the Mediterranean.', 12.99, 1, 'delicatessen/Wild-Caught Tuna and White Bean Salad.jpg', 'Please note: April kitchen uses eggs, fish, milk, shellfish, soy, peanuts, tree nuts and wheat ingredients.', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Greek Orzo Salad, Large', 'The Greek God of salads. Creamy feta, crunchy cucumber, briny olives, fresh tomato, pepperoncini peppers, and orzo pasta are tossed in our chef"s Greek dressing. Bring to your next potluck picnic and you"ll have anything but a Greek tragedy on your hands.', 30.00, 1, 'delicatessen/Greek Orzo Salad, Large.jpg', 'Please note: April kitchen uses eggs, fish, milk, shellfish, soy, peanuts, tree nuts and wheat ingredients.', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Green Vegetable Cous Cous Salad, Large', 'Whole-wheat couscous is tossed with asparagus, peas, zucchini, and parsley — and seasoned with lemon zest — to bring this bright and refreshing salad to life. As flavorful as it is versatile, this salad thrives alongside almost any meat or fish dish. Simply drizzle on our delightful lemon vinaigrette and enjoy!', 30.00, 1, 'delicatessen/Green Vegetable Cous Cous Salad, Large.jpg', 'Please note: April kitchen uses eggs, fish, milk, shellfish, soy, peanuts, tree nuts and wheat ingredients.', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Macaroni Salad Bowl', 'Nothing shares the plate with a turkey sandwich like macaroni salad. Tender elbow pasta, crunchy carrots, celery and diced red peppers get all gussied up with a lemony mayonnaise dressing. As long as picnicking remains a priority, there will be demand for a classic macaroni salad.', 20.00, 1, 'delicatessen/Macaroni Salad Bowl.jpg', 'Please note: April kitchen uses eggs, fish, milk, shellfish, soy, peanuts, tree nuts and wheat ingredients.', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Pole-Caught Tuna Salad Bowl', 'Sweet, creamy tuna salad, just like the homemade kind. The mild flavor of the tender fish is even further mellowed with mayo, and the silky texture gets a crunchy lift from chopped celery. Scoop tuna salad onto whole wheat bread with lettuce and tomato.', 35.00, 1, 'delicatessen/Pole-Caught Tuna Salad Bowl.jpg', 'Please note: April kitchen uses eggs, fish, milk, shellfish, soy, peanuts, tree nuts and wheat ingredients.', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Creamy Coleslaw Bowl', 'Cool and creamy, with relentless crunch. This American standard is made with shredded cabbage and carrots, tossed with smooth, tangy mayonnaise. Scoop slaw onto the plate next to potato salad and a grilled burger. Or try it as a sandwich topping — perfect with corned beef or roast turkey.', 20.00, 1, 'delicatessen/Creamy Coleslaw Bowl.jpg', 'Please note: April kitchen uses eggs, fish, milk, shellfish, soy, peanuts, tree nuts and wheat ingredients.', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Corn and Black Bean Salad', 'This colorful corn and black bean salad is simply brimming with fiesta flare. We combine delicious roasted corn and black beans with fire-roasted red peppers, cilantro, and cumin with a kick from zesty lime juice and spicy chile de arbol. Throw it in a wrap with FreshDirect"s handmade small-batch guacamole, toss it in a salad, or serve with tortilla chips for some delicious dippin'' action.', 10.99, 1, 'delicatessen/Corn and Black Bean Salad.jpg', 'Please note: April kitchen uses eggs, fish, milk, shellfish, soy, peanuts, tree nuts and wheat ingredients.', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Loaded Potato Salad', 'Loaded indeed! Steamed red bliss potatoes are tossed with crispy bacon, red onions, hard-boiled eggs, chopped flat-leaf parsley, scallions and celery and then dressed with a tangy blend of Dijon mustard and ranch dressing. We love how the smoky bacon highlights the natural sweetness of the potatoes. Serve with everything from burgers to strip steak.', 9.99, 1, 'delicatessen/Loaded Potato Salad.jpg', 'Please note: April kitchen uses eggs, fish, milk, shellfish, soy, peanuts, tree nuts and wheat ingredients.', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Curried Cauliflower Salad', 'Curry and cauliflower is a classic pairing in Indian cuisine, and our cauliflower "rice" effortlessly combines the two in a great grain-free alternative. Enticingly colorful, this salad complements peas, tomatoes, cilantro, and parsley with crunchy spiced almonds. Enjoy on the side of our rotisserie chicken, or use as a bed for even more veggies.', 9.99, 1, 'delicatessen/Curried Cauliflower Salad.jpg', 'Please note: April kitchen uses eggs, fish, milk, shellfish, soy, peanuts, tree nuts and wheat ingredients.', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Organic Valley Sliced Cheddar Cheese', 'Perfect for brown-bag lunches or snacks on the fly, we offer our award-winning organic cheddar pre-sliced in resealable deli-pack pouches. (from Organic Valley)', 7.99, 1, 'delicatessen/Organic Valley Sliced Cheddar Cheese.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Andrew & Everett Thin Sliced Mild Cheddar Cheese', 'Looking for an affordable All-Natural Mild Cheddar Cheese that tastes great? Look no further. All Andrew & Everett cheeses are free of gluten and preservatives and are made with milk from cows that were raised without antibiotics, given no artificial hormones and fed no animal by-products. The perfect match for a roast beef sandwich, or try it in your favorite recipe. (from Andrew & Everett)', 6.99, 1, 'delicatessen/Andrew & Everett Thin Sliced Mild Cheddar Cheese.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Horizon Organic American Cheese Singles', 'Add flavor to sandwiches, burgers, wraps and more! Classic American cheese, conveniently sliced and ready for use. (from Horizon Organic)', 5.99, 1, 'delicatessen/Horizon Organic American Cheese Singles.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Daiya Dairy Free Cheddar Style Slices', 'With a smooth texture and a slightly sharp taste, dairy-free Daiya Cheddar Style Slices are a great addition to a burger or a quick and easy snack on their own. Available in a convenient resealable package. (from Daiya)', 5.99, 1, 'delicatessen/Daiya Dairy Free Cheddar Style Slices.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Applegate Uncured Turkey Pepperoni', 'We"ve got the smoky-spicy-salty-meaty ratio absolutely right with our Turkey Pepperoni. This is a protein-packed, all-natural choice you can feel great about serving and devouring. For pizza topping, scrambling into eggs, stuffing into sandwiches, and snacking on right out of the bag. (from Applegate)', 6.99, 1, 'delicatessen/Applegate Uncured Turkey Pepperoni.jpg', 'Raised with antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Applegate Uncured Genoa Salami', 'Using a traditional recipe and time-honored Italian methods, we craft humanely raised pork into slow dry-cured deli meat art. Enjoy our Natural Genoa Salami on a sandwich, in an Italian meats antipasto or as a quick snack. (from Applegate Organic & Natural Meats)', 6.99, 1, 'delicatessen/Applegate Uncured Genoa Salami.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Applegate Uncured Black Forest Ham, No Antibiotics Used', 'Like the legendary Black Forest, our new ham is rich and inspiring. Marinated in maple sugar and spices, it is prepared in the tradition of true German Black Forest hams – slow cooked with a hearty smoking. Moist and delicious, it has a delicate flavor that"s perfect tucked in an omelet or layered in your favorite sandwich creation. Each 2-ounce serving provides 10g of protein with only 50 calories and 1.5g of fat – and that"s no fairy tale. (from Applegate Farms)', 6.99, 1, 'delicatessen/Applegate Uncured Black Forest Ham, No Antibiotics Used.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Beretta Prosciutto, Pre-Sliced', 'Fresh pork legs and natural flavorings slowly cured and dried make Beretta Prosciutto one of the sweetest prosciutto you can bring to your table. Thinly pre-sliced and put into a convenient package. (from Beretta)', 7.99, 1, 'delicatessen/Beretta Prosciutto, Pre-Sliced.jpg', 'Raised with antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Citterio Fresco Genoa Salami in Natural Casing', 'Aromatic spices are combined with medium grinds of choice pork cuts and then slowly aged to give this salami its distinctive flavor and richness. Cut it up to add flavorful accents in pizza, pasta sauce, sandwiches, or tossed in a hearty country salad. (from Citterio)', 5.99, 1, 'delicatessen/Citterio Fresco Genoa Salami in Natural Casing.jpg', 'Raised with antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Boar''s Head Boneless Smoked Ham Steak', 'Combine with Hickory Smoked Black Forest Turkey Breast for a unique Chef Salad. (from Boar"s Head)', 7.99, 1, 'delicatessen/Boar''s Head Boneless Smoked Ham Steak.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Perdue Short Cuts Carved Chicken Breast, Grilled', 'Perdue Short Cuts are the perfect solution when you"re looking for a quick and nutritious meal or snack. Fresh and fully cooked, they"re made with all-natural and no artificial ingredients. (from Perdue)', 6.99, 1, 'delicatessen/Perdue Short Cuts Carved Chicken Breast, Grilled.jpg', 'Raised with antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Empire Kosher Natural Slow Roasted Turkey Breast', 'Moist and delicious, Empire Kosher"s slow roasted turkey slices are free of added nitrates and nitrites you don"t need and full of the flavor you do. Ideal for sandwiches or deli platters, Empire Kosher deli slices are perfect for school lunches on bread or on their own. Raised on family farms, our turkeys are 100% vegetarian fed and free of antibiotics and growth hormones. No additives or binders, nothing to mask the natural, clean taste of Empire Kosher turkey. (from Empire Kosher)', 6.99, 1, 'delicatessen/Empire Kosher Natural Slow Roasted Turkey Breast.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Applegate Natural Grilled Chicken Breast Strips', 'Busy people need tasty, healthy food, too. These tender Natural Grilled Chicken Breast Strips are already cooked, so you"ll be able to whip up a delicious meal in no time, which will make you look really, really good, and who doesn"t want to beat the stress of peer pressure? You can be sure... people will talk.', 9.99, 1, 'delicatessen/Applegate Natural Grilled Chicken Breast Strips.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Plainville Farms Organic Pre-Sliced Oven Roasted Turkey Breast', 'After almost two years of research and development, we feel we have produced a "best of class" deli product. Birds raised without antibiotics by family farmers and fed a 100% organic vegetarian diet, we have created a deli breast that has just three basic ingredients; organic turkey, water, and salt. No additives or binders, nothing to mask the natural, clean taste of organic turkey. You will immediately notice the clarity of flavor, the natural, flavorful pure taste of turkey. (from Plainville Farms)', 7.99, 1, 'delicatessen/Plainville Farms Organic Pre-Sliced Oven Roasted Turkey Breast.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Boar''s Head Prosciutto Di Parma', 'Imported from Italy, this prosciutto is aged over 12 months for a fragrant and delicately sweet taste. Salt is the only added spice. The most popular and classic use of this fabulous ham is to serve with melon or fresh figs.', 8.99, 1, 'delicatessen/Boar''s Head Prosciutto Di Parma.jpg', 'Raised with antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Empire Kosher Natural Smoked Turkey Breast', 'Moist and delicious, Empire Kosher"s smoked turkey slices have the savory, rich flavor you want and none of the added nitrates and nitrites you don''t. Ideal for sandwiches, deli platters or in your favorite salad. Raised on family farms, our turkeys are 100% vegetarian fed and free of antibiotics and growth hormones. No additives or binders, nothing to mask the natural, clean taste of Empire Kosher turkey.', 6.99, 1, 'delicatessen/Empire Kosher Natural Smoked Turkey Breast.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Boar''s Head Simplicity Pre-Sliced All Natural Uncured Ham', 'Expertly crafted with just a handful of ingredients for a classic farmhouse flavor.', 8.99, 1, 'delicatessen/Boar''s Head Simplicity Pre-Sliced All Natural Uncured Ham.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Applegate Organics Sliced Uncured Genoa Salami', 'Traditional Italian recipe. Rich in flavor with a hint of garlic.', 9.99, 1, 'delicatessen/Applegate Organics Sliced Uncured Genoa Salami.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Organic Pre-Sliced Honey Roasted Turkey Breast', 'After almost two years of research and development, we feel we have produced a "best of class" deli product. Birds raised without antibiotics by family farmers and fed a 100% organic vegetarian diet, we have created a deli breast that has just three basic ingredients; organic turkey, water, and salt. No additives or binders, nothing to mask the natural, clean taste of organic turkey. You will immediately notice the clarity of flavor, the natural, flavorful pure taste of turkey.', 7.99, 1, 'delicatessen/Organic Pre-Sliced Honey Roasted Turkey Breast.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Brooklyn Cured Uncured Hot Soppressata, Pre-Sliced', 'Our Hot Soppressata is the essence of the Italian-American neighborhood where we grew up in Brooklyn, New York. It"s got heat and depth, as it"s seasoned with chili flakes, black pepper and garlic.', 7.99, 1, 'delicatessen/Brooklyn Cured Uncured Hot Soppressata, Pre-Sliced.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'All Natural Uncured Genoa Salame', 'Crafted with just a handful of ingredients, this salami has a uniquely rich flavor and firm texture.', 8.99, 1, 'delicatessen/All Natural Uncured Genoa Salame.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Uncured Sweet Soppressata, Pre-Sliced', 'Our Sweet Soppressata is cured in the Italian tradition, but made with lots of American spirit! The flavor profile is simple and classic so it highlights the quality of our pork with salt and black pepper.', 8.99, 1, 'delicatessen/Uncured Sweet Soppressata, Pre-Sliced.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Smoked Beef Salami, Pre-Sliced', 'Our Beef Salami is inspired by the history and culture of New York City delis. It"s naturally smoked and seasoned with our favorite deli spices. It"s great for snacking on the run or eating with your favorite pickles.', 7.99, 1, 'delicatessen/Smoked Beef Salami, Pre-Sliced.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Uncured Finocchiona, Pre-Sliced', 'Our Finocchiona is a special salami seasoned with fennel pollen to give it the sweetness and depth of authentic Italian cured meats.', 7.99, 1, 'delicatessen/Uncured Finocchiona, Pre-Sliced.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Brooklyn Cured Bresaola, Pre-Sliced', 'Our Bresaola is a classic Italian delicacy seasoned with herbs and spices. It"s just like a prosciutto but it"s made with beef instead of pork. It"s ideal for snacking and salads or drizzled with olive oil and lemon.', 8.99, 1, 'delicatessen/Brooklyn Cured Bresaola, Pre-Sliced.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Organic Pre-Sliced Hickory Smoked Turkey Breast', 'After almost two years of research and development, we feel we have produced a "best of class" deli product. Birds raised without antibiotics by family farmers and fed a 100% organic vegetarian diet, we have created a deli breast that has just three basic ingredients; organic turkey, water, and salt. No additives or binders, nothing to mask the natural, clean taste of organic turkey. You will immediately notice the clarity of flavor, the natural, flavorful pure taste of turkey. ', 7.99, 1, 'delicatessen/Organic Pre-Sliced Hickory Smoked Turkey Breast.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Charlito''s Cocina Dry Cured Country Salami, Campo Seco, Pre-Sliced', 'Earthy and rustic, sophisticated, yet totally accessible, the "Campo Seco" is made simply from pasture raised, heritage breed pork, and cured with a mineral rich, gentle, yet complex fleur de sel. Intended to demonstrate the power of simple, excellent ingredients, Campo Seco is versatile and long lasting, pairing deliciously with a wide variety of cheeses, fruits, and condiments. It is also a graceful complement to pasta, risotto, or scrambled eggs, to name a few.', 8.99, 1, 'delicatessen/Charlito''s Cocina Dry Cured Country Salami, Campo Seco, Pre-Sliced.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Applegate Roasted Turkey', 'Our famous Roasted Turkey is a staple food for many of our customers, and for good reason! It"s low in fat and high in protein, plus it"s free of nitrites and antibiotics. But best of all, it"s delicious.', 9.99, 1, 'delicatessen/Applegate Roasted Turkey.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Citterio Fresco Cooked Ham', 'Citterio"s delicious version of a New York favorite, this ham is 97% lean, high in protein, and packs great flavor. This honest, clean ham taste will melt in your mouth.', 10.99, 1, 'delicatessen/Citterio Fresco Cooked Ham.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (2, 'Citterio Fresco Rosmarino (Rosemary Ham)', 'This Citterio ham is massaged with dried rosemary, then slow-oven roasted to develop its delicately aromatic taste and bring out its tenderness. Its especially popular as a flavor highlight in salads or in a Panino (e.g., with Fontina, tomato).', 7.99, 1, 'delicatessen/Citterio Fresco Rosmarino (Rosemary Ham).jpg', 'Raised without antibiotics', 1, 10, 500);



-- Greengrocer Data
INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Hepworth Farms Local Organic Spring Farm Share', 'No matter the current selection in this Farm Share box, you can rest assured you"ll be getting the freshest, tastiest produce of the season straight from Hudson Valley.', 30.00, 1, 'greengrocer/Hepworth Farms Local Organic Spring Farm Share.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Jalapeno Pepper', 'When we hear the words "hot pepper" the tingle most of us remember is probably from those jalapeño rings that come with a plate of nachos. Small and torpedo-shaped, jalapeños may be pale green, blackish green, or red.', 1.49, 1, 'greengrocer/Jalapeno Pepper.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Okra, Packaged', 'Okra is a mild-tasting, squashlike little vegetable that makes everything it touches a little thicker.', 4.49, 1, 'greengrocer/Okra, Packaged.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Cilantro', 'With its sweet, bright aroma, fresh cilantro is used in Latin American and Asian cooking. Use this bold herb (AKA coriander or Chinese parsley) raw or cooked in soups, salads, and stews.', 2.00, 1, 'greengrocer/Cilantro.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Ark Foods Green Shishito Peppers', 'Skip the chips and salsa and grab these crowd-pleasers instead. Long prized by top chefs, they"ve become a wildly popular appetizer and are the perfect addition at your next party.', 6.00, 1, 'greengrocer/Ark Foods Green Shishito Peppers.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Chinese Long Beans', 'Chinese long beans should be picked young while it is at its most crisp, sweet and tender. Young beans develop within sixty days of cultivation, and the long pods grow in pairs from the stem.', 6.50, 1, 'greengrocer/Chinese Long Beans.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Organic Red Cabbage', 'The purple-robed prince among cabbages. It has an intense musky flavor and sweet snappiness. Red cabbage can be stewed, braised, or even curried.', 3.50, 1, 'greengrocer/Organic Red Cabbage.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Organic Japanese Sweet Potato', 'Nutty and mild, Japanese sweet potatoes have a thin red skin and dense white flesh. They are a bit drier and less sweet than the deeply orange vegetable you may also know as a yam or sweet potato. Often baked, candied or made into pies, they also make a delicious side dish when scalloped with sliced apples and a creamy sauce.', 7.49, 1, 'greengrocer/Organic Japanese Sweet Potato.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Organic Asparagus', 'Sweet, delicate, and grassy-green, with full-flavored earthiness, asparagus is a true taste of spring. The tender, bright green stalks add instant elegance to any meal. Their heft stands up well to stronger seasonings, higher heat, and longer cooking, and they pack more flavor per inch.', 8.49, 1, 'greengrocer/Organic Asparagus.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Jumbo Artichoke', 'Woodsy, green, and celery-like, but even more delicate. The sweet taste of an artichoke captures the essence of a garden. Only eat the tender bottoms of the outer leaves. As you peel them away, you come to the choke. Once you scrape away the furry, inedible part, savor the flavor-packed, sweet, pale green heart.', 6.40, 1, 'greengrocer/Jumbo Artichoke.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Hass Avocado', 'With its irresistibly buttery flavor, the Hass sets the avocado standard. It also wins the popularity contest, making up 75% of the American crop. A luscious slice of Hass avocado really pumps up the taste of burritos, burgers, salads, and sushi rolls.', 3.49, 1, 'greengrocer/Hass Avocado.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Green Beans', 'Herbal and earthy, firm and crisp, green beans are universal favorites. They are a classic side dish served on their own — simply steam, sauté, or boil them (we like to add a little butter and lemon). Their texture also stands up to long cooking in dishes like casseroles and stews.', 4.00, 1, 'greengrocer/Green Beans.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Broccoli Rabe', 'Broccoli rabe"s flavor-stimulating bitterness tastes like a cross between turnips and kale. It looks like a thinner, leafier version of broccoli. Both the leaves and the florets are edible. One of the most full-flavored greens. Serve with creamy cheeses, sun-dried tomatoes, or spicy sausage.', 6.00, 1, 'greengrocer/Broccoli Rabe.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Organic Broccolette', 'With a slight peppery edge and long, tender stem, broccolette (sometimes known as broccoletti or broccolini) is a cross between broccoli and Chinese kale (gai lan), and it brings new elegance to an old favorite.', 6.00, 1, 'greengrocer/Organic Broccolette.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Broccoli Florets', 'When you think "convenience food," broccoli may not be what springs to mind. But these trimmed crowns are ready for you to chop to your liking for your favorite dish.', 8.00, 1, 'greengrocer/Broccoli Florets.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Organic Cauliflower', 'A vegetable that"s as meaty as a potato but has its own very mild, nutty, cabbage-like flavor. A close relative of broccoli, cauliflower is a bit sweeter and even hardier. We love this versatile vegetable because it absorbs the full flavor of spices. Cauliflower makes the best vegetable curry around.', 5.00, 1, 'greengrocer/Organic Cauliflower.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Baby Bok Choy', 'The super-tender version of grownup bok choy. The crisp, juicy stalks have a mild sweet flavor with a hint of mustard. Halved, quartered, or whole, these babies have a simple, clean garden flavor. They make a delicious traditional Chinese stir-fry with garlic, ginger, and soy sauce.', 5.00, 1, 'greengrocer/Baby Bok Choy.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Organic Green Cabbage', 'The all-time favorite cabbage. It sets the standard. Firmly packed, with smooth, uniformly green skin. The crisp and fleshy leaves are loaded with tart tanginess and a surprisingly pleasing aroma. Green cabbage is loaded with vitamins and antioxidants. Universally popular, because there is so much you can do with it.', 4.49, 1, 'greengrocer/Organic Green Cabbage.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Wild Morel Mushrooms', 'Morels taste of the woods where they grow wild: smoky, earthy, and nutty. They are harvested in the spring and early summer. The honeycomb texture of the morel captures and enhances flavors.', 15.00, 1, 'greengrocer/Wild Morel Mushrooms.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Wild Fiddlehead Ferns', 'Fiddlehead ferns, the coiled tip of young ostrich fern leaves, are a true springtime delicacy. With a chewy bite and a flavor similar to okra crossed with asparagus, fiddleheads are best lightly blanched and then sautéed with a little garlic and olive oil. Be sure to gently remove any brown husk remnants before cooking.', 7.00, 1, 'greengrocer/Wild Fiddlehead Ferns.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Organic Rainbow Carrots', 'Colorful, crunchy and very sweet! These multi-colored carrots are lovely to look at and even lovelier to snack on. We suggest enjoying them raw, either as part of a festive crudité platter or shredded in a salad.', 4.00, 1, 'greengrocer/Organic Rainbow Carrots.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Organic Carrots', 'Intensely sweet. They"re super-crunchy raw. Cut them into disks and flash-steam. Five minutes does the trick.', 4.49, 1, 'greengrocer/Organic Carrots.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Organic Celery', ' Celery is a versatile ingredient with a deep clean taste. It puts the crunch in chicken salad.', 4.49, 1, 'greengrocer/Organic Celery.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Bicolor Corn', 'There are very few foods as sweet and pretty as bicolor corn. These ears crackle with fresh-picked crispness. Boiled or grilled, on the cob or off, there is no wrong way to prepare this corn. Add butter or salt if you must, but we like it plain. The two-color kernels make lovely salads, succotash, muffins, and chowders.', 3.49, 1, 'greengrocer/Bicolor Corn.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Greenhouse Cucumber', 'A truly super cuke. Hothouse cucumbers are green, fresh-tasting, and almost minty. At least a foot long and seedless, they are sometimes called "burpless" because their thin skins are easy to digest. They make the most refined teatime sandwiches.', 3.49, 1, 'greengrocer/Greenhouse Cucumber.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Green Cucumber', 'Cucumbers are green and fresh-tasting, with lots of water, crunch, and a light hint of honeydew melon in the aroma. They have a refreshing quality that reminds us of subtle mint.', 5.00, 1, 'greengrocer/Green Cucumber.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Italian Eggplant', 'If full-sized eggplants carried around family pictures, these very mild, slightly chewy, and earthy babies would surely be in their wallets. Traditionally grown and cooked in Italy, these greenhouse grown eggplants have pale flesh that is even creamier and smoother than that of their larger cousins.', 5.00, 1, 'greengrocer/Italian Eggplant.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Eggplant', 'Lush and creamy, with a mild, earthy flavor, eggplant has the most velvety texture in the vegetable family.', 3.49, 1, 'greengrocer/Eggplant.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Organic Ginger Root', 'Ginger is a multitalented flavoring. It is sweet and floral on your tongue, tickles your sinuses, and warms the back of your throat. Ginger brings out all the flavor in sweet and savory foods.', 3.49, 1, 'greengrocer/Organic Ginger Root.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Basil', 'Sweet, fragrant, and aromatic. The taste of our sweet basil is like a bouquet with hints of mint, clove, and licorice.', 4.49, 1, 'greengrocer/Basil.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Dill', 'Pungent, aromatic, and grassy, with a bracing freshness. Dill"s distinctive bouquet permeates Scandinavian and Eastern European cookery.', 2.49, 1, 'greengrocer/Dill.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Thyme', 'From a quick omelet to a simmered stew, just about any savory dish benefits from fresh thyme"s slightly minty lemon flavor.', 2.49, 1, 'greengrocer/Thyme.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Rosemary', 'Bright and piney, with a slight bitterness that goes well with meat and chicken. This robust herb should be chopped or rubbed.', 1.49, 1, 'greengrocer/Rosemary.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Chives', 'Chives taste like a mild combination of green onion and garlic.', 2.49, 1, 'greengrocer/Chives.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Gem Lettuce', 'Little Gem, a.k.a. sucrine, is your new favorite salad ingredient. It"s sweet, compact lettuce that resembles romaine after you strip away the flimsy outer leaves.', 2.49, 1, 'greengrocer/Gem Lettuce.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Romaine Hearts', 'Romaine is sweet and crunchy at heart. If you find yourself ripping through a whole head of romaine to get to the small, mild, and crisp leaves in the center, let us do the work for you.', 3.49, 1, 'greengrocer/Romaine Hearts.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Red Onions', 'Add crunch and punch to sandwiches, salads, and burgers with these sweet, colorful onions. We relish them raw — they also add a mellow moistness and flavor to frittatas, pasta primavera, and stir-fries.', 2.49, 1, 'greengrocer/Red Onions.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Vidalia Onions', 'Vidalias are called "the world"s sweetest onions" with good reason. Like the "terroir" of a fine wine, their juicy-sweet flavor is the result of the mild climate and unique soil combination found only in a designated area of South Georgia.', 2.49, 1, 'greengrocer/Vidalia Onions.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Bell Pepper', 'If green bells taste fresh and crisp as spring, reds are mellow and fruity as autumn. They are actually green peppers that have been left to ripen. Roasted red bells have a rich, velvety flavor.', 3.49, 1, 'greengrocer/Bell Pepper.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Green Bell Pepper', 'Sweet, juicy, and crunchy. The bell pepper is used more as a vegetable (ingredient or garnish) than a spicy seasoning. Most Cajun recipes begin with sautéed bell peppers and onions. They seem to bring out the best in other ingredients.', 3.49, 1, 'greengrocer/Green Bell Pepper.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Rainbow Pepper Pack', 'For a burst of beautiful color and mildly sweet crunch, look no further than this rainbow pepper pack. We love adding this colorful collection of bell peppers to salad, soup and stir-fry.', 8.49, 1, 'greengrocer/Rainbow Pepper Pack.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Potatoes', 'These tiny taters are essentially just the baby versions of their larger brothers, but youth gives them thin, tasty skins and moist, creamy flesh (thus, the name "creamer").', 5.00, 1, 'greengrocer/Potatoes.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Russet Potato', 'Also known as the Idaho potato. Russet potatoes are starchy with low moisture content, making for fluffy, picture-perfect baked potatoes or french fries.', 2.49, 1, 'greengrocer/Russet Potato.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Hakurei Turnips', 'These sweet and mild japanese turnips are often called the salad turnip because they"re the perfect crunchy and refreshing salad addition. You can also cut them in quarters and eat them raw or lightly sautee them with your favorite greens.', 3.49, 1, 'greengrocer/Hakurei Turnips.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Beets', 'Nature"s sweetest vegetable, ruby-hued beets are always at home in salads and sides, and make a tantalizing addition to savory main courses — try roasting beets with other hardy root vegetables when cooking squab or pheasant.', 4.49, 1, 'greengrocer/Beets.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Heirloom Tomatoes', 'These treasures of the tomato family are full of garden-fresh juiciness, sweetness, and tang. Heirlooms are actually a range of tender, old-fashioned varieties. They come in many shapes, colors, and sizes.', 4.49, 1, 'greengrocer/Heirloom Tomatoes.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Tomatoes', 'Tiny, firm, and sweet, the vine is the key to these tomatoes flavor, keeping them just-picked fresh. These little beauties are perfect for tossing into salads or eating right off the vine for a snack.', 4.49, 1, 'greengrocer/Tomatoes.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Butternut Squash', 'Butternut squash has a lush, sweet flavor that goes naturally with roasts and game. No harvest feast is complete without a steaming bowl of mashed butternut squash. We season it with a touch of nutmeg — an old New England trick.', 5.49, 1, 'greengrocer/Butternut Squash.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Apples', 'True to its name, the honeycrisp is sweet and crunchy with a warm, yellow interior and an attractive yellow-red streaked skin.', 9.49, 1, 'greengrocer/Apples.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Alice Apples', 'The Lady Alice apple began as a chance seedling on a Washington orchard that grew several varieties.', 7.49, 1, 'greengrocer/Alice Apples.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Gala Apples', 'The light golden streaks of color on the outside of the Gala hint at the honey-floral taste on the inside.', 5.49, 1, 'greengrocer/Gala Apples.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Bananas', 'The banana is an anytime, year-round snack. We like them fully yellow with just a dusting of brown freckles. But super-ripe, meltingly sweet bananas and firmer greenish ones have their fans too.', 3.49, 1, 'greengrocer/Bananas.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Organic Bananas', 'The banana is an anytime, year-round snack. We like them fully yellow with just a dusting of brown freckles. But super-ripe, meltingly sweet bananas and firmer greenish ones have their fans too.', 4.49, 1, 'greengrocer/Organic Bananas.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Blueberries', 'Our new Sweetest Batch Blueberries are grown from a small-scale specialty fruit known for its large, extra-sweet flavor. They make your blueberry moments even more memorable and give "having the blues" a whole new meaning.', 9.49, 1, 'greengrocer/Blueberries.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Strawberries', 'Strawberries are consistently the best, sweetest, juiciest strawberries available. This size is the best selling, as it is both convenient for completing a cherished family recipes and for preparing a quick snack straight from the fridge.', 4.49, 1, 'greengrocer/Strawberries.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Red Cherries', 'We dare you to eat just one of these firm, sweet, juicy, slightly tart fruits. We select the premium extra-large Bing cherries for their off-the-charts irresistibility.', 10.00, 1, 'greengrocer/Red Cherries.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Blackberries', 'Blackberries are so versatile — they taste delicious, are sweet and nutritious, and dress up any meal from breakfast to a midnight snack. This pack is the ideal size for snacking throughout the day or for adding to dinner salad to share with your family.', 5.49, 1, 'greengrocer/Blackberries.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Mandarin', 'The Gold Nugget variety of mandarin is a bright-orange beauty with rich, sweet-and-tart flesh. Easy to peel and naturally seedless.', 5.00, 1, 'greengrocer/Mandarin.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Tangerines', 'Super-sweet, juicy, and bumpy-fleshed, Pixie tangerines have only been on the citrus scene for about 20 years.', 8.49, 1, 'greengrocer/Tangerines.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Oranges', 'Extra-big, beautiful, seedless, very low in acid and filled with mild, sweet flesh. These beauties are supremely simple to peel and section. Bursting with freshly picked juiciness, this is the perfect orange to serve to kids. We also like to toss sections into fruit salad.', 9.49, 1, 'greengrocer/Oranges.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Grapefruit', 'This brilliant ruby-colored fruit has a cherry sweetness, a touch of tartness, and almost no bitterness. We love it cut in half or segmented. Juicing is also a real treat.', 6.49, 1, 'greengrocer/Grapefruit.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Navel Orange', 'Oversized, seedless, very low in acid, and filled with mild sweet flesh. These beauties are supremely simple to peel and section. Bursting with freshly picked juiciness, this is the perfect orange to serve to kids.', 6.00, 1, 'greengrocer/Navel Orange.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Lemons', 'Lots of juice and a bright, clear, tart flavor that is suprisingly low in acid. The rind has lots of tang with a bitter note thrown in. We use lemons as a substitute for salt on veggies, a pinch hitter for vinegar in dressings, and an overall flavor booster in both sweet and savory dishes.', 3.00, 1, 'greengrocer/Lemons.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Limes', 'Tangy, clean-flavored, and filled with juice and pulp. These aromatic fruits are more tart and bracing than lemons. Kitchen staples in Mexican and Southeast Asian cuisine, limes are key for margaritas, mojitoes ceviche (citrus-marinated raw fish) and tangy, meringue-topped lime pies.', 1.59, 1, 'greengrocer/Limes.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Grapes', 'Bite one of these and taste liquid autumn. Their full, fleshy flavor makes them a perfect dessert grape. Put them in the freezer and turn them into delicious, elegant one-bite ice pops.', 5.00, 1, 'greengrocer/Grapes.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Green Seedless Grapes', 'Juicy and snappy, with a beautiful balance of sweet and tart. This is the grape that all others are compared to. Rinse and eat them right off the vine for a healthy, refreshing snack any time of day. Freeze them in summer and toss them in drinks!', 5.00, 1, 'greengrocer/Green Seedless Grapes.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Cantaloupe', 'The beige-green skin of the cantaloupe barely hints at the delectably fragrant, orange-colored fruit inside. Sweet but not oversweet, a ripe cantaloupe has a beautiful floral aroma.', 5.00, 1, 'greengrocer/Cantaloupe.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Watermelon', 'All the sweetness, crunch, and knockout juiciness of the classic summertime melon. Cubed or balled, this melon was made for fruit salad.', 9.00, 1, 'greengrocer/Watermelon.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Melon', 'The most versatile melon around, the aptly named honeydew is both sweet and succulent. Its celery-colored flesh looks like a green-tinged precious stone. We like the contrast of flavors when the honeydew is wrapped with a slice of prosciutto.', 5.00, 1, 'greengrocer/Melon.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Pear', 'Melt-in-your-mouth texture with hints of vanilla and apple-blossom honey. Its slightly thick skin hides a creamy-crisp fruit with more tartness than other pears.', 2.49, 1, 'greengrocer/Pear.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Nectarines', 'The nectarine is close kin to a peach. The family resemblance is obvious from the first bite. Its golden flesh is soft and juicy; its flavor is sweet, with just enough tang to keep everything in balance.', 10.00, 1, 'greengrocer/Nectarines.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Plumcot', 'Every variety of plumcot — a plum-apricot hybrid — is as diverse in color as it is in flavor. The Amigo, a variety with bright to dark red skin with flaming red/yellow flesh, has rosy plum flavors with a hint of berry.', 5.00, 1, 'greengrocer/Plumcot.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Mango', 'Mangoes are small, delicately shaped mangoes with golden yellow skins and velvety flesh. Sometimes called ataulfo mangoes or honey mangoes, this fruit has very little fibrous texture and a skinny pit. Chop into salsas and salads or use in poultry and fish dishes.', 5.00, 1, 'greengrocer/Mango.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Kiwifruit', 'With its potato color and Astroturf feel, the unpeeled kiwifruit doesn"t give a clue to the bright green sunburst inside. It tastes like strawberry and honeydew melon.', 5.00, 1, 'greengrocer/Kiwifruit.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Pineapple', 'The Golden is a pineapple that"s been to charm school. The tartness has been reined in just a bit. It is sweeter and mellower than other pineapples.', 5.99, 1, 'greengrocer/Pineapple.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Atkins Mango', 'Its flesh is dense, its taste is tropical and its appeal is universal. The Tommy Atkins, a sturdy offshoot of the Haden, is the most popular mango in the U.S.', 6.00, 1, 'greengrocer/Atkins Mango.jpg', 'No Artificial ripeners used', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (3, 'Coconut', 'Sometimes called water coconuts, young green coconuts have soft flesh and lots of liquid. In the tropics, people often sip the coconut water inside. To crack one, simply chop a shallow wedge into the tapered top, then pour out the water when the first opening appears (or simply insert a straw to sip straight from the coconut).', 5.00, 1, 'greengrocer/Coconut.jpg', 'No Artificial ripeners used', 1, 10, 500);



-- Butcher Data
INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (4, 'Whole Chicken', 'We are excited to bring you the chicken we have long been searching for. By buying this chicken, you"re directly supporting their heirloom breeding program, soil carbon studies, and the refurbishing of 30 state-of-the-art houses with unprecedented outdoor access, light, and fresh air. Because of their pasture access and pedigree, these chickens grow to be stronger and more flavorful than modern conventional breeds. These chickens have been hand-trussed for a better cooking experience. A difference you can taste, with a choice you can feel good about.', 2.99, 1, 'butcher/Whole Chicken.jpg', 'Raised without Antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (4, 'Herb Butterflied Whole Chicken', 'Our garlic and herb seasoned organic whole chicken has been butterflied, so it cooks fast, stays juicy, and browns evenly in a hot oven or on your grill.
Baking/Roasting:
Preheat oven to 425℉. Remove chicken from packaging and splay out on top of a wire rack in a roasting pan. (Optional: layer pan with cut vegetables drizzled with olive oil, salt, and pepper instead of using wire rack). Roast skin side up for 45-50 minutes, or until internal temperature reaches 165℉. Remove from oven, cover with foil and let rest for 15-20 minutes before serving.', 4.99, 1, 'butcher/Herb Butterflied Whole Chicken.jpg', 'Raised without Antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (4, 'Lemon Herb Spatchcock Chicken', 'Lemon Herb Spatchcock Chicken delivers bright flavors of lemon, lemon zest and is richly herbaceous with thyme and rosemary. The flavors are persistent and delicious. The spatchcock chicken will cook fast, stay juicy and brown evenly in a hot oven or on your grill. This will be a go-to flavor to please your family or a crowd. Heating Instructions
Baking/Roasting
Pre-heat oven to 450F or 400F for a convection oven.
Remove chicken from vacuum package and lay flat on roasting pan lined with parchment or aluminum foil.
Cook chicken to internal temperature 165F in the thickest part of the breast. Check temperature after 30 minutes. When chicken is cooked allow to rest for 10 minutes and serve.', 4.99, 1, 'butcher/Lemon Herb Spatchcock Chicken.jpg', 'Raised without Antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (4, 'Peruvian Spatchcock Chicken', 'Sometimes you want something flavorful and exotic; enjoy that experience with ease with the Peruvian Spatchcock Chicken. We"ve marinated this whole spatchcock chicken in mountain Peruvian seasonings: extra virgin olive oil marries with rich, toasty, aromatic cumin, smoky paprika, and bright lime flavor to complete the package. Nothing shy about this marinade; expect the full flavored spatchcock chicken will cook fast, stay juicy, and brown evenly in a hot oven or on your grill. Grilling:
Fire up the grill to 450F. Remove chicken from vacuum package and lay flat on roasting pan lined with parchment or aluminum foil. Alternatively, lay chicken directly on the cold part of the grill and cook with indirect heat. Either way cook with the hood closed. Cook chicken to internal temperature 165F in the thickest part of the breast. Check after 30 minutes. When chicken is cooked allow to rest for 10 minutes and serve.', 5.99, 1, 'butcher/Peruvian Spatchcock Chicken.jpg', 'Raised without Antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (4, 'Maple Dijon Spatchcock Chicken', 'Classic Spatchcock Chicken is warming comfort food made easy. Maple, mustard and herbs blend beautifully in an aromatic bouquet to please you and your family every time. The spatchcock chicken will cook fast, stay juicy and brown evenly in a hot oven or on your grill. Baking/Roasting:
Pre-heat oven to 450F or 400F for a convection oven. Remove chicken from vacuum package and lay flat on roasting pan lined with parchment or aluminum foil. Cook chicken to internal temperature 165F in the thickest part of the breast. Check temperature after 30 minutes. When chicken is cooked allow to rest for 10 minutes and serve.', 4.99, 1, 'butcher/Maple Dijon Spatchcock Chicken.jpg', 'Raised without Antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (4, 'Best Whole Chicken', 'Roasted, fried, grilled, or smoked—a fresh whole chicken is a great way to feed a crowd or family. (Gizzards not included.)
Katie"s Best is a family-owned and operated business that works almost exclusively with small Amish farms in southern Indiana. The chickens are raised on spacious farms and have free access to the outdoors. The birds are never given antibiotics and are fed an all-vegetable diet of locally sourced Non-GMO Project Verified corn and soybeans.', 3.69, 1, 'butcher/Best Whole Chicken.jpg', 'Raised without Antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (4, 'Heritage Air-Chilled Whole Chicken', 'This heritage-breed chicken was humanely raised without antibiotics by our friends at Joyce Farms, a small artisanal producer of the most distinctive heritage poultry in America. It"s a superior chicken that meets the Label Rouge specification — a French government program to recognize producers who preserve heritage breed and old-world farming methods.', 7.49, 1, 'butcher/Heritage Air-Chilled Whole Chicken.jpg', 'Raised without Antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (4, 'Smart Chicken Organic Whole Chicken', 'Certified organic Smart Chicken are fed an organic grain diet, are free-range, and certified humane by the Humane Farm Animal Care. All Smart Chicken products are raised without the use of antibiotics, animal byproducts, growth hormones, and are 100% all-natural. They''re processed using purified cold air instead of water — that"s the air-chilled difference.', 5.69, 1, 'butcher/Smart Chicken Organic Whole Chicken.jpg', 'Raised without Antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (4, 'Springer Mountain Farms Whole Chicken', 'Nestled in the hills of the Blue Ridge Mountains, Springer Mountain Farms raises chickens that are grown with no antibiotics, steroids, growth stimulants, or hormones. They are fed a Non-GMO Project Verified, locally-grown pesticide-free, all-vegetarian diet, and never given any animal by-products. Springer Mountain Farms have long been American Humane Certified, and they take pride in that. They truly understand that better animal care results in better tasting, higher-quality chicken.', 2.99, 1, 'butcher/Springer Mountain Farms Whole Chicken.jpg', 'Raised without Antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (4, 'Springer Mountain Farms Chicken Thighs', 'Nestled in the hills of the Blue Ridge Mountains, Springer Mountain Farms raises chickens that are grown with no antibiotics, steroids, growth stimulants, or hormones. They are fed a Non-GMO Project Verified, locally-grown pesticide-free, all-vegetarian diet, and never given any animal by-products. Springer Mountain Farms have long been American Humane Certified, and they take pride in that. They truly understand that better animal care results in better tasting, higher-quality chicken.', 3.99, 1, 'butcher/Springer Mountain Farms Chicken Thighs.jpg', 'Raised without Antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (4, 'Empire Kosher Organic Broiler Chicken', 'These meaty, healthful organic chickens are plump and juicy. They can be roasted, grilled or used as the key ingredient in chicken soup and other kosher meals. (from Empire Kosher)', 6.99, 1, 'butcher/Empire Kosher Organic Broiler Chicken.jpg', 'Raised without Antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (4, 'Empire Kosher Broiler Chicken', 'Though these birds were bred for broiling or frying, don"t stop there — they"re mighty good for roasting and grilling, too. Use whole, split up the belly to butterfly or chop them into parts for all your favorite chicken recipes.', 4.99, 1, 'butcher/Empire Kosher Broiler Chicken.jpg', 'Raised without Antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (4, 'Organic Cut-up Whole Chicken', 'All the tender, juicy flavor of a whole roaster chicken, but split by our butchers to cook evenly, in less time than a whole chicken. Roasters have had time to develop nice, plump flesh, so the meat stays moist and juicy in the oven. And we love the way a split roaster lies flat in a roasting pan for even cooking! (Gizzards not included.)', 4.99, 1, 'butcher/Organic Cut-up Whole Chicken.jpg', 'Raised without Antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (4, 'Best Cut-Up Whole Chicken', 'All the tender, juicy flavor of a whole chicken, but split to cook evenly in less time than a whole chicken. Cook all eight pieces for a family feast, or spread it out over a few nights.', 5.59, 1, 'butcher/Best Cut-Up Whole Chicken.jpg', 'Raised without Antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (4, 'Whole Chicken Value Pack', 'This is fried chicken made easy. This tasty pack is made up of two plump, juicy, flavorful chickens cut into convenient pieces. All you need to do is batter and fry for a quick, convenient, crowd-pleasing dinner. Or toss the pieces in a pan with some of your favorite hearty veggies, drizzle with stock, and roast in a hot oven. You"ll have juicy, flavorful roast chicken in a jiffy.', 3.99, 1, 'butcher/Whole Chicken Value Pack.jpg', 'Raised without Antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (4, 'Organic Chicken Drumsticks & Thighs', 'We"ve combined succulent drumsticks with thick, juicy thighs to bring you the chicken parts you love best and none that you don"t. Roast as you would a whole chicken, but in significantly less time. We love "em southern-fried. Figure at least two pieces per person, plus a few extra for good measure.', 4.99, 1, 'butcher/Organic Chicken Drumsticks & Thighs.jpg', 'Raised without Antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (4, 'Bone-in Chicken Breasts', 'Cooking chicken breasts on the bone gives them a deeper flavor that makes the tender, juicy white meat even more delectable. Try frying, baking or putting them on the grill.', 6.99, 1, 'butcher/Chicken Breasts.jpg', 'Raised without Antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (4, 'Boneless Skinless Chicken Breast', 'These chicken breasts are plump, healthy, and bursting with flavorful juices. This versatile cut is perfectly portioned, trimmed, and ready to cook however you like. Comes with the tenderloin attached.', 9.99, 1, 'butcher/Boneless Skinless Chicken Breast.jpg', 'Raised without Antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (4, 'Growth Chicken Drumsticks & Thighs', 'This drumstick and thigh combo lets everyone pick their favorite part! These cuts are best grilled or roasted—just add your favorite seasonings and they"ll be a crowd-pleasing hit at family dinners and more.', 6.59, 1, 'butcher/Growth Chicken Drumsticks & Thighs.jpg', 'Raised without Antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (4, 'Organic Boneless Skinless Chicken Breast', 'Plump, healthful and bursting with flavorful juices, these chicken breasts are ideal for sandwiches and salads. Rub with a generous amount of olive oil and grill, turning and rotating to make a crisscross pattern. Serve on crusty bread with greens, thin slices of crisp, juicy pear and honey mustard for a unique sweet and savory sandwich.', 6.59, 1, 'butcher/Organic Boneless Skinless Chicken Breast.jpg', 'Raised without Antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (4, 'Lean Ground Turkey', ' Our growers take great pride in producing healthy, happy turkeys on independent family farms located in the rolling hills of the Shenandoah Valley, Virginia. Here, the birds are raised humanely with respect for the land and the environment and are never given antibiotics. This commitment to sustainable practices ensures that one day the next generation of farmers will inherit a thriving farm.', 8.59, 1, 'butcher/Lean Ground Turkey.jpg', 'Raised without Antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (4, 'Chicken Breasts, Boneless and Skinless', 'Plump, healthful and bursting with flavorful juices, chicken breasts are ideal for sandwiches and salads. Rub with a generous amount of olive oil and grill, turning and rotating to make a crisscross pattern. Serve on crusty bread with greens, thin slices of crisp, juicy pear and honey mustard for a unique sweet and savory sandwich.', 9.49, 1, 'butcher/Chicken Breasts, Boneless and Skinless.jpg', 'Raised without Antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (4, 'Focus Organic Boneless Skinless Chicken Breast', 'Plump, healthful and bursting with flavorful juices, these organic chicken breasts are simple and versatile—perfectly portioned and trimmed by hand, they"re ready to cook however you like. We recommend rubbing with a generous amount of olive oil and grilling, turning and rotating to make a crisscross pattern. Serve on crusty bread with greens, thin slices of crisp, juicy pear and honey mustard for a unique sweet and savory sandwich.', 9.99, 1, 'butcher/Focus Organic Boneless Skinless Chicken Breast.jpg', 'Raised without Antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (4, 'Organic Lemon Pepper Boneless Skinless Chicken Breasts', 'Plump, healthful, and bursting with flavorful juices, these organic chicken breasts are simple and versatile with the added zest of lemon pepper. Perfectly portioned and trimmed by hand, they"re ready to cook however you like. Serve these up with a side of rice or slice over a garden salad.', 11.99, 1, 'butcher/Organic Lemon Pepper Boneless Skinless Chicken Breasts.jpg', 'Raised without Antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (4, 'Maple Dijon Boneless Skinless Chicken Breasts', 'You want to feed your family delicious healthy food. Baked or roasted Maple Dijon chicken breasts are an easy meal solution that"s warming and comforting. Maple, mustard, and herbs blend beautifully in an aromatic bouquet to please you and your family every time. Bake: Preheat oven to 375°F. Place in a non-stick baking pan on middle rack of oven. Bake for approx. 20 minutes', 7.59, 1, 'butcher/Maple Dijon Boneless Skinless Chicken Breasts.jpg', 'Raised without Antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (4, 'Lemon Herb Boneless Skinless Chicken Breasts', 'These Lemon Herb Chicken Breasts deliver bright flavors of lemon, lemon zest and are richly herbaceous with thyme and rosemary. These flavor-packed breasts will cook up well on the grill or in a pan. This will be a go-to flavor to please your family or a crowd.', 8.99, 1, 'butcher/Lemon Herb Boneless Skinless Chicken Breasts.jpg', 'Raised without Antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (4, 'Peruvian Boneless Skinless Chicken Breasts', 'Sometimes you want something flavorful and exotic; enjoy that experience with ease with the Peruvian Chicken Breasts. We"ve marinated these boneless skinless chicken breasts in mountain Peruvian seasonings: extra virgin olive oil marries with rich, toasty, aromatic cumin, smoky paprika, and bright lime flavor to complete the package.', 7.99, 1, 'butcher/Peruvian Boneless Skinless Chicken Breasts.jpg', 'Raised without Antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (4, 'Boneless Skinless Chicken Breasts Value Pack', 'Plump, healthy, and bursting with flavorful juices—these chicken breasts are simple and versatile, perfectly portioned, and trimmed—they"re ready to cook however you like.', 6.99, 1, 'butcher/Boneless Skinless Chicken Breasts Value Pack.jpg', 'Raised without Antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (4, 'Smart Chicken Organic Boneless Skinless Breasts', 'Simple and versatile, these perfectly tender fillets are deboned and trimmed by hand so they"re ready to cook however you like them.', 13.99, 1, 'butcher/Smart Chicken Organic Boneless Skinless Breasts.jpg', 'Raised without Antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (4, 'Chicken Breasts with Ribs', 'All the delicacy you want from tender, juicy white meat with the deeper flavor that always comes from keeping the bone in while you cook. Try these breasts southern-fried, grilled, or baked.', 4.99, 1, 'butcher/Chicken Breasts with Ribs.jpg', 'Raised without Antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (4, 'Smart Chicken Organic Chicken Wings', 'Tender, juicy, and flavorful, what"s not to love about wings? For best results, season with your favorite spices, and let sit for 20 minutes. Fry or bake until golden brown, toss with your favorite sauce, and serve!', 7.69, 1, 'butcher/Smart Chicken Organic Chicken Wings.jpg', 'Raised without Antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (4, 'Organic Chicken Wings, Party Pack, Frozen', 'For anyone who loves crispy chicken with sweet juicy meat, the wing is the thing. This party pack is ideal for big gatherings, tailgates and barbecues—nobody can munch just one wing! Fry or bake them until golden brown and crispy, then coat in sauce and enjoy (don''t forget the napkins!). Please note: wings arrive frozen.', 4.99, 1, 'butcher/Organic Chicken Wings, Party Pack, Frozen.jpg', 'Raised without Antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (4, 'Fat Free Ground Chicken Breast', 'This super lean, super versatile protein is a great choice for weeknight meals. Not only is it a great alternative to other ground meats, it easily absorbs your favorite sauces and spices, so you"re never left wanting for flavor. For the best results, cook over medium-low heat.', 7.49, 1, 'butcher/Fat Free Ground Chicken Breast.jpg', 'Raised without Antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (4, 'Sweet Italian Chicken Sausage', 'Premio Fresh Sweet Italian Chicken Sausage--Our signature Italian flavor added to our new, healthier chicken sausage. Now that is a sweet combination! The entire family will enjoy a scrumptious casserole that combines Premio Fresh Sweet Italian Chicken Sausage with polenta, roasted vegetables, beans and shallots at dinner time. Try our Fresh Sweet Italian Chicken Sausage in a sandwich along with delicious, hot charred peppers, mustard and cheese... molto delizioso! (from Premio)', 6.89, 1, 'butcher/Sweet Italian Chicken Sausage.jpg', 'Raised without Antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (4, 'Beef Stew Meat', 'These dense, flavorful cubes of rich beef get better and better with slow cooking in wine or broth. For maximum flavor, always sear the cubes in a very hot pot or Dutch oven until they are nice and brown before stewing. Makes a mean meaty chili.', 15.99, 1, 'butcher/Beef Stew Meat.jpg', 'Raised with Antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (4, 'Beef Cubes', 'A relatively tender and nicely marbled cut of filet mignon, these cubes go with almost any kind of sauce, like mustard and olive oil or horseradish and sour cream. These cubes are perfect for fondue — all you need is a fondue pot with hot liquid for cooking the meat, some fondue forks, and a variety of dipping sauces, and you"ve got a fondue party. Or for an easy weeknight dinner, simply sear with butter and garlic, and pair with roasted veggies.', 19.99, 1, 'butcher/Beef Cubes.jpg', 'Raised without Antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (4, 'Fresh Beef Kofta, Uncooked', 'Seasoned with a flavorful blend of Egyptian style herbs and spices, this traditional kofta is perfect for a quick weeknight meal or as hors d"oeuvres for your next party.
Claims
Raised Without Antibiotics
Heating Instructions
Cook in the oven (with or without the stick) at 425 degree for about 15 minutes, or until internal temperature reaches 160 degrees Fahrenheit. Can also be grilled or pan-fried.', 9.99, 1, 'butcher/kofta.jpg', 'Raised without Antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (4, 'Meatball and Meatloaf beef', 'Our meatball and meatloaf mix is the perfect start to a hearty, comfort food meal. We take our RWA Local Angus beef and grind it with our RWA pork in a 2:1 ratio for a full, rich blend. Just add your favorite seasonings and sauce for a delicious, low prep dinner.', 6.99, 1, 'butcher/Meatball and Meatloaf.jpg', 'Raised without Antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (4, 'Honey Garlic Teriyaki Marinated Pork Chops', 'A juicy pork chop with the rich, bold taste of teriyaki is a longstanding favorite for a reason. Ours has an added hint of honey and a kick of garlic for even more flavor. Perfect on the grill or for an easy weeknight meal.
Claims
Raised Without Antibiotics
Heating Instructions
Preheat heat skillet on medium-high heat with 1-2 TBSP of olive oil.
Place chops on skillet and cook for 4-6 minutes.
Turn chops over and cook for an additional 4-6 minutes to an internal temperature of 145°F.', 7.99, 1, 'butcher/Honey Garlic Teriyaki Marinated Pork Chops.jpg', 'Raised without Antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (4, 'Grass-Fed Local Beef Chuck Stew Meat', 'These dense, flavorful cubes of rich beef get better and better with slow cooking in wine or broth. Extra leanness makes our stew meat healthful, and stewing makes it the essence of home cooking. For maximum flavor, always sear the cubes in a very hot pot or Dutch oven until they are nice and brown before stewing. Makes a mean meaty chili.', 10.99, 1, 'butcher/Grass-Fed Local Beef Chuck Stew Meat.jpg', 'Raised without Antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (4, 'Beef Premium Boneless Chuck Roast', 'This premium center-cut roast comes from the chuck eye portion of the chuck, and is highly marbled. Perfect for slow cooking or roasting, but it also does well braised or smoked.', 9.49, 1, 'butcher/Beef Premium Boneless Chuck Roast.jpg', 'Raised without Antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (4, 'Local Boneless Lamb Stew Meat', 'These hearty chunks of boneless meat stand up to long, slow cooking to make a super-tender and smooth stew. Our combination of chuck and round creates the perfect balance of flavor, convenience, and economy.', 12.99, 1, 'butcher/Local Boneless Lamb Stew Meat.jpg', 'Raised without Antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (4, 'Local Angus RWA Beef Standing Rib Roast', 'This is the Norman Rockwell Sunday evening dinner: a big, rosy, roasted rib section of beef. The meat is extraordinarily tender and flavorful, partly because the fat on top of the ribs melts during cooking and sinks into the meat. We like to make a seasoned bread-crumb mix and rub it on the top.', 24.99, 1, 'butcher/Local Angus RWA Beef Standing Rib Roast.jpg', 'Raised without Antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (4, 'Veal Stew Meat', 'These flavorful, moist 1-inch cubes make a deep, rich stew. Cut from veal chuck, they have a little more heft than veal cubes and can stand up to longer cooking. The meat essence melts into the stewing liquid, producing a wonderfully velvety sauce.', 9.99, 1, 'butcher/Veal Stew Meat.jpg', 'Raised with Antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (4, 'Beef Stir-Fry Strips', 'There"s nothing easier and tastier than a sizzling beef stir-fry over rice. Our strips are tender and juicy, but firm enough to stand up to frying. Try them in a mix of sesame and canola oil. Add soy sauce and chopped ginger to give the dish an Asian flair. These strips are 100% sirloin, sliced about 1/8-inch thick.', 7.99, 1, 'butcher/Beef Stir-Fry Strips.jpg', 'Raised without Antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (4, 'Boneless Pork Sirloin Cutlet', 'These cutlets are cut from the most flavorful part of the loin—the sirloin—so all they need is salt and pepper to make them shine. They"re perfect for schnitzel or other recipes that call for quick-cooking cutlets.', 10.99, 1, 'butcher/Boneless Pork Sirloin Cutlet.jpg', 'Raised without Antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (4, 'Grass-Fed Local Beef Stir-Fry Strips', 'There"s nothing easier and tastier than a sizzling beef stir-fry over rice. Our strips are tender and juicy, but firm enough to stand up to frying. Try them in a mix of sesame and canola oil. Add soy sauce and chopped ginger to give the dish an Asian flair.', 8.99, 1, 'butcher/Grass-Fed Local Beef Stir-Fry Strips.jpg', 'Raised without Antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (4, 'Beef Sirloin Cubes', 'Meaty, flavorful, and tender when stewed. Sear them in a hot pan or Dutch oven and stew for several hours along with sweet root vegetables. They are even better the next day. And the day after that.', 9.89, 1, 'butcher/Beef Sirloin Cubes.jpg', 'Raised without Antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (4, 'Beef Chuck Stew Meat', 'These dense, flavorful cubes of rich beef get better and better with slow cooking in wine or broth. Extra leanness makes our stew meat healthful, and stewing makes it the essence of home cooking. For maximum flavor, always sear the cubes in a very hot pot or Dutch oven until they are nice and brown before stewing. Makes a mean meaty chili.
', 9.89, 1, 'butcher/Beef Chuck Stew Meat.jpg', 'Raised without Antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (4, 'Lamb Premium Boneless Chuck Shoulder Roast', 'Big, full flavor and lots of juiciness. This is a smooth-textured, economical cut that reaches its maximum flavor when cooked to a mellow medium doneness. Our butchers bone the meat, roll it, and tie it, for a scrumptious roast that serves up to five people. Sunday night dinner at home doesn"t get any better than this.', 12.99, 1, 'butcher/Lamb Premium Boneless Chuck Shoulder Roast.jpg', 'Raised without Antibiotics', 1, 10, 500);



-- Fishmonger data
INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (5, 'Royal Dorade, Farm-Raised', 'Foodie travelers have previously met dorade under a variety of names, such as dorado in Spain, orata in Italy, and daurade royale in France. Known in the culinary world as "king of the sea bream family" for its superior texture and taste, this tender white fish with shimmering silver skin transforms when grilled or braised into a rich, succulent, meaty delight, similar to red snapper.', 11.99, 1, 'fishmonger/Royal Dorade, Farm-Raised.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (5, 'Rainbow Trout, Farm-Raised Butterflied', 'There are few fish that compare to a beautiful, fresh rainbow trout. It has a lovely white to pale yellow color and a rich, herby flavor that set it apart. We admit that the best way to get trout is to fish for it, but this is a close second. No rods, no reels, no lures, no waders. Cut straight to the fish.', 12.99, 1, 'fishmonger/Rainbow Trout, Farm-Raised Butterflied.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (5, 'Whole Wild Snapper', 'Snapper"s enduring popularity doesn"t surprise us in the least. It"s flaky and tender, with a mild, delicate, distinctly unfishy flavor. Snapper is versatile — a go-anywhere, do-anything kind of fish. It can stand on its own, simply grilled or broiled, or go under cover of almost any kind of sauce.', 13.99, 1, 'fishmonger/Whole Wild Snapper.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (5, 'Whole Dover Sole, Farm-Raised', 'Dover sole is named for the English seaside port from which its most prolific hunters once sailed. Its glistening white meat has a mild and sweet flavor with a firm yet succulent texture. Because its firm and flat, Dover sole is perfect for pan-frying—we like to cook it in brown butter until the edges crisp. Pair with roast potatoes and grilled asparagus spears for an elegant dinner party entree.', 18.99, 1, 'fishmonger/Whole Dover Sole, Farm-Raised.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (5, 'Whole Turbot, Farm-Raised', 'Elegant and refined yet robust like a porterhouse steak, the turbot has been blessed with both a full flavor and a meaty succulence that other flatfish simply can"t match. The stark white flesh is satisfyingly firm with large flakes, which means it holds together well during cooking while retaining plenty of moisture. Cooking it whole makes a dinner party statement, roasting the filets on the bone is a revelation of flavors and textures. ', 12.99, 1, 'fishmonger/Whole Turbot, Farm-Raised.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (5, 'Cooked Wild King Crab Legs, Previously Frozen', 'Kings are the ultimate crabs, sizewise and tastewise. Their big, meaty legs contain remarkably tender, sweet, delicately flavored meat. They also have the highest meat-to-shell ratio of any crab. These legs have been fully cooked and immediately frozen to maintain superior flavor. Use the distinctive red-edged snowy-white meat in any crab recipe, or simply steam the legs until heated through and serve with drawn butter.', 37.99, 1, 'fishmonger/Cooked Wild King Crab Legs, Previously Frozen.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (5, 'Snow Crab Legs, Previously Frozen', 'Flaky, delicate, and snowy white, snow crab is so sweet and tender that it is often confused with Alaskan king crab. We love it steamed and tossed into a cool summer salad, or dipped into a spicy cocktail sauce. Its also superb in fish stews and creamy bisques', 23.99, 1, 'fishmonger/Snow Crab Legs, Previously Frozen.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (5, 'Soft Shell Crabs', 'Soft-shell crabs are the gourmet potato chip of the seafood world. They aren"t a special kind, they"re a special phase. When blue crabs shed their shells, they"re soft for a brief period until their new shells harden. During that time, the entire crab isn"t just edible, its wonderful — crunchy-tender and sweet. Deep-fry or saute soft-shell crabs to crispness and serve them in a sandwich or over wilted greens.', 8.99, 1, 'fishmonger/Soft Shell Crabs.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (5, 'Local Wild Bluefish Fillet', 'Dayboat fishermen catch bold-tasting bluefish in crisp, local waters. They come straight to FreshDirect, where we portion, pack, and send them straight to you.', 10.99, 1, 'fishmonger/Local Wild Bluefish Fillet.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (5, 'Local Wild Monkfish Fillet', 'Straight from clear, local waters, these monkfish are sweet and buttery, with a flakeless, shellfish-like texture and only a single central bone.', 14.99, 1, 'fishmonger/Local Wild Monkfish Fillet.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (5, 'Wild Alaskan Sockeye Salmon Fillet, Fresh', 'Chefs and gourmands treasure Wild Alaskan Sockeye or "Red Salmon" for its robust flavor, high oil content, and the bright red hue it maintains, even after cooking. When it comes to preparing a beautiful cut of salmon, less is more, so consider simple grill and saute methods with a dash of seasoning and fresh herbs.', 40.00, 1, 'fishmonger/Wild Alaskan Sockeye Salmon Fillet, Fresh.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (5, 'Wild Icelandic Cod Fillet', 'Not only is our dayboat Icelandic cod sourced from the largest fish caught, but only the thickest portions found directly behind the head is selected. This guarantees that each fillet will be a meaty piece with a firm large flake that is also moist and mild in taste. Great for all recipes and cooking methods.', 16.99, 1, 'fishmonger/Wild Icelandic Cod Fillet.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (5, 'Wild Lemon Sole Fillet', 'Lemon sole is a little thicker than other soles or flounders, so it stands up to the added heat of broiling better. It has just a little more of the sweet, mild flavor that makes these flatfish so popular.', 25.99, 1, 'fishmonger/Wild Lemon Sole Fillet.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (5, 'Farm-Raised Arctic Char Fillet', 'With its pink-orange color and rich flavor, char could possibly be one of the best fish we"ve ever eaten. With a finer flake and milder taste than salmon or trout, its sweet, versatile flavor shines through in almost any dish. Enjoy it simply with a side of veggies or use it as a stand-in for any recipe that calls for snapper, sole, salmon, or trout.', 18.99, 1, 'fishmonger/Farm-Raised Arctic Char Fillet.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (5, 'Farm-Raised Catfish Fillet', 'Moist, delicate, fall-off-the-bone catfish is one of the seafood world"s best-kept secrets. It has a fabulous flavor.', 10.99, 1, 'fishmonger/Farm-Raised Catfish Fillet.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (5, 'Farm-Raised Tilapia Fillet', 'This is a mild fish with a pleasant, light taste and a big flake. Although tilapia (which you may know as St. Peters fish) has a slightly firmer texture than sole.', 8.99, 1, 'fishmonger/Farm-Raised Tilapia Fillet.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (5, 'Local Wild Skate Fillet', 'Dayboat fishermen harvest these skate in cool, local waters, and if you like flounder, sole, and other soft, delicate fish but haven"t tried skate, its high time you did.', 9.99, 1, 'fishmonger/Local Wild Skate Fillet.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (5, 'Ocean Perch Fillet', 'Ocean perch"s lean, firm texture makes it perfect for soups, stews, or quick saute. The sweet moist white flesh of this variety of deep water rockfish marries well with the flavors of the Mediterranean. Its smaller size makes it a versatile option for children and adults alike.', 15.99, 1, 'fishmonger/Ocean Perch Fillet.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (5, 'Ora King Farm-Raised King Salmon Fillet', 'The highly prized King Salmon is a rare luxury, making up less than one percent of the world"s salmon population. It has the highest natural oil content of all salmon varieties, giving it a luscious, elegant texture and rich taste.', 30.99, 1, 'fishmonger/Ora King Farm-Raised King Salmon Fillet.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (5, 'Organic Farm-Raised Salmon Fillet', 'This special organic salmon comes to us fresh (not frozen!) from the cold, fast currents of a certified organic seafarm located in the confluence of the North Sea and the Atlantic Ocean. The beautiful orange-red color is closer to wild salmon than other farmed fish. These salmon are hand-fed an entirely natural and organic diet with no synthetic colorants — the flesh is firm and the flavor is mild.', 24.99, 1, 'fishmonger/Organic Farm-Raised Salmon Fillet.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (5, 'Wild Flounder Fillet', 'Flounder is one of the least fishy-tasting fish we know. In fact, it has one of the mildest flavors of anything with fins. Its finely textured flesh is meltingly soft. So soft, in fact, that you need to be particularly careful not to handle it too much while cooking or it may fall apart.', 20.99, 1, 'fishmonger/Wild Flounder Fillet.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (5, 'Turbot Chop, Bone-In', 'Elegant and refined yet robust like a porterhouse steak, the turbot has been blessed with both a full flavor and a meaty succulence that other flatfish simply can"t match.', 12.99, 1, 'fishmonger/Turbot Chop, Bone-In.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (5, 'Wild Alaskan Black Cod Fillet', 'Thanks to a high fat content, every buttery bite of black cod provides texture and flavor that"s vastly different from the lean Atlantic cod with which most East Coast diners are familiar.', 28.99, 1, 'fishmonger/Wild Alaskan Black Cod Fillet.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (5, 'Wild Alaskan Copper River King Salmon Fillet', 'Caught in cold, clear Alaskan waters, these Wild King Salmon are the largest of the species — up to 90 pounds. Traveling hundreds of miles against treacherous Copper River rapids, the salmon store a remarkable amount of nutrients, providing them with an exceptionally high oil content. As a result, these Wild King salmon are unparalleled in taste, prized for their bright, succulent flesh and firm texture.', 40.99, 1, 'fishmonger/Wild Alaskan Copper River King Salmon Fillet.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (5, 'Wild Chilean Sea Bass Fillet', 'Chilean sea bass is semi-firm and has a rich, buttery flavor — not at all fishy. Fans say it reminds them of scallops. Its medium to high fat level makes it less susceptible to overcooking than other whitefish. This fashionable fish is a relative newcomer to the American food scene, and its popularity has skyrocketed.', 35.99, 1, 'fishmonger/Wild Chilean Sea Bass Fillet.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (5, 'Wild Coho Salmon', 'Our wild coho salmon is responsibly caught for us by our partners at Triad Fisheries in the Gulf of Alaska. Its 100% traceable and sustainable due to the care given to each and every fish. A fleet of family-operated vessels catch each fish by hook and line, one by one, and individually clean and freeze them at sea to ensure fresh, sashimi grade fillet.', 22.99, 1, 'fishmonger/Wild Coho Salmon.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (5, 'Wild Halibut Fillet', 'Snowy-fleshed halibut has a delicate, mild flavor and tender flesh. Utterly delicious and sophisticated. The combination of sweet flavor and silky, firm texture makes halibut one of the most popular fish around.', 30.99, 1, 'fishmonger/Wild Halibut Fillet.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (5, 'Wild Local Striped Bass Fillet', 'It looks like just another whitefish, but your first bite will tell you that wild striped bass is a fish apart.', 30.99, 1, 'fishmonger/Wild Local Striped Bass Fillet.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (5, 'Wild Mahi-Mahi Fillet', 'Although the name may sound exotic, the Mahi-Mahi is a popular fish we source from fishermen working from the coast of Maine to Florida. The ivory-colored flesh boasts fine flakes, a firm chewiness, and mild flavor. Mahi-Mahi is a tender, sweet-tasting fish that we think makes the ultimate fish sandwich.', 20.99, 1, 'fishmonger/Wild Mahi-Mahi Fillet.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (5, 'Wild Spanish Mackerel Fillet', 'With off-white flesh and oily, briny flavor, Spanish Mackerel is a popular option in sushi restaurants. These filets are known for their bold presence, and they pair well with sassy soy marinades, garlic-lemon sauces, vinaigrettes, and bright tomato sauces. The skin has a delicate, silky texture, so be sure to oil your grill, skillet, or broiler pan very well and avoid overcooking.', 17.99, 1, 'fishmonger/Wild Spanish Mackerel Fillet.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (5, 'Wild Tilefish Fillet', 'These large, colorful fish yield thick, meaty fillets, making it great for pan roasting, braising, or broiling. We also love it flaked in soups, sauces, and cold salads as an alternative to lump crab meat.', 27.99, 1, 'fishmonger/Wild Tilefish Fillet.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (5, 'Wild Yellowfin Tuna Steak', 'Yellowfin, with its smooth, dense, mild meat — very buttery and rich — is the most popular of tunas. These tuna are a bright medium red — darker than albacore but lighter than bigeye. Yellowfin steak has a wonderful, slightly chewy, meaty texture, and is good grilled, broiled, or roasted.', 20.99, 1, 'fishmonger/Wild Yellowfin Tuna Steak.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (5, 'Wild Swordfish Steak', 'If cows had gills, they"d be swordfish. These steaks have a firm, meaty texture that"s closer to filet mignon than to fish.', 25.99, 1, 'fishmonger/Wild Swordfish Steak.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (5, 'Live Wild Lobster, Small', 'A 1¼-pound live lobster makes a respectable meal for one; most people can polish off at least a 2-pounder. If you"ve ever heard that large lobsters are tough — forget it. Its overcooking, not size, that toughens lobster meat.', 16.99, 1, 'fishmonger/Live Wild Lobster, Small.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (5, 'Wild Cold Water Lobster Tails', 'Hailing from cold North Atlantic waters, these hearty lobster tails have firm, sweet meat that needs little more than a dish of melted butter to complement. Defrost these shell-on tails in the refrigerator or a cold-water bath, then boil, broil, or steam.', 32.99, 1, 'fishmonger/Wild Cold Water Lobster Tails.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (5, 'Wild Local Littleneck Clams', 'These sweet, briny babies of the clam family are also the most tender. Locally-harvested littlenecks are less than two inches across, but bursting with flavor.', 2.99, 1, 'fishmonger/Wild Local Littleneck Clams.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (5, 'Organic Iceberg Mussels', 'These organic mussels from Newfoundland are grown on lines in deep water sites, in depths of 40 to 120 feet. The clear, icy waters in the area provide a pure, clean growing environment, and this pampered lifestyle leaves them nearly completely free of grit. Steam them in white wine with parsley, garlic and butter, or in a tomato-based broth. Mussels make a classic pairing with pommes frites and a frosty glass of ale.', 5.99, 1, 'fishmonger/Organic Iceberg Mussels.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (5, 'Gold Coast Steamer Clams', 'Hand-harvested and hand-graded, these sweet, delicious clams come straight from the salty waters of the Long Island Sound and are delivered to you no longer than a day after harvest. Sometimes called Ipswitch or Pisser clams, these fresh morsels go great in creamy chowder or tossed in pasta with garlic and olive oil.', 10.99, 1, 'fishmonger/Gold Coast Steamer Clams.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (5, 'Wild Local Cherrystone Clams', 'Bright, zesty, 2.5 inch cherrystones are the next clam size up from littlenecks and topnecks. They have a bigger flavor and a slightly chewier texture.', 2.99, 1, 'fishmonger/Wild Local Cherrystone Clams.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (5, 'Razor Clams', 'Named for their physical resemblance to an old-fashioned razor, these clams are most often found in shallow subtidal flats close to the shoreline—an ideal location to soak up plenty of natural nutrients.', 10.99, 1, 'fishmonger/Razor Clams.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (5, 'Maine Rope Grown Mussels', 'The cold, pristine waters of Penobscot Bay are renowned for producing plump, nutritious and deliciously tasty mussels. Suspended from growing ropes, they feed naturally on the ever-changing Maine tidal current, which results in a sweet fullness in flavor, a clean shell, and a consistent size.', 5.99, 1, 'fishmonger/Maine Rope Grown Mussels.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (5, 'Little Gun Oysters', 'Located in Moriches Bay along Fire Island National Seashore, Great Gun Shellfish is raising some of the best tasting oysters on Long Island. The Little Gun is a cocktail size oyster that starts with a sharp brine upfront leading to a sweet buttery flavor to follow. Working with marine scientist from Stony Brook University, Great Gun Shellfish is also on the cutting edge of integrating oyster farming with kelp farming, not only diversifying crops, but contributing greatly to the sustainability and health of Long Islands estuaries.', 2.99, 1, 'fishmonger/Little Gun Oysters.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (5, 'Moondancer Oysters', 'Mook Sea Farm"s signature oyster the Moondancer is raised on surface beds along the Damariscotta River. These Maine-grown gems are briny, with delicious minerality that yields a medium sweetness. Enjoy these oysters with a hoppy IPA, Muscadet or a dry martini with olives.', 2.99, 1, 'fishmonger/Moondancer Oysters.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (5, 'Shucked Oysters', 'Oysters tender chewiness, briny liquor, and exotic reputation transform any dish into a delicacy. When you think oysters, you usually think half shells, but oysters are as versatile as clams or mussels. Toss them in a stew, bisque, or chowder. Deep-fry them and serve hot with tartar sauce. Put them in your poultry stuffing or pasta sauce.', 9.99, 1, 'fishmonger/Shucked Oysters.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (5, 'Local Dry Sea Scallops', 'Ever had creamy, tender, flawlessly seared scallops at a restaurant and wondered why your own often come out watery or overcooked? The secret to that succulent sear is a hot skillet and dry scallops.', 25.99, 1, 'fishmonger/Local Dry Sea Scallops.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (5, 'All-Natural Wild Domestic Gulf Shrimp', 'Sweet and flavorful — these shrimp are perfect for pasta and risotto, either on their own or mixed with other seafood. Marinate and broil them, or toss them into stir-fries. These shrimp are peeled, deveined, and ready to cook.', 15.99, 1, 'fishmonger/All-Natural Wild Domestic Gulf Shrimp.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (5, 'Wild Domestic Gulf Shrimp', 'These wild-caught shrimp from the Gulf of Mexico have an incredibly clean taste and irresistibly sweet flavor.', 18.99, 1, 'fishmonger/Wild Domestic Gulf Shrimp.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (5, 'Cooked Octopus Legs', 'A delightful delicacy of the deep, octopus legs have a tender, meaty flavor that"s a favorite of seafood lovers all over the world. Wild-caught in the Mediterranean, these legs are tenderized using sea salt, cold water, and a tumbler before being flash-frozen to guarantee a fresh taste. Use these cooked legs in any of your favorite octopus recipes.', 20.99, 1, 'fishmonger/Cooked Octopus Legs.jpg', 'Raised without antibiotics', 1, 10, 500);

INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY)
VALUES (5, 'Whole Octopus, Tenderized', 'A delightful delicacy of the deep, octopus has a tender, meaty flavor that"s a favorite of seafood lovers all over the world. Wild-caught in the Mediterranean, these octopi are tenderized using sea salt, cold water, and a tumbler before being flash-frozen to guarantee a fresh taste.', 10.99, 1, 'fishmonger/Whole Octopus, Tenderized.jpg', 'Raised without antibiotics', 1, 10, 500);


