INSERT INTO categories (name) VALUES
    ('all'),
    ('clothes'),
    ('tech');

INSERT INTO products (id, name, inStock, description, category_id, brand) VALUES
    ('huarache-x-stussy-le', 'Nike Air Huarache Le', true, '<p>Great sneakers for everyday use!</p>', (SELECT id FROM categories WHERE name = 'clothes'), 'Nike x Stussy'),
    ('jacket-canada-goosee', 'Jacket', true, '<p>Awesome winter jacket</p>', (SELECT id FROM categories WHERE name = 'clothes'), 'Canada Goose'),
    ('ps-5', 'PlayStation 5', true, '<p>A good gaming console. Plays games of PS4! Enjoy if you can buy it mwahahahaha</p>', (SELECT id FROM categories WHERE name = 'tech'), 'Sony'),
    ('xbox-series-s', 'Xbox Series S 512GB', false, '\n<div>\n    <ul>\n        <li><span>Hardware-beschleunigtes Raytracing macht dein Spiel noch realistischer</span></li>\n        <li><span>Spiele Games mit bis zu 120 Bilder pro Sekunde</span></li>\n        <li><span>Minimiere Ladezeiten mit einer speziell entwickelten 512GB NVMe SSD und wechsle mit Quick Resume nahtlos zwischen mehreren Spielen.</span></li>\n        <li><span>Xbox Smart Delivery stellt sicher, dass du die beste Version deines Spiels spielst, egal, auf welcher Konsole du spielst</span></li>\n        <li><span>Spiele deine Xbox One-Spiele auf deiner Xbox Series S weiter. Deine Fortschritte, Erfolge und Freundesliste werden automatisch auf das neue System übertragen.</span></li>\n        <li><span>Erwecke deine Spiele und Filme mit innovativem 3D Raumklang zum Leben</span></li>\n        <li><span>Der brandneue Xbox Wireless Controller zeichnet sich durch höchste Präzision, eine neue Share-Taste und verbesserte Ergonomie aus</span></li>\n        <li><span>Ultra-niedrige Latenz verbessert die Reaktionszeit von Controller zum Fernseher</span></li>\n        <li><span>Verwende dein Xbox One-Gaming-Zubehör -einschließlich Controller, Headsets und mehr</span></li>\n        <li><span>Erweitere deinen Speicher mit der Seagate 1 TB-Erweiterungskarte für Xbox Series X (separat erhältlich) und streame 4K-Videos von Disney+, Netflix, Amazon, Microsoft Movies &amp; TV und mehr</span></li>\n    </ul>\n</div>', (SELECT id FROM categories WHERE name = 'tech'), 'Microsoft'),
    ('apple-imac-2021', 'iMac 2021', true, 'The new iMac!', (SELECT id FROM categories WHERE name = 'tech'), 'Apple'),
    ('apple-iphone-12-pro', 'iPhone 12 Pro', true, 'This is iPhone 12. Nothing else to say.', (SELECT id FROM categories WHERE name = 'tech'), 'Apple'),
    ('apple-airpods-pro', 'AirPods Pro', false, '\n<h3>Magic like you’ve never heard</h3>\n<p>AirPods Pro have been designed to deliver Active Noise Cancellation for immersive sound, Transparency mode so you can hear your surroundings, and a customizable fit for all-day comfort. Just like AirPods, AirPods Pro connect magically to your iPhone or Apple Watch. And they’re ready to use right out of the case.\n\n<h3>Active Noise Cancellation</h3>\n<p>Incredibly light noise-cancelling headphones, AirPods Pro block out your environment so you can focus on what you’re listening to. AirPods Pro use two microphones, an outward-facing microphone and an inward-facing microphone, to create superior noise cancellation. By continuously adapting to the geometry of your ear and the fit of the ear tips, Active Noise Cancellation silences the world to keep you fully tuned in to your music, podcasts, and calls.\n\n<h3>Transparency mode</h3>\n<p>Switch to Transparency mode and AirPods Pro let the outside sound in, allowing you to hear and connect to your surroundings. Outward- and inward-facing microphones enable AirPods Pro to undo the sound-isolating effect of the silicone tips so things sound and feel natural, like when you’re talking to people around you.</p>\n\n<h3>All-new design</h3>\n<p>AirPods Pro offer a more customizable fit with three sizes of flexible silicone tips to choose from. With an internal taper, they conform to the shape of your ear, securing your AirPods Pro in place and creating an exceptional seal for superior noise cancellation.</p>\n\n<h3>Amazing audio quality</h3>\n<p>A custom-built high-excursion, low-distortion driver delivers powerful bass. A superefficient high dynamic range amplifier produces pure, incredibly clear sound while also extending battery life. And Adaptive EQ automatically tunes music to suit the shape of your ear for a rich, consistent listening experience.</p>\n\n<h3>Even more magical</h3>\n<p>The Apple-designed H1 chip delivers incredibly low audio latency. A force sensor on the stem makes it easy to control music and calls and switch between Active Noise Cancellation and Transparency mode. Announce Messages with Siri gives you the option to have Siri read your messages through your AirPods. And with Audio Sharing, you and a friend can share the same audio stream on two sets of AirPods — so you can play a game, watch a movie, or listen to a song together.</p>\n', (SELECT id FROM categories WHERE name = 'tech'), 'Apple'),
    ('apple-airtag', 'AirTag', true, '\n<h1>Lose your knack for losing things.</h1>\n<p>AirTag is an easy way to keep track of your stuff. Attach one to your keys, slip another one in your backpack. And just like that, they’re on your radar in the Find My app. AirTag has your back.</p>\n', (SELECT id FROM categories WHERE name = 'tech'), 'Apple');

INSERT INTO gallery_images (product_id, image_url, display_order) VALUES 
    ('huarache-x-stussy-le', 'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/DD1381200_DEOA_2_720x.jpg?v=1612816087', 1),
    ('huarache-x-stussy-le', 'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/DD1381200_DEOA_1_720x.jpg?v=1612816087', 2),
    ('huarache-x-stussy-le', 'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/DD1381200_DEOA_3_720x.jpg?v=1612816087', 3),
    ('huarache-x-stussy-le', 'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/DD1381200_DEOA_5_720x.jpg?v=1612816087', 4),
    ('huarache-x-stussy-le', 'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/DD1381200_DEOA_4_720x.jpg?v=1612816087', 5),
    ('jacket-canada-goosee', 'https://images.canadagoose.com/image/upload/w_480,c_scale,f_auto,q_auto:best/v1576016105/product-image/2409L_61.jpg', 1),
    ('jacket-canada-goosee', 'https://images.canadagoose.com/image/upload/w_480,c_scale,f_auto,q_auto:best/v1576016107/product-image/2409L_61_a.jpg', 2),
    ('jacket-canada-goosee', 'https://images.canadagoose.com/image/upload/w_480,c_scale,f_auto,q_auto:best/v1576016108/product-image/2409L_61_b.jpg', 3),
    ('jacket-canada-goosee', 'https://images.canadagoose.com/image/upload/w_480,c_scale,f_auto,q_auto:best/v1576016109/product-image/2409L_61_c.jpg', 4),
    ('jacket-canada-goosee', 'https://images.canadagoose.com/image/upload/w_480,c_scale,f_auto,q_auto:best/v1576016110/product-image/2409L_61_d.jpg', 5),
    ('jacket-canada-goosee', 'https://images.canadagoose.com/image/upload/w_1333,c_scale,f_auto,q_auto:best/v1634058169/product-image/2409L_61_o.png', 6),
    ('jacket-canada-goosee', 'https://images.canadagoose.com/image/upload/w_1333,c_scale,f_auto,q_auto:best/v1634058159/product-image/2409L_61_p.png', 7),
    ('ps-5', 'https://images-na.ssl-images-amazon.com/images/I/510VSJ9mWDL._SL1262_.jpg', 1),
    ('ps-5', 'https://images-na.ssl-images-amazon.com/images/I/610%2B69ZsKCL._SL1500_.jpg', 2),
    ('ps-5', 'https://images-na.ssl-images-amazon.com/images/I/51iPoFwQT3L._SL1230_.jpg', 3),
    ('ps-5', 'https://images-na.ssl-images-amazon.com/images/I/61qbqFcvoNL._SL1500_.jpg', 4),
    ('ps-5', 'https://images-na.ssl-images-amazon.com/images/I/51HCjA3rqYL._SL1230_.jpg', 5),
    ('xbox-series-s', 'https://images-na.ssl-images-amazon.com/images/I/71vPCX0bS-L._SL1500_.jpg', 1),
    ('xbox-series-s', 'https://images-na.ssl-images-amazon.com/images/I/71q7JTbRTpL._SL1500_.jpg', 2),
    ('xbox-series-s', 'https://images-na.ssl-images-amazon.com/images/I/71iQ4HGHtsL._SL1500_.jpg', 3),
    ('xbox-series-s', 'https://images-na.ssl-images-amazon.com/images/I/61IYrCrBzxL._SL1500_.jpg', 4),
    ('xbox-series-s', 'https://images-na.ssl-images-amazon.com/images/I/61RnXmpAmIL._SL1500_.jpg', 5),
    ('apple-imac-2021', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/imac-24-blue-selection-hero-202104?wid=904&hei=840&fmt=jpeg&qlt=80&.v=1617492405000', 1),
    ('apple-iphone-12-pro', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-12-pro-family-hero?wid=940&amp;hei=1112&amp;fmt=jpeg&amp;qlt=80&amp;.v=1604021663000', 1),
    ('apple-airpods-pro', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MWP22?wid=572&hei=572&fmt=jpeg&qlt=95&.v=1591634795000', 1),
    ('apple-airtag', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/airtag-double-select-202104?wid=445&hei=370&fmt=jpeg&qlt=95&.v=1617761672000', 1);

-- Some are duplicated because they have different values (One Size uses numbers, while other Size uses letters as values...)
INSERT INTO attribute_sets (name, type) VALUES
    ('Size', 'text'),
    ('Size', 'text'),
    ('Color', 'swatch'),
    ('Capacity', 'text'),
    ('Capacity', 'text'),
    ('With USB 3 ports', 'text'),
    ('Touch ID in keyboard', 'text');

INSERT INTO attribute_values (display_value, value, attribute_set_id) VALUES
    ('40', '40', (SELECT id FROM attribute_sets WHERE name = 'Size' LIMIT 1)),
    ('41', '41', (SELECT id FROM attribute_sets WHERE name = 'Size' LIMIT 1)), 
    ('42', '42', (SELECT id FROM attribute_sets WHERE name = 'Size' LIMIT 1)),
    ('43', '43', (SELECT id FROM attribute_sets WHERE name = 'Size' LIMIT 1)),
    ('Small', 'S', (SELECT id FROM attribute_sets WHERE name = 'Size' ORDER BY id DESC LIMIT 1)),
    ('Medium', 'M', (SELECT id FROM attribute_sets WHERE name = 'Size' ORDER BY id DESC LIMIT 1)),
    ('Large', 'L', (SELECT id FROM attribute_sets WHERE name = 'Size' ORDER BY id DESC LIMIT 1)), 
    ('Extra Large', 'XL', (SELECT id FROM attribute_sets WHERE name = 'Size' ORDER BY id DESC LIMIT 1)),
    ('Green', '#44FF03', (SELECT id FROM attribute_sets WHERE name = 'Color')),
    ('Cyan', '#03FFF7', (SELECT id FROM attribute_sets WHERE name = 'Color')),
    ('Blue', '#030BFF', (SELECT id FROM attribute_sets WHERE name = 'Color')),
    ('Black', '#000000', (SELECT id FROM attribute_sets WHERE name = 'Color')),
    ('White', '#FFFFFF', (SELECT id FROM attribute_sets WHERE name = 'Color')),
    ('512G', '512G', (SELECT id FROM attribute_sets WHERE name = 'Capacity' LIMIT 1)),
    ('1T', '1T', (SELECT id FROM attribute_sets WHERE name = 'Capacity' LIMIT 1)),
    ('256GB', '256GB', (SELECT id FROM attribute_sets WHERE name = 'Capacity' ORDER BY id DESC LIMIT 1)),
    ('512GB', '512GB', (SELECT id FROM attribute_sets WHERE name = 'Capacity' ORDER BY id DESC LIMIT 1)),
    ('Yes', 'Yes', (SELECT id FROM attribute_sets WHERE name = 'With USB 3 ports')),
    ('No', 'No', (SELECT id FROM attribute_sets WHERE name = 'With USB 3 ports')),
    ('Yes', 'Yes', (SELECT id FROM attribute_sets WHERE name = 'Touch ID in keyboard')),
    ('No', 'No', (SELECT id FROM attribute_sets WHERE name = 'Touch ID in keyboard'));

INSERT INTO product_attributes_sets (product_id, attribute_set_id) VALUES
    ('huarache-x-stussy-le', (SELECT id FROM attribute_sets WHERE name = 'Size' LIMIT 1)),
    ('jacket-canada-goosee', (SELECT id FROM attribute_sets WHERE name = 'Size' ORDER BY id DESC LIMIT 1)),
    ('ps-5', (SELECT id FROM attribute_sets WHERE name = 'Color')),
    ('ps-5', (SELECT id FROM attribute_sets WHERE name = 'Capacity' LIMIT 1)),
    ('xbox-series-s', (SELECT id FROM attribute_sets WHERE name = 'Color')),
    ('xbox-series-s', (SELECT id FROM attribute_sets WHERE name = 'Capacity' LIMIT 1)),
    ('apple-imac-2021', (SELECT id FROM attribute_sets WHERE name = 'Capacity' ORDER BY id DESC LIMIT 1)),
    ('apple-imac-2021', (SELECT id FROM attribute_sets WHERE name = 'With USB 3 ports')),
    ('apple-imac-2021', (SELECT id FROM attribute_sets WHERE name = 'Touch ID in keyboard')),
    ('apple-iphone-12-pro', (SELECT id FROM attribute_sets WHERE name = 'Capacity' LIMIT 1)),
    ('apple-iphone-12-pro', (SELECT id FROM attribute_sets WHERE name = 'Color'));

INSERT INTO currencies (label, symbol) VALUES
    ('USD', '$');

INSERT INTO product_prices (product_id, currency_id, amount) VALUES
    ('huarache-x-stussy-le', (SELECT id FROM currencies WHERE label = 'USD'), 144.69),
    ('jacket-canada-goosee', (SELECT id FROM currencies WHERE label = 'USD'), 518.47),
    ('ps-5', (SELECT id FROM currencies WHERE label = 'USD'), 844.02),
    ('xbox-series-s', (SELECT id FROM currencies WHERE label = 'USD'), 333.99),
    ('apple-imac-2021', (SELECT id FROM currencies WHERE label = 'USD'), 1688.03),
    ('apple-iphone-12-pro', (SELECT id FROM currencies WHERE label = 'USD'), 1000.76),
    ('apple-airpods-pro', (SELECT id FROM currencies WHERE label = 'USD'), 300.23),
    ('apple-airtag', (SELECT id FROM currencies WHERE label = 'USD'), 120.57);