CREATE DATABASE coat;
USE coat;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    image VARCHAR(255)
);
ALTER TABLE orders
ADD CONSTRAINT fk_user_email FOREIGN KEY (user_email) REFERENCES users(email);

CREATE TABLE orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_email VARCHAR(100) NOT NULL,
    date_purchased DATETIME NOT NULL,
    image VARCHAR(255),
    title VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (user_email) REFERENCES users(email)
);

CREATE TABLE address (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_email VARCHAR(255) NOT NULL,
    name VARCHAR(255),
    phone VARCHAR(20),
    address1 VARCHAR(255),
    address2 VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(100),
    country VARCHAR(100),
    pincode VARCHAR(20)
);

INSERT INTO products (id, title, description, price, image) VALUES
(1, 'Giày Sneaker Converse Chuck Taylor 1', 'Một đôi giày sneaker Converse Chuck Taylor cổ điển, thích hợp cho nhiều phong cách và dịp khác nhau.', 109.95, 'image/1.jpg'),
(2, 'Giày Sneaker Classic Silver', 'Đôi giày sneaker Classic Silver nhẹ nhàng, thoải mái cho cả ngày dài.', 22.3, 'image/2.jpg'),
(3, 'Giày Sneaker Diamond Accent', 'Đôi giày sneaker với chi tiết kim cương, phù hợp cho các dịp đặc biệt.', 55.99, 'image/3.jpg'),
(4, 'Giày Sneaker Simple Band', 'Đôi giày sneaker đơn giản mà thanh lịch, hoàn hảo để kết hợp với nhiều trang phục.', 15.99, 'image/4.jpg'),
(5, 'Giày Sneaker Rose Gold', 'Đôi giày sneaker màu vàng hồng tinh tế, là một món đồ không thể thiếu trong bộ sưu tập của bạn.', 695, 'image/5.jpg'),
(6, 'Giày Sneaker Vintage Style', 'Đôi giày sneaker mang phong cách vintage, lý tưởng cho những ai yêu thích sự cổ điển.', 168, 'image/6.jpg'),
(7, 'Giày Sneaker Stackable Gemstone', 'Đôi giày sneaker với thiết kế nhiều màu sắc, dễ dàng kết hợp với các phụ kiện khác.', 9.99, 'image/7.jpg'),
(8, 'Giày Sneaker Modern Art', 'Đôi giày sneaker mang phong cách nghệ thuật hiện đại, phù hợp cho những tín đồ thời trang.', 10.99, 'image/8.jpg'),
(9, 'Giày Sneaker Gold Plated', 'Đôi giày sneaker với lớp hoàn thiện mạ vàng, lý tưởng cho cả phong cách thường ngày và sự kiện.', 64, 'image/9.jpg'),
(10, 'Giày Sneaker Swarovski Crystal', 'Đôi giày sneaker với các viên đá Swarovski lấp lánh, hoàn hảo cho các dịp đặc biệt.', 109, 'image/10.jpg'),
(11, 'Giày Sneaker Handmade Artisan', 'Đôi giày sneaker thủ công độc đáo với những chi tiết tinh xảo, dành cho những người yêu thích nghệ thuật.', 109, 'image/11.jpg'),
(12, 'Giày Sneaker Elegant Birthstone', 'Đôi giày sneaker với đá quý cá nhân hóa, là món quà ý nghĩa cho những người thân yêu.', 114, 'image/12.jpg'),
(13, 'Giày Sneaker Art Deco Style', 'Đôi giày sneaker phong cách Art Deco với các họa tiết hình học, là món đồ thời trang không thể thiếu.', 599, 'image/13.jpg'),
(14, 'Giày Sneaker Custom Engraved', 'Đôi giày sneaker được khắc theo yêu cầu, hoàn hảo cho các dịp kỷ niệm và lễ hội.', 999.99, 'image/14.jpg'),
(15, 'Giày Sneaker Boho Style Set', 'Bộ giày sneaker phong cách boho đẹp mắt, phù hợp cho việc phối hợp nhiều phong cách khác nhau.', 56.99, 'image/15.jpg'),
(16, 'Giày Sneaker Stackable Band', 'Bộ giày sneaker có thể xếp chồng, đa dạng và phong cách.', 29.95, 'image/16.jpg'),
(17, 'Giày Sneaker Minimalist Design', 'Đôi giày sneaker mang phong cách tối giản, nhấn mạnh sự thanh lịch và đơn giản.', 39.99, 'image/17.jpg'),
(18, 'Giày Sneaker Colorful Enamel', 'Đôi giày sneaker với thiết kế men màu sắc vui nhộn.', 9.85, 'image/18.png'),
(19, 'Giày Sneaker Twisted Band', 'Đôi giày sneaker với thiết kế băng xoắn độc đáo.', 7.95, 'image/19.webp'),
(20, 'Giày Sneaker Vintage Floral', 'Đôi giày sneaker vintage với hoa văn lãng mạn.', 12.99, 'image/20.webp');


UPDATE products
SET 
    title = 'Áo khoác Bomber',
    description = 'Áo khoác phong cách bomber, thích hợp cho cả nam và nữ.',
    price = 500000,
    image = 'image/1.png'
WHERE id = 1;
UPDATE products
SET 
    title = 'Áo khoác Da Biker',
    description = 'Áo khoác mạnh mẽ và cá tính, thường được làm từ da, có khóa kéo và nút đinh tán.',
    price = 700000,
    image = 'image/2.png'
WHERE id = 2;

UPDATE products
SET 
    title = 'Áo khoác Trench',
    description = 'Thiết kế cổ điển, chống nước, dài qua đầu gối, thắt đai. Rất thanh lịch cho mùa thu đông.',
    price = 1200000,
    image = 'image/3.png'
WHERE id = 3;

UPDATE products
SET 
    title = 'Áo khoác Pea Coat',
    description = 'Áo len dày, hai hàng cúc, cổ bẻ rộng, màu xanh navy, phù hợp cho mùa lạnh.',
    price = 900000,
    image = 'image/4.png'
WHERE id = 4;

UPDATE products
SET 
    title = 'Áo khoác Denim',
    description = 'Làm từ denim, trẻ trung, dễ phối đồ, mang phong cách vượt thời gian.',
    price = 600000,
    image = 'image/5.png'
WHERE id = 5;

UPDATE products
SET 
    title = 'Áo khoác Dạ Oversize',
    description = 'Áo dạ dài, rộng, phù hợp với phong cách thoải mái, ấm áp.',
    price = 800000,
    image = 'image/6.png'
WHERE id = 6;

UPDATE products
SET 
    title = 'Áo khoác Varsity',
    description = 'Phong cách học đường Mỹ với thân và tay áo khác màu, có chữ cái hoặc logo đại diện.',
    price = 950000,
    image = 'image/7.png'
WHERE id = 7;

UPDATE products
SET 
    title = 'Áo khoác Parka',
    description = 'Dày, có mũ lông, giữ ấm tốt, dài qua hông, thích hợp cho mùa đông lạnh giá.',
    price = 1300000,
    image = 'image/8.png'
WHERE id = 8;

UPDATE products
SET 
    title = 'Áo khoác Blazer',
    description = 'Không chỉ để giữ ấm mà còn mang lại vẻ thanh lịch và sang trọng.',
    price = 1500000,
    image = 'image/9.png'
WHERE id = 9;

UPDATE products
SET 
    title = 'Áo khoác Puffer',
    description = 'Áo phao nhẹ, giữ ấm tốt, có đường may nổi ô vuông, phổ biến trong mùa đông.',
    price = 1100000,
    image = 'image/10.png'
WHERE id = 10;

UPDATE products
SET 
    title = 'Áo khoác Harrington',
    description = 'Thiết kế cổ điển, cổ đứng, viền bo, phổ biến từ thập niên 50.',
    price = 850000,
    image = 'image/11.png'
WHERE id = 11;

UPDATE products
SET 
    title = 'Áo khoác Cape',
    description = 'Dạng choàng không tay, thường làm từ nỉ dày, phong cách cổ điển.',
    price = 1000000,
    image = 'image/12.png'
WHERE id = 12;

UPDATE products
SET 
    title = 'Áo khoác Windbreaker',
    description = 'Áo nhẹ chống gió và nước, phù hợp cho hoạt động ngoài trời.',
    price = 550000,
    image = 'image/13.png'
WHERE id = 13;

UPDATE products
SET 
    title = 'Áo khoác Quilted Jacket',
    description = 'Dày, có các đường may ô vuông, giữ ấm tốt.',
    price = 950000,
    image = 'image/14.png'
WHERE id = 14;

UPDATE products
SET 
    title = 'Áo khoác Fishtail Parka',
    description = 'Dài, đuôi xẻ hình đuôi cá, giữ ấm tốt.',
    price = 1200000,
    image = 'image/15.png'
WHERE id = 15;

UPDATE products
SET 
    title = 'Áo khoác Field Jacket',
    description = 'Phong cách quân đội, nhiều túi, làm từ cotton chống nước.',
    price = 700000,
    image = 'image/16.png'
WHERE id = 16;

UPDATE products
SET 
    title = 'Áo khoác Blouson',
    description = 'Áo ngắn ngang eo, thích hợp nhiều phong cách từ lịch sự đến thể thao.',
    price = 800000,
    image = 'image/17.png'
WHERE id = 17;

UPDATE products
SET 
    title = 'Áo khoác Double-Breasted Coat',
    description = 'Hai hàng cúc, cổ rộng, sang trọng, thường từ dạ hoặc len.',
    price = 1600000,
    image = 'image/18.png'
WHERE id = 18;

UPDATE products
SET 
    title = 'Áo khoác Faux Fur',
    description = 'Áo lông nhân tạo, giữ ấm, thời thượng.',
    price = 1400000,
    image = 'image/19.png'
WHERE id = 19;

UPDATE products
SET 
    title = 'Áo khoác Anorak',
    description = 'Chống nước, có túi to và mũ, thích hợp cho thời tiết ẩm ướt.',
    price = 750000,
    image = 'image/20.png'
WHERE id = 20;
