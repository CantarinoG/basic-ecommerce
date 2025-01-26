DROP DATABASE IF EXISTS scandiweb;
CREATE DATABASE scandiweb;
USE scandiweb;

-- Stores the main product categories (e.g. clothes, tech, etc)
CREATE TABLE categories (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE
);

-- Stores the main product information including name, stock status, description and brand
CREATE TABLE products (
    id VARCHAR(255) PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    inStock BOOLEAN NOT NULL DEFAULT true,
    description TEXT,
    category_id BIGINT UNSIGNED,
    brand VARCHAR(100) NOT NULL,
    FOREIGN KEY (category_id) REFERENCES categories(id) ON DELETE SET NULL
);

-- Stores product images with their display order for the product gallery
CREATE TABLE gallery_images (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    product_id VARCHAR(255) NOT NULL,
    image_url TEXT NOT NULL,
    display_order INT NOT NULL,
    FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE CASCADE,
    UNIQUE INDEX idx_product_order (product_id, display_order)
);

-- Stores attribute types like Size, Color etc with their display format (text, swatch etc)
CREATE TABLE attribute_sets (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    type VARCHAR(255) NOT NULL
);

-- Stores the possible values for each attribute set (e.g. S,M,L for Size)
CREATE TABLE attribute_values (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    display_value VARCHAR(255) NOT NULL,
    value VARCHAR(255) NOT NULL,
    attribute_set_id BIGINT UNSIGNED NOT NULL,
    FOREIGN KEY (attribute_set_id) REFERENCES attribute_sets(id) ON DELETE CASCADE
);

-- Links products to their applicable attribute sets
CREATE TABLE product_attributes_sets (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    product_id VARCHAR(255) NOT NULL,
    attribute_set_id BIGINT UNSIGNED NOT NULL,
    FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE CASCADE,
    FOREIGN KEY (attribute_set_id) REFERENCES attribute_sets(id) ON DELETE CASCADE
);

-- Stores available currencies with their label and symbol
CREATE TABLE currencies (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    label VARCHAR(10) NOT NULL UNIQUE,
    symbol VARCHAR(5) NOT NULL
);

-- Stores product prices in different currencies
CREATE TABLE product_prices (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    product_id VARCHAR(255) NOT NULL,
    currency_id BIGINT UNSIGNED NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE CASCADE,
    FOREIGN KEY (currency_id) REFERENCES currencies(id) ON DELETE CASCADE,
    UNIQUE INDEX idx_product_currency (product_id, currency_id)
);