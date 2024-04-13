DROP DATABASE IF EXISTS `dublindb`;
CREATE DATABASE IF NOT EXISTS `dublindb` DEFAULT CHARACTER SET latin1;
USE `dublindb`;

-- Create users table
CREATE TABLE users (
    id VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

-- Create contacts table
CREATE TABLE contacts (
    id_guest VARCHAR(50) NOT NULL,
    id_host VARCHAR(50) NOT NULL,
    id_listing VARCHAR(50) NOT NULL,
    ts_contact_at TIMESTAMP NOT NULL,
    ts_reply_at TIMESTAMP,
    ts_accepted_at TIMESTAMP,
    ts_booking_at TIMESTAMP,
    ds_checkin DATE,
    ds_checkout DATE,
    n_guests INT NOT NULL,
    n_messages INT NOT NULL,
    PRIMARY KEY (id_guest, id_host)
);

-- Create searches table
CREATE TABLE searches (
    ds DATE NOT NULL,
    id_user VARCHAR(50) NOT NULL,
    ds_checkin DATE,
    ds_checkout DATE,
    n_searches INT NOT NULL,
    n_nights INT,
    n_guests_min INT NOT NULL,
    n_guests_max INT NOT NULL,
    origin_country VARCHAR(5) NOT NULL,
    filter_price_min FLOAT,
    filter_price_max FLOAT,
    filter_room_types VARCHAR(150),
    filter_neighborhoods VARCHAR(150),
    FOREIGN KEY(id_user) REFERENCES users(id)
);