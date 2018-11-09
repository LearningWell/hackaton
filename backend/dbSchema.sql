DROP TABLE IF EXISTS product;
DROP TABLE IF EXISTS manufacturer;

CREATE TABLE manufacturer(
    manufacturerId SERIAL PRIMARY KEY,
    name varchar(80) NOT NULL
);

CREATE TABLE product (
    productId SERIAL PRIMARY KEY,
    name varchar(80) NOT NULL,
    score int NOT NULL,
    manufacturerId int references manufacturer(manufacturerId)
);

INSERT INTO manufacturer(name)
VALUES('LearningWell'),
      ('MachineFood'),
      ('StarMeat Inc');

INSERT INTO product(name, score, manufacturerId)
VALUES('Mjölk', 1, (SELECT manufacturerId FROM manufacturer WHERE manufacturer.name='LearningWell')),
      ('Köttfärs', 2, (SELECT manufacturerId FROM manufacturer WHERE manufacturer.name='MachineFood')),
      ('Godis', 3, (SELECT manufacturerId FROM manufacturer WHERE manufacturer.name='StarMeat Inc'));