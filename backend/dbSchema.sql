DROP TABLE IF EXISTS product;
DROP TABLE IF EXISTS manufacturer;
DROP TABLE IF EXISTS certification;

CREATE TABLE certification(
    certificationId SERIAL PRIMARY KEY,
    name varchar(80) NOT NULL,
    img varchar(80) NOT NULL,
    information text NOT NULL
);

CREATE TABLE manufacturer(
    manufacturerId SERIAL PRIMARY KEY,
    name varchar(80) NOT NULL
);

CREATE TABLE product (
    productId SERIAL PRIMARY KEY,
    name varchar(80) NOT NULL,
    score int NOT NULL,
    img varchar(80) NOT NULL,
    information varchar(200),
    manufacturerId int references manufacturer(manufacturerId),
    certifications int[]
);

INSERT INTO manufacturer(name)
VALUES('LearningWell'),
      ('MachineFood'),
      ('StarMeat Inc');

INSERT INTO product(name, score, manufacturerId, img, certifications)
VALUES('Mjölk', 1, (SELECT manufacturerId FROM manufacturer WHERE manufacturer.name='LearningWell'), 'products/images/mjolk.jpg', '{}'),
      ('Köttfärs', 2, (SELECT manufacturerId FROM manufacturer WHERE manufacturer.name='MachineFood'), 'products/images/kott.jpg', '{}'),
      ('Godis', 3, (SELECT manufacturerId FROM manufacturer WHERE manufacturer.name='StarMeat Inc'), 'products/images/godis.jpg', '{}');