create table IF NOT EXISTS products
(
    productId integer PRIMARY KEY,
    price money,
    name varchar,
    isActive boolean
);

create table IF NOT EXISTS deps
(
    depId integer PRIMARY KEY,
    description varchar
);

create table IF NOT EXISTS users
(
    userId integer PRIMARY KEY,
    fullName varchar,
    createdAt timestamp,
    countryCode integer,
    depId integer REFERENCES deps(depId)
);


create table IF NOT EXISTS sales
(
    saleId integer PRIMARY KEY,
    userId integer references users(userId),
    productId integer references products(productId),
    amount integer,
    saleDate timestamp,
    saleComment varchar
);

