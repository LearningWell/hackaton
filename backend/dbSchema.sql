DROP TABLE IF EXISTS product;
DROP TABLE IF EXISTS manufacturer;
DROP TABLE IF EXISTS certification;

CREATE TABLE certification
(
  certificationId SERIAL PRIMARY KEY,
  name varchar(1000) NOT NULL,
  img varchar(1000) NOT NULL,
  information text NOT NULL
);

CREATE TABLE manufacturer
(
  manufacturerId SERIAL PRIMARY KEY,
  name varchar(1000) NOT NULL
);

CREATE TABLE product
(
  productId SERIAL PRIMARY KEY,
  name varchar(1000) NOT NULL,
  score int NOT NULL,
  img text,
  information varchar(1000),
  quantity text,
  barcode varchar(1000),
  manufacturerId int references manufacturer(manufacturerId),
  certifications int
  []
);

  INSERT INTO manufacturer
    (name)
  VALUES('LearningWell'),
    ('MachineFood'),
    ('StarMeat Inc');

  INSERT INTO certification
    (name, img, information)
  VALUES
    ('Krav', 'certifications/images/krav.jpg', 'KRAV-märket visar att en vara är producerad på ekologisk grund med extra höga krav på djuromsorg, hälsa, socialt ansvar och klimatpåverkan. Den produkt som bär KRAV-märket uppfyller KRAVs regler, det kontrolleras minst en gång varje år. KRAV är ekologiskt, och mer därtill – det betyder att djuren lever ett bra liv, grödorna odlas miljövänligt utan naturfrämmande kemiska bekämpningsmedel eller konstgödsel, att bonden får en sjystare arbetsmiljö, att maten inte innehåller konstiga tillsatser eller har producerats med GMO. I jämförelse med EUs minimiregler för ekologisk produktion, den EU-ekologiska märkningen, eller EU-eko, så har KRAV mer långtgående regler för till exempel djuromsorg. KRAV har även regler för klimat och social hänsyn. Det har inte EU-eko. KRAV-märket finns på mat från hela världen – det räcker inte med var maten kommer ifrån, det handlar också om hur den är producerad. På så sätt kan du göra skillnad för djur, miljö och människa i både när och fjärran.'),
    ('Marine Stewardship Council', 'certifications/images/msc.jpg', 'Hållbart fångad Miljömärket visar att fisken kommer från ett yrkesfiske som klarat MSC:s miljöstandard. Oberoende experter har kontrollerat att fisket sker på ett livskraftigt bestånd och fångats med minimal påverkan på havsmiljön. Alla certifierade fisken kontrolleras årligen. Certifieringen vilar på en vetenskaplig grund. Spårbar fram till din tallrik Den MSC-certifierade fisken hålls isär från den icke certifierade ända från fångst tills miljömärket sätts på förpackning eller meny. Alla som handhar fisken kontrolleras årligen av oberoende experter. Pålitlig märkning Regelbundna DNA-tester har visat att MSC-certifierad sjömat är korrekt märkt. Så du kan lita på att en förpackning eller meny som anger att den innehåller MSC-certifierad sjömat verkligen gör det. Trovärdig världen över I över 20 år har vi arbetat tillsammans med forskare, yrkesfisken och sjömatsproducenter för att utveckla vår miljöstandard och främja hållbart fiske. MSC är den enda certifiering och miljömärkning för vildfångad sjömat som uppfyller krav på bästa praxis ställda av både FN:s livsmedels- och jordbruksorganisation (FAO) och ISEAL, den globala medlemsorganisationen för hållbarhetsstandarder. I mars 2017, blev MSC den första globala certifieringen av sjömat att erkännas för sin trovärdighet och stringens av Global Sustainable Seafood Initiative (GSSI). '),
    ('Äkta vara', 'certifications/images/aktavara.png', 'Syftet med Ä-märket är att hjälpa konsumenter som söker genuina och oförfalskade livsmedel. Därför tillåts inte tillsatser, fejkade aromer och industriella ingredienser i märkta produkter. Dessutom ska produkterna vara ärliga. Tillsatser I vanliga livsmedel tillåts cirka 330 olika livsmedelstillsatser, som är definierade av EU. Dessa tillåts inte i Ä-märkta produkter, med undantag för fruktpektin och bakpulver i vissa produkter. Aromer En stor del av de aromer som används i olika livsmedelsprodukter är framställda på konstgjord väg eller från helt andra råvaror än de som de ska ge smaken av. I Ä-märkta produkter tillåts bara aromer där smaken har extraherats ur den äkta varan. I en vaniljglass ska vaniljsmaken till exempel komma från just vanilj. Industriella ingredienser Detta är olika ingredienser som ofta liknar tillsatser, men som inte är definierade som sådana av EU. Det handlar till exempel om jästextrakt, bambufibrer och glukos-fruktossirap. De produkter som Äkta vara bedömer vara industriella ingredienser tillåts inte i Ä-märkta produkter. Ärlig information Vilseledande produkter ska, enligt myndigheterna, inte vara tillåtet. Men dels efterlevs inte alltid reglerna och dels lämnar lagstiftningen på flera punkter över ett alltför stort ansvar på konsumenten att se till så att man inte blir lurad. En renkorv får till exempel innehålla hur lite ren som helst och en äppelcider får innehålla så lite som 15 procent äpple. För Ä-märket gäller därför strängare regler, än de som lagen föreskriver. Produktens namn och bild ska överensstämma med det som konsumenten förväntar sig och halten av karaktärsgivande ingredienser ska vara hög. Vilka produkter kan märkas? Märkningen omfattar endast förädlade produkter, eftersom det är där tillsatser, aromer och industriella ingredienser används. Råvaror som morötter, kött eller äpplen kan därför inte märkas.');

  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Biscuits sablés fourrage au cacao', 2, 1, 'https://static.openfoodfacts.org/images/products/000/000/773/0009/front.6.400.jpg', 'Biscuits sablés déclassés fourrage au cacao', '1 kg', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('เล็บมือนาง (ตีนไก่ )', 4, 1, 'https://static.openfoodfacts.org/images/products/000/001/234/5878/front_en.9.400.jpg', 'chicken feet', '500 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pastille Vichy', 3, 1, 'https://static.openfoodfacts.org/images/products/000/003/005/3014/front.3.400.jpg', 'Bonbon Vichy avec édulcorants, parfum menthe', '19 g e', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pepsi, Nouveau goût !', 4, 1, 'https://static.openfoodfacts.org/images/products/000/004/060/8754/front.5.400.jpg', 'Boisson gazeuse rafraîchissante aux extraits naturels de végétaux', '15 cl', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Cauliflower', 3, 1, 'https://static.openfoodfacts.org/images/products/00000758/front_en.9.400.jpg', 'Cauliflower', '1', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Salsa de mostaza', 1, 1, 'https://static.openfoodfacts.org/images/products/000/008/415/4071/front.5.400.jpg', 'Salsa de mostaza', '300 g (neto)', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('7Up', 4, 1, 'https://static.openfoodfacts.org/images/products/000/008/717/7756/front.5.400.jpg', 'Boisson gazeuse aux extraits naturels de citron et de citron vert', '33 cl', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Color bombe', 3, 1, 'https://static.openfoodfacts.org/images/products/000/079/031/0044/front.9.400.jpg', 'Confiserie', '80g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('30 Panach Fruits', 3, 1, 'https://static.openfoodfacts.org/images/products/000104/front.8.400.jpg', 'Assortiment de cakes fourrés aux fruits', '980g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Curiously Strong Mints', 1, 1, 'https://static.openfoodfacts.org/images/products/00011501/front_en.21.400.jpg', 'Extra Strong Peppermints', '50 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('All Butter Belgian White Chocolate Chunk Cookies', 3, 1, 'https://static.openfoodfacts.org/images/products/00011693/front.10.400.jpg', 'Cookies au beurre avec des morceaux de chocolat blanc belge', '225 g e', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('All Butter Fruity Flapjack Cookies', 3, 1, 'https://static.openfoodfacts.org/images/products/00011709/front.6.400.jpg', 'Biscuits pur beurre avec de lavoine, des raisins secs, de la noix de coco et des abricots déshydratés.', '225 g e', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Stem Ginger Dunkers', 5, 1, 'https://static.openfoodfacts.org/images/products/00011815/front.8.400.jpg', 'Cookies au beurre avec du gingembre confit et de lavoine', '320 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('4 Indulgent & Chewy Maple Syrup & Pecan Giant Cookies', 5, 1, 'https://static.openfoodfacts.org/images/products/00023092/ingredients_en.8.400.jpg', 'Cookies tendres avec des morceaux de noix de pécan et du sirop dérable ', '275 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Honey roast ham', 5, 1, 'https://static.openfoodfacts.org/images/products/00025751/front_en.7.400.jpg', 'morceaux de jambon rôti traité en salaison et cuit avec du miel', '120 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pur Soup Velouté de légumes', 4, 1, 'https://static.openfoodfacts.org/images/products/00031858/front.6.400.jpg', 'Soupe de légumes', '60cl', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('British plain flour', 3, 1, 'https://static.openfoodfacts.org/images/products/00053327/front_en.3.400.jpg', 'Wheat Flour', '1.5 kg', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pineapple slices in juice', 3, 1, 'https://static.openfoodfacts.org/images/products/00054379/front_en.10.400.jpg', 'Canned pineapple slices in pineapple juice', '425 g (255 g)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Rollmop Herrings', 4, 1, 'https://static.openfoodfacts.org/images/products/00068789/front_en.8.400.jpg', 'Herrings', '280 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Taste the Difference Raspberry Conserve', 1, 1, 'https://static.openfoodfacts.org/images/products/00074742/front_en.6.400.jpg', 'Raspberry conserve', '340g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Ginger Beer', 5, 1, 'https://static.openfoodfacts.org/images/products/000/827/400/0078/front_en.6.400.jpg', 'Ginger Beer', '12 fl oz', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pulled Pork & Chorizo Feijoada', 5, 1, 'https://static.openfoodfacts.org/images/products/00090100/front.6.400.jpg', 'Feijoada brésilienne au porc, haricots noirs, bacon fumé et chorizo avec du riz basmati et de la coriandre', '400 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Rainbow Cherry', 1, 1, 'https://static.openfoodfacts.org/images/products/000/913/837/8043/front_en.19.400.jpg', 'Content pictiures of pepsi', '0.75 oz (22 g)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Lindt Excellence Supreme Dark Chocolate 90% Cocoa', 3, 1, 'https://static.openfoodfacts.org/images/products/000/954/200/9984/front_en.10.400.jpg', 'Dark Chocolate', '100g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Creme Brulee', 1, 1, 'https://static.openfoodfacts.org/images/products/000/954/201/8054/front_en.5.400.jpg', 'Milk chocolate with a caramelized sugar and cream filling', '3.5 OZ (100g)', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Creation Hazelnut Torte Milk Chocolate', 3, 1, 'https://static.openfoodfacts.org/images/products/000/954/201/8061/front_en.6.400.jpg', 'A crunchy hazelnut and almond filling, enrobed in rich milk chocolate', '3.5 OZ (100g)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Tic Tac', 1, 1, 'https://static.openfoodfacts.org/images/products/000/980/000/1064/front_en.7.400.jpg', 'Artificially Flavored Mints', '60', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Mini Cups', 5, 1, 'https://static.openfoodfacts.org/images/products/000/980/080/1107/front_en.5.400.jpg', 'Hazelnut Spread with Skim Milk & Cocoa', '10 MINI CUPS - 5.2 OZ (150 g)', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Nutella', 5, 1, 'https://static.openfoodfacts.org/images/products/000/980/089/5007/front_en.12.400.jpg', 'hazelnut spread with cocoa', '13 oz', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Nutella', 4, 1, 'https://static.openfoodfacts.org/images/products/000/980/089/5250/front_en.21.400.jpg', 'Hazelnut spread with skim milk & cacao', '750 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Blueberry Muffins', 2, 1, 'https://static.openfoodfacts.org/images/products/00104302/front.3.400.jpg', 'Muffins à la myrtille - 4 Blueberry Muffins', '260 g e', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Whoppers', 5, 1, 'https://static.openfoodfacts.org/images/products/001/070/002/4404/front_en.5.400.jpg', 'Malted Milk Ball', '5 OZ (141 g)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Good & Plenty', 3, 1, 'https://static.openfoodfacts.org/images/products/001/070/008/8130/front_en.6.400.jpg', 'Licorice Candy', '6 OZ (170 g)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Jolly rancher', 1, 1, 'https://static.openfoodfacts.org/images/products/001/070/051/9528/front_en.11.400.jpg', 'Jolly rancher chews', '50 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Crips & Colourful Mixed Leaf Salad', 3, 1, 'https://static.openfoodfacts.org/images/products/00110112/front_en.3.400.jpg', 'mixed salad leaves', '210 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('White enriched bread', 3, 1, 'https://static.openfoodfacts.org/images/products/001/111/000/1207/front_en.5.400.jpg', 'Sliced Bread', '20 oz', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Light Rye', 3, 1, 'https://static.openfoodfacts.org/images/products/001/111/000/1986/front_en.5.400.jpg', 'Sliced Bread', '24 oz', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Natural Crunchy Peanut Butter', 3, 1, 'https://static.openfoodfacts.org/images/products/001/111/001/6508/front_en.3.400.jpg', 'Natural Crunchy Peanut Butter', '420 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('cut green beans', 4, 1, 'https://static.openfoodfacts.org/images/products/001/111/080/2354/front_en.6.400.jpg', 'Green Beans', '14.5 oz', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Diced tomatoes in tomato juice', 5, 1, 'https://static.openfoodfacts.org/images/products/001/111/081/5330/front_en.6.400.jpg', 'Diced tomatoes in tomato juice', '14.5 oz', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Tomato Paste', 3, 1, 'https://static.openfoodfacts.org/images/products/001/111/081/6337/front_en.4.400.jpg', 'Tomato Paste', '6 oz', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Garbanzo Beans', 4, 1, 'https://static.openfoodfacts.org/images/products/001/111/084/7690/front_en.4.400.jpg', 'Garbanzo Beans', '15 oz', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('No Stir Creamy Peanut Butter Spread', 4, 1, 'https://static.openfoodfacts.org/images/products/001/111/089/4953/front_en.3.400.jpg', 'Peanut butter Spread', '40 oz 1.13 kg', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Wrapper Gyoza', 4, 1, 'https://static.openfoodfacts.org/images/products/001/115/269/7291/front_en.3.400.jpg', 'Feuilles de ravioli', '254 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('British Blend Premium Black Tea', 2, 1, 'https://static.openfoodfacts.org/images/products/001/115/605/4502/front_en.11.400.jpg', 'Black Tea ', '7 oz.', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Dark Sweet Cherries', 4, 1, 'https://static.openfoodfacts.org/images/products/001/119/415/6770/front_en.4.400.jpg', 'Cerezas negras dulces', '454 g.', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Salsa de chiles picantes &quot;Tabasco&quot;', 4, 1, 'https://static.openfoodfacts.org/images/products/001/121/011/5644/front.5.400.jpg', 'Salsa de pimientos o chiles picantes.', '60 ml', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Green Pepper Sauce', 1, 1, 'https://static.openfoodfacts.org/images/products/001/121/060/1369/front.8.400.jpg', 'Sauce poivron vert - milder jalapeño', '60 ml', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Extra light soft cheese', 1, 1, 'https://static.openfoodfacts.org/images/products/00115830/front_en.3.400.jpg', 'Reduced fat soft cheese', '200 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Tims extra thick and crunchy jalapeno potato chips', 2, 1, 'https://static.openfoodfacts.org/images/products/001/159/402/2026/front_en.3.400.jpg', 'Chips', '42g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Swiss Dark Chocolate', 1, 1, 'https://static.openfoodfacts.org/images/products/00116954/front_en.5.400.jpg', 'Swiss Extra Dark Chocolate', '100g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Ginger candy', 5, 1, 'https://static.openfoodfacts.org/images/products/001/174/761/5105/front_en.6.400.jpg', 'Ginger candy', '56 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('新亞姜糖 薄荷味', 5, 1, 'https://static.openfoodfacts.org/images/products/001/174/761/5358/ingredients_en.17.400.jpg', '新亞薄荷味薑糖', '56克, 2安士', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Reduced Fat Belgian Chocolate Chunk Cookies', 5, 1, 'https://static.openfoodfacts.org/images/products/00117746/front.3.400.jpg', 'Cookies au beurre allégés en matières grasses avec des morceaux de chocolat noir et au lait belge.', '225 g e', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pepsi Max', 1, 1, 'https://static.openfoodfacts.org/images/products/001/200/001/8817/front_en.6.400.jpg', 'zero calorie cola', '2 L', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Iced Coffee', 5, 1, 'https://static.openfoodfacts.org/images/products/001/200/004/1396/front_en.7.400.jpg', 'Premium Coffee Beverage', '11 FL OZ (325mL)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('1893 Ginger Cola', 1, 1, 'https://static.openfoodfacts.org/images/products/001/200/015/1903/front_en.14.400.jpg', 'Ginger Cola', '12 fl oz', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Lemon-lime flavored soda', 5, 1, 'https://static.openfoodfacts.org/images/products/001/200/021/5094/front_en.6.400.jpg', 'Soda', '591 ml', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Sierra Mist', 1, 1, 'https://static.openfoodfacts.org/images/products/001/200/030/2404/front_en.7.400.jpg', 'lemon-lime flavored soda with other natural flavors', '12 FL OZ', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Strawberry Lemonade', 1, 1, 'https://static.openfoodfacts.org/images/products/001/200/037/4012/front_en.7.400.jpg', 'Sparkling green coffee energy beverage', '12 FL OZ (355 mL)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Frappuccino', 3, 1, 'https://static.openfoodfacts.org/images/products/001/200/081/3313/front_en.5.400.jpg', 'chilled coffee drink', '13.7 FL OZ (405 mL)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Organic Blue Agave', 5, 1, 'https://static.openfoodfacts.org/images/products/001/251/120/2316/front_en.5.400.jpg', 'A low glycemic sweetener', '23.5 oz (666 g)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Organic Raw Blue Agave', 4, 1, 'https://static.openfoodfacts.org/images/products/001/251/127/8328/front_en.5.400.jpg', 'A low glycemic sweetener', '23.5 oz (666 g)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Orzo by Sainsburys', 3, 1, 'https://static.openfoodfacts.org/images/products/00126410/front_en.3.400.jpg', 'Orzo', '500 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('pipe rigate', 5, 1, 'https://static.openfoodfacts.org/images/products/00126953/front_en.3.400.jpg', 'pipe rigate', '500g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Macaroni & Cheese', 3, 1, 'https://static.openfoodfacts.org/images/products/001/356/230/0112/front_en.8.400.jpg', 'Mac & Cheese', '6 OZ (170 g)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Organic cheddar bunnies', 1, 1, 'https://static.openfoodfacts.org/images/products/001/356/230/3854/front_en.5.400.jpg', 'Baked organic snack crackers', '1 oz (28 g)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Bells Traditional Stuffing', 4, 1, 'https://static.openfoodfacts.org/images/products/001/390/050/0518/front.8.400.jpg', 'Stuffing', '454g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Great Granny Crunchy Apple Chips', 4, 1, 'https://static.openfoodfacts.org/images/products/001/397/100/1914/front_en.6.400.jpg', 'Apple Chips', '0.53oz', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Farmhouse Oatmeal', 3, 1, 'https://static.openfoodfacts.org/images/products/001/410/007/0337/front_en.5.400.jpg', 'Sliced Bread', '24 oz', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('MILANO DARK CHOCOLATE', 4, 1, 'https://static.openfoodfacts.org/images/products/001/410/007/4120/front_en.11.400.jpg', 'GALLETAS CON RELLENO SABOR A CHOCOLATE', '170 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Farmhouse Sourdough', 4, 1, 'https://static.openfoodfacts.org/images/products/001/410/007/4670/front_en.5.400.jpg', 'Sliced bread', '24 oz', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('MILANO RAPSBERRY FLAVORED CHOCOLATE', 3, 1, 'https://static.openfoodfacts.org/images/products/001/410/007/4816/front_en.8.400.jpg', 'GALLETAS CON RELLENO SABOR A CHOCOLATE Y FRAMBUESA', '198 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Cinnamon raisin baggel', 5, 1, 'https://static.openfoodfacts.org/images/products/001/410/007/4830/front_en.3.400.jpg', 'Cinnamon Raisin Bagels', '595 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Tahoe White Chocolate Macadamia', 1, 1, 'https://static.openfoodfacts.org/images/products/001/410/007/5226/front_en.18.400.jpg', 'Chocolate Chunk Crispy Cookies', '7.2 oz (204 g)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Sausalito Milk Chocolate Macadamia', 1, 1, 'https://static.openfoodfacts.org/images/products/001/410/007/7121/front_en.8.400.jpg', 'Chocolate chunk Crispy Cookies', '7.2 oz (204 g)', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Double chocolate Nantuket Dark Chocolate', 3, 1, 'https://static.openfoodfacts.org/images/products/001/410/007/8609/front_en.12.400.jpg', 'Chocolate Chunk Crispy Cookies', '7.75 OZ (220g)', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Santa Cruz Soft Baked Oatmeal Raisin Soft Cookies', 2, 1, 'https://static.openfoodfacts.org/images/products/001/410/007/8845/front_en.3.400.jpg', 'Oatmeal Raisin Cookies', '8.6 oz (244g)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('MILANO MINT CHOCOLATE', 1, 1, 'https://static.openfoodfacts.org/images/products/001/410/007/9477/front_en.8.400.jpg', 'GALLETAS CON RELLENO SABOR A CHOCOLATE Y MENTA', '198 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('CHESSMEN COOKIES', 5, 1, 'https://static.openfoodfacts.org/images/products/001/410/007/9521/front_en.10.400.jpg', 'GALLETAS CON MERMELADA DE FRESA', '191 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Goldfish Colors', 5, 1, 'https://static.openfoodfacts.org/images/products/001/410/008/5393/front_en.7.400.jpg', 'Baked snack crackers', '6.6 oz', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Goldfish Baked Snack Crackers Cheddar', 2, 1, 'https://static.openfoodfacts.org/images/products/001/410/008/5478/front_en.6.400.jpg', 'Baked Snack Crackers Cheddar', '6.6 oz (187 g)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Goldfish Flavor Blasted Xtra Cheddar', 5, 1, 'https://static.openfoodfacts.org/images/products/001/410/008/5485/front_en.12.400.jpg', 'Baked Crackers', '6.6 oz / 187 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Goldfish Original Baked Snack Crackers', 2, 1, 'https://static.openfoodfacts.org/images/products/001/410/008/5508/front_en.12.400.jpg', 'Baked Snack Crackers - Goldfish Original Baked Snack Crackers', '6.6 OZ (187g)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Chocolate Chunk Crispy Cookies - Dark Chocolate Pecan', 5, 1, 'https://static.openfoodfacts.org/images/products/001/410/009/6979/front.19.400.jpg', 'Cookies croustillants aux morceaux de chocolat noir et aux noix de pécan', '204 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Chocolate Chunk White Chocolate Macadamia Crispy Cookies', 5, 1, 'https://static.openfoodfacts.org/images/products/001/410/009/7013/front.6.400.jpg', 'Cookies croustillants aux morceaux de chocolat blanc et aux noix de macadamia', '204 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Soft Baked Santa Cruz Oatmeal Raisin Cookies', 1, 1, 'https://static.openfoodfacts.org/images/products/001/410/009/7068/front.6.400.jpg', 'Cookies aux raisins', '244 g e', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Lexington Milk Chocolate Toffee Almond', 1, 1, 'https://static.openfoodfacts.org/images/products/001/410/009/8416/front_en.7.400.jpg', 'Chocolate Chunk Crispy Cookies', '7.2 OZ (204g)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Maui Milk Chocolate Coconut Almond', 1, 1, 'https://static.openfoodfacts.org/images/products/001/410/009/8423/front_en.14.400.jpg', 'Chocolate Chunk Crispy Cookies', '7.2 oz (204 g)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Goldfish Cheddar', 3, 1, 'https://static.openfoodfacts.org/images/products/001/410/009/9680/front.7.400.jpg', 'Crackers au cheddar cuits au four', '125 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Almonds', 2, 1, 'https://static.openfoodfacts.org/images/products/001/411/323/0018/front.9.400.jpg', 'Amandes naturelles', '200 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Amandes Grillées Salées', 3, 1, 'https://static.openfoodfacts.org/images/products/001/411/323/0117/front.3.400.jpg', 'Amandes Grillées Salées', '115 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Almonds', 5, 1, 'https://static.openfoodfacts.org/images/products/001/411/323/0131/front_en.7.400.jpg', 'Amandes nature', '115 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pistachios', 5, 1, 'https://static.openfoodfacts.org/images/products/001/411/391/1672/front.8.400.jpg', 'Pistaches grillées salées', '250g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pistaches grillées sans sel Wonderful', 2, 1, 'https://static.openfoodfacts.org/images/products/001/411/391/1719/front.4.400.jpg', 'Pistaches grillées sans sel', '250 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pistachios salt & pepper', 1, 1, 'https://static.openfoodfacts.org/images/products/001/411/391/2112/front.6.400.jpg', 'Pistache', '150 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Natural yogurt', 4, 1, 'https://static.openfoodfacts.org/images/products/00146098/front_en.5.400.jpg', 'Whole milk natural yogurt', '500 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Applesauce Granny Smith', 2, 1, 'https://static.openfoodfacts.org/images/products/001/480/000/2737/front_en.8.400.jpg', 'Portable applesauce pouches', '12.7 oz (360 g)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Amandino Blanches', 4, 1, 'https://static.openfoodfacts.org/images/products/00149228/front.5.400.jpg', 'Purée damandes blanches 100% bio', '350 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pure Water', 4, 1, 'https://static.openfoodfacts.org/images/products/001/500/014/0069/front_en.6.400.jpg', 'Purified Water', '1 GAL (3.79 L)', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Honey Nut Cheerios', 3, 1, 'https://static.openfoodfacts.org/images/products/001/600/012/4790/front_en.3.400.jpg', 'Cereal', '306 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Lucky Charms', 2, 1, 'https://static.openfoodfacts.org/images/products/001/600/014/1568/front_en.20.400.jpg', 'A frosted, toasted, whole grain oat-based cereal with marshmallow pieces.', '48 g / 1.7 OZ', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Fruit Gushers Variety Pack', 4, 1, 'https://static.openfoodfacts.org/images/products/001/600/015/9105/front_en.8.400.jpg', 'caramelo suave sabor a frutas', '153 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Crunchy Granola Bars Oats n Honey', 1, 1, 'https://static.openfoodfacts.org/images/products/001/600/026/4601/front.3.400.jpg', 'Oats Honey Bars', '253 g (6 * 42 g)', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Cheerios', 2, 1, 'https://static.openfoodfacts.org/images/products/001/600/027/5263/front_en.17.400.jpg', 'Toasted Whole Grain Oat Cereal', '8.9 oz (252 g)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Party Rainbow Chip cake mix', 1, 1, 'https://static.openfoodfacts.org/images/products/001/600/040/9972/front_en.6.400.jpg', 'Cake mix', '15.25 oz', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('100% Mashed Potatoes ', 4, 1, 'https://static.openfoodfacts.org/images/products/001/600/041/6109/front_en.8.400.jpg', 'Mashed Potatoes ', '13.75 oz', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Count Chocula (family size)', 1, 1, 'https://static.openfoodfacts.org/images/products/001/600/044/9763/front_en.3.400.jpg', 'Chocolated cereal with spooky fun marshmallows', '1lb 1.8oz', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Chocolate Lucky Charms', 2, 1, 'https://static.openfoodfacts.org/images/products/001/600/045/7041/ingredients_en.7.400.jpg', 'Cereals', '601g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Spongebob Squarepants Fruity Splash', 5, 1, 'https://static.openfoodfacts.org/images/products/001/600/048/6249/front_en.6.400.jpg', 'Flavored cereal with other natural flavors', '10.7 OZ (303g)', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Ramboutan Sirop Aroy-d', 5, 1, 'https://static.openfoodfacts.org/images/products/001/622/900/0530/front_en.9.400.jpg', 'rambutan in syrup', '565 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Lychee au sirop', 2, 1, 'https://static.openfoodfacts.org/images/products/001/622/900/0561/front.4.400.jpg', 'Fruits au sirop', '565 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Lait de coco', 5, 1, 'https://static.openfoodfacts.org/images/products/001/622/900/1919/front.18.400.jpg', 'Lait de coco pour dessert', '400 ml', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Jackfruit in syrup', 2, 1, 'https://static.openfoodfacts.org/images/products/001/622/900/1940/front_en.12.400.jpg', 'Fruit Jacquier au sirop', '565 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Extrait de noix de coco', 3, 1, 'https://static.openfoodfacts.org/images/products/001/622/900/4019/front.8.400.jpg', 'Coconut Cream', '400 ml', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Foco basil seed drink', 2, 1, 'https://static.openfoodfacts.org/images/products/001/622/900/4507/front.12.400.jpg', 'Boisson aux graines de basilic', '330 ml', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Lait de coco', 5, 1, 'https://static.openfoodfacts.org/images/products/001/622/900/5320/front.6.400.jpg', 'Lait de coco', '560 ml', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Boisson à base de jus de mangue', 1, 1, 'https://static.openfoodfacts.org/images/products/001/622/900/6143/front.8.400.jpg', 'Boisson à base de jus de mangue', '250ml', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Guava drink', 2, 1, 'https://static.openfoodfacts.org/images/products/001/622/900/6747/front.6.400.jpg', 'Boisson aux fruits', '350ml', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Boisson Tamarin', 5, 1, 'https://static.openfoodfacts.org/images/products/001/622/990/1158/front.3.400.jpg', 'Boisson Tamarin', '350 ml', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Nata de coco au jus de mangue', 2, 1, 'https://static.openfoodfacts.org/images/products/001/622/990/5736/front.8.400.jpg', 'Nata de coco au jus de mangue', '450 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('St Clements & lime juice', 4, 1, 'https://static.openfoodfacts.org/images/products/00166423/front_en.7.400.jpg', 'St Clements & lime juice', '1l', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Italian style babyleaf salad', 2, 1, 'https://static.openfoodfacts.org/images/products/00169042/front_en.3.400.jpg', 'salad', '120 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Cucumbers in Brine', 2, 1, 'https://static.openfoodfacts.org/images/products/001/703/402/0041/front_en.10.400.jpg', 'Cucumbers in Brine', '19 Fl. Oz/ 560g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Semi skimmed British milk', 2, 1, 'https://static.openfoodfacts.org/images/products/00173759/front_en.8.400.jpg', 'Semi skimmed British milk', '1 pint (568ml)', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Jasmine Rice', 2, 1, 'https://static.openfoodfacts.org/images/products/001/740/010/6959/front_en.7.400.jpg', 'Enriched THai Fragrant Long Grain Rice', '32 oz (2 LB. 907 G)', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('soda water', 1, 1, 'https://static.openfoodfacts.org/images/products/00176828/front_en.8.400.jpg', 'carbonated soda water', '1L', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Quinoa, Sweet Potato & Lentils Burgers', 1, 1, 'https://static.openfoodfacts.org/images/products/00178358/front_en.8.400.jpg', 'Vegetable Burgers', '350 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Canada Dry', 1, 1, 'https://static.openfoodfacts.org/images/products/001/800/075/8463/front_en.7.400.jpg', 'Ginger Ale', '2 L', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Chocolate Chunk & Chip', 3, 1, 'https://static.openfoodfacts.org/images/products/001/800/081/7818/front_en.10.400.jpg', 'Raw Cookie Dough', 'Net Wt. 16 oz (1lb)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Piri Piri seasoned chicken thighs and drumsticks', 1, 1, 'https://static.openfoodfacts.org/images/products/00180115/front_en.6.400.jpg', 'Piri Piri seasoned chicken thighs and drumsticks', '960g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Sainsburys Corn Flakes 750g', 5, 1, 'https://static.openfoodfacts.org/images/products/00180689/front_en.7.400.jpg', 'Corn Flakes', '750 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Whole British Milk', 2, 1, 'https://static.openfoodfacts.org/images/products/00181402/front_en.9.400.jpg', 'Whole Milk', '4 pints, 2.272 l', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Sept Céréales avec Quinoa - Miel, Avoine & Lin', 3, 1, 'https://static.openfoodfacts.org/images/products/001/862/710/2588/front_en.9.400.jpg', 'Barre de céréales', '40 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Go Lean Cereals', 2, 1, 'https://static.openfoodfacts.org/images/products/001/862/774/0001/front_en.4.400.jpg', 'Céréales protéinées', '400gr', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Macaroni N Cheese', 3, 1, 'https://static.openfoodfacts.org/images/products/001/889/436/0155/front_en.6.400.jpg', 'Mac and Cheese', '206 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Lifesavers Mints Wint O Green', 1, 1, 'https://static.openfoodfacts.org/images/products/001/900/008/5047/front_en.3.400.jpg', 'Lifesavers mints', '6.25oz', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Boisson a base de jus de lychee', 1, 1, 'https://static.openfoodfacts.org/images/products/001/928/170/0110/front.3.400.jpg', 'Boisson à base de jus de litchi', '25 cl', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Shortbread Cookies', 5, 1, 'https://static.openfoodfacts.org/images/products/001/932/001/5441/front_en.7.400.jpg', 'Shortbread Cookies', '42 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('4 Stonebread Garlic Breads', 3, 1, 'https://static.openfoodfacts.org/images/products/00195157/front.6.400.jpg', 'Pain à lail', '335 g e', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Butterscotch Scottie Dogs', 2, 1, 'https://static.openfoodfacts.org/images/products/00198370/front.3.400.jpg', 'Biscuits sablés Écossais au beurre avec éclats de caramel au beurre.', '120 g e', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Steam Crisp Extra Sweet Niblets', 5, 1, 'https://static.openfoodfacts.org/images/products/002/000/010/8216/front_en.9.400.jpg', 'Whole Kernel Corn', '11 oz (311 g)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Seeded Pittas', 5, 1, 'https://static.openfoodfacts.org/images/products/00204460/front_en.7.400.jpg', 'Pitta breads', '348g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Heinens Organic Unsweetened With Lemon  Iced Tea ', 3, 1, 'https://static.openfoodfacts.org/images/products/002/060/140/7893/front_en.3.400.jpg', 'Unsweetened Iced Tea With Lemon', '16 OZ (473 mL)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Marinara', 4, 1, 'https://static.openfoodfacts.org/images/products/002/066/200/0200/front_en.6.400.jpg', 'Pasta Sauce', 'Net WT 24 oz (1lb 8oz) 680g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Hand Cooked Potato Chips Mature Cheddar & Caramelized Onion', 4, 1, 'https://static.openfoodfacts.org/images/products/002/068/500/0959/front.11.400.jpg', 'Chips de pommes de terre goût cheddar et oignons', '150g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Dutch Chocolate Ice Cream', 5, 1, 'https://static.openfoodfacts.org/images/products/002/073/542/0959/front_en.17.400.jpg', 'Chocolate Ice Cream', '48 FL OZ', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Real Mayo', 5, 1, 'https://static.openfoodfacts.org/images/products/002/100/002/6326/front_en.6.400.jpg', 'Mayonnaise', '1 pt 14 fl. oz (30 fl. oz) 887 mL', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Real Mayo', 4, 1, 'https://static.openfoodfacts.org/images/products/002/100/002/6791/front_en.7.400.jpg', 'Real Mayonnaise', '22 fl. oz (650 ml)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Mayo', 5, 1, 'https://static.openfoodfacts.org/images/products/002/100/002/6876/front_en.8.400.jpg', 'Real Mayonnaise', '12 FL OZ (354mL)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Catalina Dressing', 1, 1, 'https://static.openfoodfacts.org/images/products/002/100/002/8276/front_en.11.400.jpg', 'salad dressing', '16 FL OZ / 473 ml', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Kraft Macaroni & Cheese Dinner three cheese', 3, 1, 'https://static.openfoodfacts.org/images/products/002/100/065/3218/front_en.5.400.jpg', 'Macaroni & Cheese', '206 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Velveeta Shells & Cheese', 2, 1, 'https://static.openfoodfacts.org/images/products/002/100/065/8930/front_en.6.400.jpg', 'Creamy Cheese Sauce & Shell Pasta', '12 OZ (340 g)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Macaroni & Cheese Dinner', 3, 1, 'https://static.openfoodfacts.org/images/products/002/100/065/8947/front_en.15.400.jpg', 'MACARONI & CHEESE DINNER', '14.6 OZ (411g)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('True Whey', 1, 1, 'https://static.openfoodfacts.org/images/products/002/107/801/9091/front_en.4.400.jpg', 'Premium Proteine Powder', '14 Ounces (453.59 g)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('1% lowfat milk', 3, 1, 'https://static.openfoodfacts.org/images/products/002/113/007/0664/front_en.6.400.jpg', '1% milk', '128 fl oz', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Drinking Water', 4, 1, 'https://static.openfoodfacts.org/images/products/002/113/007/4471/front_en.3.400.jpg', 'water from a municipal source', '1 GALLON (3.78l)', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Primo Taglio Genoa Salame', 1, 1, 'https://static.openfoodfacts.org/images/products/002/113/015/3138/front_en.7.400.jpg', 'Genoa salame', '4 oz', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Whole Roasted & Salted Almonds', 5, 1, 'https://static.openfoodfacts.org/images/products/002/113/029/3483/front_en.4.400.jpg', 'Whole Roasted & Salted Almonds', '36,4 Oz / 1,03 kg', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Safeway apple juice', 1, 1, 'https://static.openfoodfacts.org/images/products/002/113/031/4300/front_en.7.400.jpg', 'apple juice', '96 fl oz', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Vegetable juice', 3, 1, 'https://static.openfoodfacts.org/images/products/002/113/031/6168/front_en.9.400.jpg', 'vegetable juice', '64 fl oz', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Hickory Farms® Our Signature Beef Summer Sausage Natural Hickory Smoke Flavor Added Made with Premium Beef, Semi-Dry', 1, 1, 'https://static.openfoodfacts.org/images/products/002/135/702/0138/front_en.3.400.jpg', 'Beef Summer Sausage', '10 oz', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Hickory Farms® Farmhouse Receipe™Summer Sausage Hardwood Smoked Semi-Dry', 4, 1, 'https://static.openfoodfacts.org/images/products/002/135/791/3447/front_en.3.400.jpg', 'Summer Sausage', '283 g, 10 oz', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Starburst Original', 5, 1, 'https://static.openfoodfacts.org/images/products/002/200/001/1879/front_en.12.400.jpg', 'Fruit Chews', '3.5 OZ (99 g)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Altoids: Peppermint', 3, 1, 'https://static.openfoodfacts.org/images/products/002/200/015/9335/front_en.3.400.jpg', 'Altoids', '50 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('British beef ribeye steak', 1, 1, 'https://static.openfoodfacts.org/images/products/002/213/510/9649/front_en.13.400.jpg', 'Ribeye steak', '311g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Crème de marrons de lArdèche', 3, 1, 'https://static.openfoodfacts.org/images/products/002/231/401/0018/front.7.400.jpg', 'Crème de marrons', '992 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Crème de Marrons de lArdèche', 4, 1, 'https://static.openfoodfacts.org/images/products/002/231/401/0025/front_en.47.400.jpg', 'Crème de marron', '500 g / 17.6 oz', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Crème de marrons de lArdèche', 1, 1, 'https://static.openfoodfacts.org/images/products/002/231/401/0094/front.5.400.jpg', 'Crème de marrons', '78 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Crème de marrons de lArdèche', 1, 1, 'https://static.openfoodfacts.org/images/products/002/231/401/0100/front_en.30.400.jpg', 'Crème de marrons', '100 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Crème de marrons', 2, 1, 'https://static.openfoodfacts.org/images/products/002/231/401/4108/front_en.11.400.jpg', 'Crème de marrons', '4 x 100g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Crème de marrons de lArdèche', 3, 1, 'https://static.openfoodfacts.org/images/products/002/231/401/5174/front.7.400.jpg', 'Crème de marrons', '250 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Cheese Puffs', 1, 1, 'https://static.openfoodfacts.org/images/products/002/242/226/0008/front_en.4.400.jpg', 'Cheese Puffs', '10 oz', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Cheesy Pizza', 3, 1, 'https://static.openfoodfacts.org/images/products/00226646/front_en.8.400.jpg', 'Pizza', '95g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Blueberries', 4, 1, 'https://static.openfoodfacts.org/images/products/00236188/front_en.3.400.jpg', 'Blueberries', '200g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Piña en Rodajas', 5, 1, 'https://static.openfoodfacts.org/images/products/002/400/001/1859/front.5.400.jpg', 'Piña en rodajas en su jugo', '565 g (neto), 350 g (escurrido), 580 ml', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Purée Tradition aux oignons crus', 3, 1, 'https://static.openfoodfacts.org/images/products/002/400/010/0911/front.10.400.jpg', 'Coulis de tomates aux oignons crus', '350 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Fruit Cocktail in juice', 4, 1, 'https://static.openfoodfacts.org/images/products/002/400/012/4023/front_en.3.400.jpg', 'Fruit Cocktail', '415 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pear Halves in Juice', 2, 1, 'https://static.openfoodfacts.org/images/products/002/400/012/4962/front_en.10.400.jpg', 'Pear Halves in Pineapple Juice', '415g, drained 215g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Piña en rodajas en zumo', 3, 1, 'https://static.openfoodfacts.org/images/products/002/400/014/6087/front.7.400.jpg', 'Piña en rodajas en zumo', '3 x 220 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Sweet Peas', 5, 1, 'https://static.openfoodfacts.org/images/products/002/400/016/3077/front_en.3.400.jpg', 'Sweet peas', '15 oz (425 g)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Tomates pelées au jus Bio', 3, 1, 'https://static.openfoodfacts.org/images/products/002/400/016/5002/front.6.400.jpg', 'Tomates entières biologiques pelées au jus', '400 g (240 g égoutté)', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Nutty Bars', 3, 1, 'https://static.openfoodfacts.org/images/products/002/430/004/1204/front_en.5.400.jpg', 'Wafers with peanut butter', '12 oz (340 g)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Bat Brownies', 4, 1, 'https://static.openfoodfacts.org/images/products/002/430/004/4489/front_en.6.400.jpg', 'brownie', '6*48g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('SRIRACHA HOT CHILI SAUCE', 5, 1, 'https://static.openfoodfacts.org/images/products/002/446/306/1095/ingredients_en.9.400.jpg', 'SALSA PICANTE', '482 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Fresh Creamy Goats Cheese', 3, 1, 'https://static.openfoodfacts.org/images/products/00245838/front_en.5.400.jpg', 'Goats Cheese', '120g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Morton Iodized Salt', 3, 1, 'https://static.openfoodfacts.org/images/products/002/460/001/0030/front_en.6.400.jpg', 'iodized salt', '26 oz', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Simply Orange', 2, 1, 'https://static.openfoodfacts.org/images/products/002/500/005/4167/front_en.3.400.jpg', 'orange juice', '1,75L', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Silk coconut original', 3, 1, 'https://static.openfoodfacts.org/images/products/002/529/300/1527/front_en.15.400.jpg', 'coconut beverage', '1.89 Litre', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Vanilla Silk', 2, 1, 'https://static.openfoodfacts.org/images/products/002/529/360/0737/front_en.3.400.jpg', 'Soy beverage with vanilla', '1.89 L', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Chocolate Silk', 1, 1, 'https://static.openfoodfacts.org/images/products/002/529/360/0751/front_en.3.400.jpg', 'chocolate soy beverage', '1.89 L', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Folgers House Blend', 1, 1, 'https://static.openfoodfacts.org/images/products/002/550/000/3818/front_en.7.400.jpg', 'Ground coffee', '27.8 OZ (1 LB 11.8 OZ) 788 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Folgers Simply Smooth Decaf (medium)', 5, 1, 'https://static.openfoodfacts.org/images/products/002/550/007/0858/front_en.3.400.jpg', 'ground coffee', '11.5 oz.', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Strawberry Krimpets', 1, 1, 'https://static.openfoodfacts.org/images/products/002/560/000/8195/front_en.6.400.jpg', 'Strawberry iced sponge cakes with natural & artificial flavors', '12 oz (340 g)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Vanilla Extract', 5, 1, 'https://static.openfoodfacts.org/images/products/002/563/871/0022/front_en.12.400.jpg', 'Vanilla Extract', '60 ml', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Noshkes Extreme Hot', 3, 1, 'https://static.openfoodfacts.org/images/products/002/567/505/1485/front_en.4.400.jpg', 'Flavored rings', '30 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Darigold half and half', 5, 1, 'https://static.openfoodfacts.org/images/products/002/640/022/7601/front_en.8.400.jpg', 'half and half', '946 ml', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Orville Redenbachers Gourmet Popping Corn', 1, 1, 'https://static.openfoodfacts.org/images/products/002/700/037/2449/front_en.13.400.jpg', 'Movie Theater Butter popcorn', '279,9g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Snack Pack Tapioca Pudding ', 4, 1, 'https://static.openfoodfacts.org/images/products/002/700/041/9021/front_en.17.400.jpg', 'Tapicoa Pudding', '4', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Toll House Cocoa', 5, 1, 'https://static.openfoodfacts.org/images/products/002/800/021/4951/front_en.5.400.jpg', 'Cocoa powder', '8 oz', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Nesquik', 4, 1, 'https://static.openfoodfacts.org/images/products/002/800/024/5009/front_en.6.400.jpg', 'Chocolate Syrup', '22 OZ (1 LB 6 OZ / 623.6g)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Tasters Choice 100% Colombian', 5, 1, 'https://static.openfoodfacts.org/images/products/002/800/025/5664/front.21.400.jpg', 'Instant Coffee', '1.4 oz (40 g)', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('SALSA TERIYAKI', 1, 1, 'https://static.openfoodfacts.org/images/products/002/809/300/1209/front_en.4.400.jpg', 'SALSA PREPARADA TERIYAKI', '426 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Apple juice', 5, 1, 'https://static.openfoodfacts.org/images/products/00283960/front_en.5.400.jpg', 'apple juice', '1 l', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Sour cream & onion', 2, 1, 'https://static.openfoodfacts.org/images/products/002/840/001/7015/front_en.12.400.jpg', 'Flavored potato chips', '6.5 oz, 184.2 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Doritos Nacho Cheesier', 5, 1, 'https://static.openfoodfacts.org/images/products/002/840/001/7114/front_en.3.400.jpg', 'chips doritos', '454 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Flavor twists - honey bbq', 3, 1, 'https://static.openfoodfacts.org/images/products/002/840/003/4036/front_en.13.400.jpg', 'Corn snack', '10 oz, 283.5 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Dried pork skins', 4, 1, 'https://static.openfoodfacts.org/images/products/002/840/003/7709/front_en.7.400.jpg', 'Dried pork skins', '85g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Cheetos Crunchy', 3, 1, 'https://static.openfoodfacts.org/images/products/002/840/004/0112/front_en.4.400.jpg', 'Cheese flavored snacks', '28.3g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Stax Sour Cream and Onion', 1, 1, 'https://static.openfoodfacts.org/images/products/002/840/005/5154/front_en.4.400.jpg', 'Potato chip with sour cream and onion', '155.9 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Salsa con queso medium', 1, 1, 'https://static.openfoodfacts.org/images/products/002/840/007/0980/front_en.6.400.jpg', 'Salsa con queso', '425.2g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Clasic', 3, 1, 'https://static.openfoodfacts.org/images/products/002/840/009/0858/front_en.7.400.jpg', 'Potato chips', '29.3g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Doritos Nacho Cheese', 3, 1, 'https://static.openfoodfacts.org/images/products/002/840/009/0896/front_en.5.400.jpg', 'Tortilla chips', '1 oz', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Doritos Cool Ranch', 1, 1, 'https://static.openfoodfacts.org/images/products/002/840/009/1510/front_en.5.400.jpg', 'Tortilla Chips', '28.3 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Roasted garlic chunky salsa (medium)', 5, 1, 'https://static.openfoodfacts.org/images/products/002/840/014/3936/front_en.6.400.jpg', 'Roasted Garlic Salsa', '15.5 oz', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Lays Classic', 1, 1, 'https://static.openfoodfacts.org/images/products/002/840/016/0148/front_en.10.400.jpg', 'Potato Chips', '10 oz (283.5 g)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Cheetos Cheddar Jalapeno Crunchy', 4, 1, 'https://static.openfoodfacts.org/images/products/002/840/058/9888/front_en.7.400.jpg', 'Cheese Flavored Snacks', '8.5 oz / 240,9 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Poppin Jalapeno Doritos', 1, 1, 'https://static.openfoodfacts.org/images/products/002/840/066/6558/front_en.4.400.jpg', 'Cheese Tortilla Chips', '9 oz', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('British strawberry jam & clotted cream butter cream swiss roll', 1, 1, 'https://static.openfoodfacts.org/images/products/00287678/front_en.19.400.jpg', 'Sponge roll filled with british strawberry jam and Cornish clotted cream buttercream.', '276 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('MorningStar Grillers Original Veggie Burgers', 3, 1, 'https://static.openfoodfacts.org/images/products/002/898/910/0825/front_en.6.400.jpg', 'Veggie Burgers', '256 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Cocoa Almonds - Dark Chocolate Flavor', 2, 1, 'https://static.openfoodfacts.org/images/products/002/900/001/9225/front_en.5.400.jpg', 'Roasted almonds seasoned with cocoa', '37 OZ (1.04 kg)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Macaroni Elbows No. 35', 5, 1, 'https://static.openfoodfacts.org/images/products/002/924/305/0351/front_en.4.400.jpg', 'Macaroni', '1 lb', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Large Round Cheese Ravioli ', 2, 1, 'https://static.openfoodfacts.org/images/products/002/931/991/0169/front_en.6.400.jpg', 'Cheese Ravoli ', '15 oz', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Idahoan roasted garlic and parmesan mashed potatoes', 5, 1, 'https://static.openfoodfacts.org/images/products/002/970/000/1391/front_en.8.400.jpg', 'Instant mashed potatoes', '116 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('emilys dark chocolate covered blueberries', 4, 1, 'https://static.openfoodfacts.org/images/products/002/979/654/2679/front_en.6.400.jpg', 'Dark chocolate covered blueberries', '5oz', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Gaufrettes Fines', 3, 1, 'https://static.openfoodfacts.org/images/products/002/980/102/5036/front.10.400.jpg', 'Biscuits au beurre - Gaufrettes Fines', '250 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Rich & Creamy Forbidden Chocolate', 4, 1, 'https://static.openfoodfacts.org/images/products/002/983/900/7875/front_en.5.400.jpg', 'All Natural Flavor Premium Ice Cream', '1.5 QTS (1.42L)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Quaker Original', 3, 1, 'https://static.openfoodfacts.org/images/products/003/000/001/2109/front_en.11.400.jpg', 'Instant Oatmeal', '11.8 oz (338 g)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Crunch Berries', 4, 1, 'https://static.openfoodfacts.org/images/products/003/000/006/1411/front_en.11.400.jpg', 'sweetened corn and oat cereal', '18.7 oz (530 g)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Peanut Butter Crunch', 5, 1, 'https://static.openfoodfacts.org/images/products/003/000/006/2111/front_en.6.400.jpg', 'Sweetened corn & oat cereal', '17.1 OZ (1 LB 1 OZ) 487 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Capn Crunch', 5, 1, 'https://static.openfoodfacts.org/images/products/003/000/006/3019/front_en.6.400.jpg', 'Sweetened corn & oat cereal', '20 OZ (1 LB 4 OZ) 567 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Keebler Toasteds Harvest Wheat', 3, 1, 'https://static.openfoodfacts.org/images/products/003/010/004/9111/front_en.4.400.jpg', 'Wheat Crackers', '226 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pita Mediterranean Herb', 1, 1, 'https://static.openfoodfacts.org/images/products/003/010/078/4678/front_en.3.400.jpg', 'Oven Baked Pita Chips', '16 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('100% Fresh Squeezed Orange Juice', 5, 1, 'https://static.openfoodfacts.org/images/products/003/030/460/0323/front_en.16.400.jpg', 'Orange Juice', '32 fl oz', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Very Berry Clusters Cereal', 4, 1, 'https://static.openfoodfacts.org/images/products/00308151/front_en.10.400.jpg', 'Céréales mixtes aux fruits', '369gr', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Shin Ramyun', 1, 1, 'https://static.openfoodfacts.org/images/products/003/114/602/2861/front_en.8.400.jpg', 'Spicy Ramen Noodle Soup', '480 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Shin Ramyun', 4, 1, 'https://static.openfoodfacts.org/images/products/003/114/615/0601/front_en.4.400.jpg', 'Spicy Ramen Noodle Soup', '120 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('New York Deli Style baked Cheesecake', 2, 1, 'https://static.openfoodfacts.org/images/products/00311854/front_en.5.400.jpg', 'Frozen cheesecake', '30 oz (1.875 lb) 850 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Cranberry Raspberry', 2, 1, 'https://static.openfoodfacts.org/images/products/003/120/045/2016/front_en.8.400.jpg', 'Cranberry, Raspberry and Apple Juice Drink', '1l', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Cranberry Classic', 5, 1, 'https://static.openfoodfacts.org/images/products/003/120/045/6991/front.3.400.jpg', 'Boisson au jus de cranberry', '1 l', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Cranberry Classic', 2, 1, 'https://static.openfoodfacts.org/images/products/003/120/049/0032/front.3.400.jpg', 'Boisson à base de jus de cranberry', '1 l', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Dark chocolate almond', 3, 1, 'https://static.openfoodfacts.org/images/products/003/129/071/8115/front.3.400.jpg', 'Chocolat noir 72% avec amandes', '100 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Buffalo Wing', 1, 1, 'https://static.openfoodfacts.org/images/products/003/150/679/4322/front.6.400.jpg', 'Pasteurized Process NY State Cheddar cheese', '215 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Premium Blueberry Shortbread', 5, 1, 'https://static.openfoodfacts.org/images/products/003/153/559/5105/front_en.7.400.jpg', 'Bite size cookies', '10 oz (284 g)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Fish Oil', 1, 1, 'https://static.openfoodfacts.org/images/products/003/160/401/3288/front_en.9.400.jpg', 'Fish Oil Pills', '100', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('6 Pork & Bramley Apple Sausages', 3, 1, 'https://static.openfoodfacts.org/images/products/00318655/front_en.13.400.jpg', 'Saucisses dorigine britannique au porc britannique élevé en plein air et à la pomme Bramley rôtie au miel', '400 g e', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Cashew Nuts', 2, 1, 'https://static.openfoodfacts.org/images/products/00319980/front_en.16.400.jpg', 'Noix de cajou', '150 g e', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Special K original', 1, 1, 'https://static.openfoodfacts.org/images/products/003/200/001/6170/front_en.8.400.jpg', 'Toasted rice cereal', '12 oz (340 g)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('British Maris Piper Just Bake Chips', 1, 1, 'https://static.openfoodfacts.org/images/products/00323796/front.17.400.jpg', 'Frites de Maris Piper', '1 kg e', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pain is Good', 4, 1, 'https://static.openfoodfacts.org/images/products/003/245/896/0940/front_en.6.400.jpg', 'Pepper Sauce Habanero', '198 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('cranberry and port sauce', 3, 1, 'https://static.openfoodfacts.org/images/products/00325547/front.3.400.jpg', 'cranberry and port sauce', '400g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Sweet Potatoes', 3, 1, 'https://static.openfoodfacts.org/images/products/003/338/357/0051/front_en.5.400.jpg', 'Sweet Potatoes', '3 lbs', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Imitation Butter', 5, 1, 'https://static.openfoodfacts.org/images/products/003/377/601/1604/front_en.5.400.jpg', 'BUTTERY SPREAD', '45 OZ (2 LBS 13 OZ) 1.27kg', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Organic Whipped Traditional Spread', 1, 1, 'https://static.openfoodfacts.org/images/products/003/377/601/1840/front_en.3.400.jpg', 'Margarine', '368 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Chicken Arrabbiata', 3, 1, 'https://static.openfoodfacts.org/images/products/00339469/front.7.400.jpg', 'Pâtes penne italiennes avec du blanc de poulet mariné dans une sauce à la tomate, au basilic etau piment, recouvertes de fromage.', '400 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('White Reeses Peanut Butter Cups', 5, 1, 'https://static.openfoodfacts.org/images/products/003/400/000/3341/front.5.400.jpg', 'Cups au chocolat blanc et beurre de cacahuètes', '42 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Reeses Pieces', 4, 1, 'https://static.openfoodfacts.org/images/products/003/400/011/4702/front_en.39.400.jpg', 'Peanut butter candy in a crunchy shell', '4 OZ (113 g)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Reeses', 1, 1, 'https://static.openfoodfacts.org/images/products/003/400/044/0887/front.9.400.jpg', 'Peanut butter in a chocolate flavoured coating', '51 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Peanut butter cups', 5, 1, 'https://static.openfoodfacts.org/images/products/003/400/044/1037/front.10.400.jpg', 'Tartelette de chocolat au lait fourrées au beurre de cacahuète', '170 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Reeses Peanut Butter Cups Miniatures ', 1, 1, 'https://static.openfoodfacts.org/images/products/003/400/044/7916/front_en.6.400.jpg', 'Peanut Butter Cups', '11 oz', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Peanut Butter Cups Miniatures', 1, 1, 'https://static.openfoodfacts.org/images/products/003/400/044/9095/front.6.400.jpg', 'Mini tartelettes fourrées beurre de cacahuète et recouvertes de chocolat au lait', '140 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Milk Chocolate Reeses Peanut Butter', 1, 1, 'https://static.openfoodfacts.org/images/products/003/400/047/3038/front.7.400.jpg', 'Bonbons en chocolat au lait et beurre de cacahuètes', '204 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Unsalted Butter', 4, 1, 'https://static.openfoodfacts.org/images/products/003/450/015/1504/front_en.7.400.jpg', 'Unsalted sweet butter', '1 LB', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Welchs Island Fruits Snacks', 3, 1, 'https://static.openfoodfacts.org/images/products/003/485/602/8918/front_en.5.400.jpg', 'Fruit Snacks', '64g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Concord Grape Fruit Snacks', 1, 1, 'https://static.openfoodfacts.org/images/products/003/485/602/8949/front_en.3.400.jpg', 'fruit snacks', '2.25oz', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Fruit Snacks', 1, 1, 'https://static.openfoodfacts.org/images/products/003/485/602/8963/front_en.3.400.jpg', 'fruit snacks', '2.25oz', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Slightly Salted English Butter', 5, 1, 'https://static.openfoodfacts.org/images/products/00351546/front_en.18.400.jpg', 'Salted Butter', '250g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Italian Tomato Purée double concentrate', 1, 1, 'https://static.openfoodfacts.org/images/products/00359047/front_en.7.400.jpg', 'Double concentrate tomato purée', '200g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('SAUCE TOMATO & BASIL', 4, 1, 'https://static.openfoodfacts.org/images/products/003/620/021/9317/front_en.6.400.jpg', 'SALSA DE TOMATE Y ALBAHACA', '680 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Fair-trade Golden Caster', 2, 1, 'https://static.openfoodfacts.org/images/products/00363037/front_en.5.400.jpg', 'Unrefined Cane Sugar', '1kg', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Joes Os', 4, 1, 'https://static.openfoodfacts.org/images/products/00365925/front_en.10.400.jpg', 'Toasted Whole Grain Oats Cereal', '28g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Oikos strawberry', 3, 1, 'https://static.openfoodfacts.org/images/products/003/663/203/2935/front_en.8.400.jpg', 'Yaourt', '113 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Activia light blueberry', 2, 1, 'https://static.openfoodfacts.org/images/products/003/663/203/6506/front_en.7.400.jpg', 'Yaourt', '113 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Aperitivo de patatas &quot;Pringles&quot; Sabor crema y cebolla', 4, 1, 'https://static.openfoodfacts.org/images/products/003/700/018/4799/front.7.400.jpg', 'Aperitivo de patatas con sabor a crema y cebolla', '139 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Natural Milk Chocolate', 2, 1, 'https://static.openfoodfacts.org/images/products/003/701/424/2317/front_en.5.400.jpg', 'milk chocolate', '85 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Lindor White', 1, 1, 'https://static.openfoodfacts.org/images/products/003/746/606/2150/front_en.7.400.jpg', 'White chocolate truffles', '6 oz', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Swiss thin', 2, 1, 'https://static.openfoodfacts.org/images/products/003/746/608/1342/front_en.7.400.jpg', 'Chocolat suisse au lait à larôme dorange', '200 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Hazlenut', 5, 1, 'https://static.openfoodfacts.org/images/products/003/746/608/3247/front_en.6.400.jpg', 'Creamy, smooth milk chocolate with gently roasted hazelnuts', '4.4 OZ (125g)', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Jimmy Chips - BBQ Flavored ', 5, 1, 'https://static.openfoodfacts.org/images/products/003/757/880/0800/front_en.6.400.jpg', 'Potato Chips', 'Net Wt. 2.125 oz (60.24g)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('SKIPPY CREAMY', 1, 1, 'https://static.openfoodfacts.org/images/products/003/760/010/5002/front_en.22.400.jpg', 'CREMA DE CACAHUATE CREMOSA UNTABLE REDUCIDA EN GRASA', '462 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('SKIPPY NATURAL', 1, 1, 'https://static.openfoodfacts.org/images/products/003/760/010/5064/front_en.3.400.jpg', 'CREMA DE CACAHUATE UNTABLE', '32 gramos', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Beurre de Cacahuètes Extra-Crunchy', 5, 1, 'https://static.openfoodfacts.org/images/products/003/760/010/6412/front.13.400.jpg', 'Beurre de cacahuètes avec morceaux', '340 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('SKIPPY CREAMY', 4, 1, 'https://static.openfoodfacts.org/images/products/003/760/011/0877/nutrition_en.4.400.jpg', 'CREMA DE CACAHUATE TOSTADO CON MIEL', '462 gramos', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Creamy Peanut Butter', 4, 1, 'https://static.openfoodfacts.org/images/products/003/760/023/0933/front_en.25.400.jpg', 'Beurre de cacahuète', '462 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pom Pur Jus de pomme', 3, 1, 'https://static.openfoodfacts.org/images/products/003/761/739/0248/front.13.400.jpg', 'Jus de pomme bio', '25 cl', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Cracklin Oat Bran', 5, 1, 'https://static.openfoodfacts.org/images/products/003/800/004/5301/front_en.13.400.jpg', 'Cracklin Oat Bran', '482 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pringles Sour Cream & Onion', 4, 1, 'https://static.openfoodfacts.org/images/products/003/800/013/8430/front_en.3.400.jpg', 'Chips', '5.5 oz', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Cheddar Cheese', 2, 1, 'https://static.openfoodfacts.org/images/products/003/800/013/8577/front_en.13.400.jpg', 'Chips', '5.5 oz', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Rice krispies', 3, 1, 'https://static.openfoodfacts.org/images/products/003/800/021/9344/front_en.8.400.jpg', 'Cereals', '25 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pop Tarts Frosted Raspberry', 5, 1, 'https://static.openfoodfacts.org/images/products/003/800/031/6104/front_en.9.400.jpg', 'Toaster pastries', '14.7 oz (416 g)', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pop Tarts Wildlicious Frosted Wild Berry', 3, 1, 'https://static.openfoodfacts.org/images/products/003/800/032/4109/front_en.3.400.jpg', 'Pop Tarts Wildlicious Frosted Wild Berry', '430 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Special K Protein', 1, 1, 'https://static.openfoodfacts.org/images/products/003/800/078/7270/front_en.12.400.jpg', 'Lightly Sweetened Wheat, Rice & Soy Flakes', '12.5 oz', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('BBQ', 4, 1, 'https://static.openfoodfacts.org/images/products/003/800/084/4973/front_en.13.400.jpg', 'Pringles Chips', '5.96 oz', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('El Milagro Tortilla Chips', 5, 1, 'https://static.openfoodfacts.org/images/products/003/862/290/6554/front_en.19.400.jpg', 'Tortilla Chips', '16 oz', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Tropical Gold Premium Pineapple Chunks in Juice', 2, 1, 'https://static.openfoodfacts.org/images/products/003/890/001/4261/front.7.400.jpg', 'Ananas en morceaux au jus', '227 g (139 g égoutté)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Tropical Fruit', 4, 1, 'https://static.openfoodfacts.org/images/products/003/890/003/0483/front_en.3.400.jpg', 'Fruits in juice', '4 OZ', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Shortbread Fingers 160g', 5, 1, 'https://static.openfoodfacts.org/images/products/003/904/700/1138/front_en.11.400.jpg', 'Pure butter shortbread ', '160 g, 5.6 oz', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('ShortBread Highlanders', 2, 1, 'https://static.openfoodfacts.org/images/products/003/904/700/1176/front.3.400.jpg', 'Gateau Sablés', '200 g e', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Shortbread Triangles', 2, 1, 'https://static.openfoodfacts.org/images/products/003/904/700/1312/front.4.400.jpg', 'Sablés pur beurre', '150g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Shortbread Highlanders', 5, 1, 'https://static.openfoodfacts.org/images/products/003/904/700/1442/ingredients.8.400.jpg', 'Sablés Pur Beurre', '200 g e', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pure Butter Shortbread', 4, 1, 'https://static.openfoodfacts.org/images/products/003/904/700/1466/front.3.400.jpg', 'Sablés pur beurre - Pure Butter Shortbread', '28,4 g e', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Chocolate Chip Shortbread', 1, 1, 'https://static.openfoodfacts.org/images/products/003/904/701/1496/front.9.400.jpg', 'Sablés pur beurre', '125 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Shortbread', 3, 1, 'https://static.openfoodfacts.org/images/products/003/904/701/5265/front_en.3.400.jpg', 'shortbread', '200 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Biscuit anglais', 5, 1, 'https://static.openfoodfacts.org/images/products/003/904/701/6101/front_en.5.400.jpg', 'shortbread fingers', '200g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('gaufrette au caramel', 5, 1, 'https://static.openfoodfacts.org/images/products/003/904/714/5764/nutrition.6.400.jpg', '', 'barre chocolate au caramel', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Fruit Crumble Biscuits', 3, 1, 'https://static.openfoodfacts.org/images/products/003/904/715/3707/front_en.5.400.jpg', 'Apple, blueberry & raspberry jam on a sweet biscuit base, topped with biscuit crumb', '6 * 22,5 g (135 g)', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Diet Sparkling Florida Orange', 4, 1, 'https://static.openfoodfacts.org/images/products/00393072/front_en.11.400.jpg', 'Carbonated low Forida orange flavoured soft drink with sweetener', '500 ml e', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Bushs Best Homestyle Baked Beans', 2, 1, 'https://static.openfoodfacts.org/images/products/003/940/001/5949/front_en.5.400.jpg', 'Baked Beans', '794 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Steakhouse Recipe Grillin Beans', 2, 1, 'https://static.openfoodfacts.org/images/products/003/940/001/9169/front_en.7.400.jpg', 'Baked Beans', '624 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Golden Flaxseed Meal', 2, 1, 'https://static.openfoodfacts.org/images/products/003/997/804/9407/front_en.4.400.jpg', 'Golden Flaxseed Meal', '453g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Original Skittles', 1, 1, 'https://static.openfoodfacts.org/images/products/004/000/014/0924/front_en.7.400.jpg', 'Bite size candies', '7.20 oz (204.1 g)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Dove Almond Dark Chocolate Silky Smooth Promises', 4, 1, 'https://static.openfoodfacts.org/images/products/004/000/026/5252/front_en.20.400.jpg', 'Dove Almond Dark Chocolates', '6 servings', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('8 Walnut, Cinnamon & Honey Baklava', 1, 1, 'https://static.openfoodfacts.org/images/products/00400985/ingredients_en.21.400.jpg', 'Feuilles de pâte fillo sucrées superposées fourrées de noix, de miel et de cannelle', '160 g e', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Oatberry Cluster Mini Bites', 4, 1, 'https://static.openfoodfacts.org/images/products/00404426/front.3.400.jpg', 'Mini Bouchées à lAvoine (32%) et à la Canneberge (9%) avec nappage saveur yaourt.', '300 g e', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Original', 5, 1, 'https://static.openfoodfacts.org/images/products/004/060/003/4166/front_en.5.400.jpg', '75% vegetable oil spread', '16 oz', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('6 Venison Sausages 74% Venison', 1, 1, 'https://static.openfoodfacts.org/images/products/00408073/ingredients_en.8.400.jpg', 'Saucisses de chevreuil', '340 g e', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Scottish Shortbread highlanders', 5, 1, 'https://static.openfoodfacts.org/images/products/004/103/601/1448/front.5.400.jpg', 'Shortbread', '200 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Honey Roasted Cashews & Peanuts', 4, 1, 'https://static.openfoodfacts.org/images/products/00411059/front.8.400.jpg', 'noix de cajou et cacahuètes grillées au miel', '175g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Classico Four Cheese Pasta Sauce', 3, 1, 'https://static.openfoodfacts.org/images/products/004/112/907/7627/front_en.3.400.jpg', 'Pasta sauce', '24 oz', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('All natural Brie ', 1, 1, 'https://static.openfoodfacts.org/images/products/004/113/038/2239/front_en.6.400.jpg', 'Soft Ripened Cheese', '8 oz (226 g)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Natural California Raisins', 3, 1, 'https://static.openfoodfacts.org/images/products/004/114/312/8701/front_en.7.400.jpg', 'Raisins', '20 OZ', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Light Garlic & Herb', 5, 1, 'https://static.openfoodfacts.org/images/products/004/115/107/4816/front_en.7.400.jpg', 'Spreadable Cheese Wedges', '6 oz', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Classic Cheddar Pierogies ', 1, 1, 'https://static.openfoodfacts.org/images/products/004/116/400/2219/front_en.6.400.jpg', 'Pierogies ', '2 lbs', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Hearty Chicken & Rotini', 5, 1, 'https://static.openfoodfacts.org/images/products/004/119/691/1169/front_en.17.400.jpg', 'Chicken noodle soup - Hearty Chicken & Rotini', '19 Oz / 538 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Bolognese Authentic Italian Pasta Sauce', 1, 1, 'https://static.openfoodfacts.org/images/products/004/124/052/2013/front_en.8.400.jpg', 'Pasta Sauce', '680 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Fettuccine', 1, 1, 'https://static.openfoodfacts.org/images/products/004/126/810/8831/front_en.6.400.jpg', 'Fettuccine', '16oz (1lb) / 454 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Creamy Peanut Butter', 5, 1, 'https://static.openfoodfacts.org/images/products/004/126/811/3033/front_en.3.400.jpg', 'Peanut butter', '18 oz', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Ground Cinnamon', 4, 1, 'https://static.openfoodfacts.org/images/products/004/126/812/8754/front_en.4.400.jpg', 'Ground cinnamon', '2.37oz', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Hollow Creamy Candy with Cookie Bits', 3, 1, 'https://static.openfoodfacts.org/images/products/004/126/940/6547/front_en.9.400.jpg', 'Cookies and Cream Chocolate Bunny', '1.5 oz', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('International Delight French Vanilla', 5, 1, 'https://static.openfoodfacts.org/images/products/004/127/102/5903/front_en.4.400.jpg', 'Mini I.D.s Coffee Creamer', '24 - 7/16 FL OZ', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Rotini', 1, 1, 'https://static.openfoodfacts.org/images/products/004/130/300/0649/front_en.6.400.jpg', 'Enriched macaroni product', '1 LB (16 oz) 454g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Leche de coco', 1, 1, 'https://static.openfoodfacts.org/images/products/004/133/102/1647/front.8.400.jpg', 'Leche de coco', '400 ml', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Garbanzos/Chick Peas', 2, 1, 'https://static.openfoodfacts.org/images/products/004/133/102/4785/front_en.7.400.jpg', 'Raw Chick Peas', '16 oz', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Blue Cheese', 1, 1, 'https://static.openfoodfacts.org/images/products/004/133/566/5151/front.4.400.jpg', 'Blue Cheese dressing', '1.5 OZ', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('4C PANKO', 1, 1, 'https://static.openfoodfacts.org/images/products/004/138/753/0209/front_en.3.400.jpg', 'Pan molido estilo jaónés', '227 g.', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('4C PLAIN', 2, 1, 'https://static.openfoodfacts.org/images/products/004/138/761/2158/front_en.4.400.jpg', 'Pan molido', '425 g.', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Sukiyaki Sauce', 3, 1, 'https://static.openfoodfacts.org/images/products/004/139/002/0452/front_en.3.400.jpg', 'sauce teriyaki (french)', '296', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Organic cereal cinnamon squares', 1, 1, 'https://static.openfoodfacts.org/images/products/004/141/515/9051/front_en.3.400.jpg', 'Cereals', '10 oz', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Harina completa preparada para hot cakes echos con suero de mantequilla', 3, 1, 'https://static.openfoodfacts.org/images/products/004/144/900/1104/front_en.4.400.jpg', 'Harina para hot cakes', '907 gr', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Harina preparada para pastelitos con trozos de chocolate', 1, 1, 'https://static.openfoodfacts.org/images/products/004/144/940/2529/front_en.8.400.jpg', 'Harina para pastel', '517 gr', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Honey Mustard', 2, 1, 'https://static.openfoodfacts.org/images/products/004/150/000/0527/front.6.400.jpg', 'Moutarde au miel', '340 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Tomato KETCHUP', 2, 1, 'https://static.openfoodfacts.org/images/products/004/150/093/6017/front_en.7.400.jpg', 'Ketchup', '20 OZ', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Aranciata Rossa', 5, 1, 'https://static.openfoodfacts.org/images/products/004/150/830/0346/front_en.11.400.jpg', 'Sparkling blood orange beverage ', '11.15 fl oz (330 mL)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('S.Pellegrino', 1, 1, 'https://static.openfoodfacts.org/images/products/004/150/880/0129/front_en.8.400.jpg', 'Sparkling Natural Mineral Water', '25.3 fl. oz (1 pt 9.3 fl. oz) 750 mL', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Aranciata', 3, 1, 'https://static.openfoodfacts.org/images/products/004/150/880/0600/front_en.10.400.jpg', 'Sparkling Orange Beverage with 16% Orange Juice from Concentrate with Other Naturel Flavors', '330 mL', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('SANPELLEGRINO', 1, 1, 'https://static.openfoodfacts.org/images/products/004/150/880/2185/front_en.6.400.jpg', 'Eau minérale gazéifiée', '1 l', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Almond Milk Unsweetened ', 4, 1, 'https://static.openfoodfacts.org/images/products/004/157/005/4130/front_en.10.400.jpg', 'Unsweetened almond milk ', '1', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Almond Breeze', 3, 1, 'https://static.openfoodfacts.org/images/products/004/157/005/5311/front.4.400.jpg', 'Lait damande non sucré', '946 ml', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Leche de almendras Original', 2, 1, 'https://static.openfoodfacts.org/images/products/004/157/011/2717/front.9.400.jpg', 'Leche de almendras con calcio', '1 l', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Bebida de almendras Zero', 4, 1, 'https://static.openfoodfacts.org/images/products/004/157/011/2731/front.10.400.jpg', 'Bebida de almendras UHT con calcio y vitaminas', '1 l', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Creamy Swiss Garlic & Herb', 1, 1, 'https://static.openfoodfacts.org/images/products/004/175/701/5299/front_en.7.400.jpg', 'Spreadable Cheese Wedges', '16 wedges, 12 oz (340 g)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Roast chiken flavor', 4, 1, 'https://static.openfoodfacts.org/images/products/004/178/900/1574/front.7.400.jpg', 'ramen noodles with vegetables', '64 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Bertolli Extra Virgin Olive Oil', 2, 1, 'https://static.openfoodfacts.org/images/products/004/179/021/4260/front_en.5.400.jpg', 'Extra Virgin Olive Oil', '750 mL', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Grape', 3, 1, 'https://static.openfoodfacts.org/images/products/004/180/032/6006/front_en.22.400.jpg', 'Juice drink from concentrate', '296 ml', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Chocolate Milk', 5, 1, 'https://static.openfoodfacts.org/images/products/004/190/007/5378/front_en.7.400.jpg', 'Lowfat milk', '14 FL OZ (414 mL)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Original Kremser Senf', 3, 1, 'https://static.openfoodfacts.org/images/products/004/192/013/9654/front.9.400.jpg', 'Senf', '330 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Shanghai Beef Noodles', 3, 1, 'https://static.openfoodfacts.org/images/products/00419543/front.3.400.jpg', 'Nouilles udon avec des lanières de viande de bœuf marinées, frites au wok, dans une sauce soja, recouvertes de pak-choï et de piments rouges.', '350 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Soupe rustique aux legumes a litalienne', 5, 1, 'https://static.openfoodfacts.org/images/products/004/227/200/6168/front.3.400.jpg', 'Soupe de légumes', '400 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Lasagnes aux légumes, pâtes de riz sans gluten', 3, 1, 'https://static.openfoodfacts.org/images/products/004/227/200/8568/front.7.400.jpg', 'Feuilles de riz garnies de légumes avec du fromage, surgelées', '255 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pizza sans gluten', 1, 1, 'https://static.openfoodfacts.org/images/products/004/227/200/8575/front.6.400.jpg', 'Galette de riz au fromage et à la tomate, surgelée', '170 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('4 Steaks aux légumes, au quinoa et aux noix', 3, 1, 'https://static.openfoodfacts.org/images/products/004/227/200/8605/front.6.400.jpg', 'Galettes à base de légumes, de quinoa et de noix, cuites et surgelées', '270 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Spaghettis Italiano avec boulettes végétales ', 3, 1, 'https://static.openfoodfacts.org/images/products/004/227/200/8667/front.4.400.jpg', 'Spaghetti ', '255 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Vanilla Organic Non-Dairy', 4, 1, 'https://static.openfoodfacts.org/images/products/004/227/201/0523/front.3.400.jpg', 'Dessert glacé biologique, végétalien, sans lactose, à la vanille', '473 ml', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Glace au chocolat végane', 5, 1, 'https://static.openfoodfacts.org/images/products/004/227/201/05530/front.3.400.jpg', 'Dessert glacé à base de lait de coco', '473mL', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Tootie Fruities', 3, 1, 'https://static.openfoodfacts.org/images/products/004/240/014/8647/front_en.3.400.jpg', 'Tootie Fruities', '935 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('So Organic Whole British Milk', 1, 1, 'https://static.openfoodfacts.org/images/products/00425490/front_en.4.400.jpg', 'Organic Milk (Pasteurized Homogenised Cows Milk)', '568 ml (1 pint)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Peanut butter, organic, smooth ', 2, 1, 'https://static.openfoodfacts.org/images/products/004/256/300/7799/front_en.3.400.jpg', 'Peanut butter', '1', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('british round lettuce', 3, 1, 'https://static.openfoodfacts.org/images/products/00426374/front_en.5.400.jpg', 'round lettuce', '1 lettuce', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('6 Garlic Bread Slices', 5, 1, 'https://static.openfoodfacts.org/images/products/00428170/front.6.400.jpg', '6 tranches de baguette recouvertes de beurre à lail', '140 g e', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Nut Collection', 2, 1, 'https://static.openfoodfacts.org/images/products/00428996/front.5.400.jpg', 'Une sélection damandes, de noix de cajou, de noix de pécan, de noix de macadamia et de pistaches.', '150 g e', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Jell-o vanille', 4, 1, 'https://static.openfoodfacts.org/images/products/004/300/020/4337/front_en.7.400.jpg', 'Instant Pudding & Pie Filling', '96 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pistachio', 5, 1, 'https://static.openfoodfacts.org/images/products/004/300/020/4450/front_en.5.400.jpg', 'Instant Pudding & Pie Filling', '3.4 oz (96 g)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Moutarde au miel', 5, 1, 'https://static.openfoodfacts.org/images/products/004/364/620/4005/front.14.400.jpg', 'Moutarde ', '200 ml', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Moutarde préparée au Raifort Maille', 1, 1, 'https://static.openfoodfacts.org/images/products/004/364/620/4104/front.14.400.jpg', 'Moutarde ', '200 ml', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Moutarde préparée à la Provençale Maille', 3, 1, 'https://static.openfoodfacts.org/images/products/004/364/620/5385/front.14.400.jpg', 'Moutarde ', '200 ml', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Cornichons', 2, 1, 'https://static.openfoodfacts.org/images/products/004/364/621/0389/front_en.5.400.jpg', 'Extra Fine Gherkins', '14 oz (466 g)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Black Cherry Conserve', 3, 1, 'https://static.openfoodfacts.org/images/products/004/364/702/0017/front_en.5.400.jpg', 'Black Cherry Extra Jam', '340g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Oreo', 1, 1, 'https://static.openfoodfacts.org/images/products/004/400/000/7492/front_en.7.400.jpg', 'Chocolate sandwich cookies', '5.2 oz (147 g)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Newtons Fruit Thins', 1, 1, 'https://static.openfoodfacts.org/images/products/004/400/001/2625/front_en.9.400.jpg', 'Crispy Cookies', '10.5 OZ (297g)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Triscuit garden herb crackers', 4, 1, 'https://static.openfoodfacts.org/images/products/004/400/002/8015/front_en.11.400.jpg', 'Triscuits crackers', '9 oz', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Newtons Fig', 5, 1, 'https://static.openfoodfacts.org/images/products/004/400/003/0667/front_en.6.400.jpg', 'Fruit Chewy Cookies', '7 oz (198 g)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Cheese Nips Angry Birds', 2, 1, 'https://static.openfoodfacts.org/images/products/004/400/003/1275/front_en.7.400.jpg', 'Naturally flavored cheddar baked snack crackers', '10.5 oz', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Belvita Breakfast Chocolate', 5, 1, 'https://static.openfoodfacts.org/images/products/004/400/003/1947/front_en.4.400.jpg', 'Chocolate breakfast biscuits ', '5', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Oreo', 5, 1, 'https://static.openfoodfacts.org/images/products/004/400/003/2029/front_en.7.400.jpg', 'Chocolate sandwich cookies', '14.3 oz (405 g)', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Golden Oreo', 4, 1, 'https://static.openfoodfacts.org/images/products/004/400/003/2586/front_en.8.400.jpg', 'Sandwich cookies', '14.3 oz (405 g)', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Oreo', 5, 1, 'https://static.openfoodfacts.org/images/products/004/400/003/3279/front_en.5.400.jpg', 'Chocolate sandwich cookies', '1 LB (541 g)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Chocolate Chip Chewy Cookies - Family Size', 2, 1, 'https://static.openfoodfacts.org/images/products/004/400/003/3392/front_en.8.400.jpg', 'Real Chocolate Chip Cookies', '19.5 oz (552g)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Cinnamon Bun OREO', 3, 1, 'https://static.openfoodfacts.org/images/products/004/400/004/4435/front_en.12.400.jpg', 'Cinnamon Bun Flavored Sandwich Cookie ', '12.2 OZ', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Oreo', 2, 1, 'https://static.openfoodfacts.org/images/products/004/400/007/2742/front_en.7.400.jpg', 'Chocolate sandwich cookies', '3 lb 4.5 oz (1.48 kg)', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Nutter Butter 12 packs', 5, 1, 'https://static.openfoodfacts.org/images/products/004/400/008/8453/front_en.10.400.jpg', 'Peanut Butter Sandwich Cookies', '12 x 1.9 oz (12 x 53 g) 636 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Ritz Snowflake Crackers', 3, 1, 'https://static.openfoodfacts.org/images/products/004/400/103/1137/front_en.5.400.jpg', 'Ritz', '388g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Trader Joes Jalapeno Pepper Hot Sauce', 4, 1, 'https://static.openfoodfacts.org/images/products/00443357/front_en.6.400.jpg', 'Hot sauce', '5 fl oz', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Fréjol negro', 3, 1, 'https://static.openfoodfacts.org/images/products/004/469/500/0846/front.8.400.jpg', 'Alubias negras cocidas', '425 g (neto), 260 g (escurrido)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Gandules verdes en conserva', 1, 1, 'https://static.openfoodfacts.org/images/products/004/469/508/2002/front.8.400.jpg', 'Gandules verdes en conserva', '425 g (neto), 268 g (escurrido)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Red Curry Paste', 2, 1, 'https://static.openfoodfacts.org/images/products/004/473/820/1698/front_en.8.400.jpg', 'Red Curry Paste', '1000g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Coconut Milk Powder', 3, 1, 'https://static.openfoodfacts.org/images/products/004/473/820/9618/front_en.4.400.jpg', 'Coconut Milk Powder', '70 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Organic Beautifully Smooth Lemon Curd', 2, 1, 'https://static.openfoodfacts.org/images/products/004/493/623/2845/front_en.6.400.jpg', 'Lemon Curd', '10.6 oz', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Unwaxed lemons', 1, 1, 'https://static.openfoodfacts.org/images/products/00449991/front_en.7.400.jpg', 'Unwaxed lemons', '5', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Ravens Oak Goats Cheese', 2, 1, 'https://static.openfoodfacts.org/images/products/004/516/970/3003/front_en.12.400.jpg', 'Goats Cheese', '142g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Dark Soy Sauce', 5, 1, 'https://static.openfoodfacts.org/images/products/00455916/ingredients_en.9.400.jpg', 'Sauce soja foncée', '150 ml', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Noix de cajou', 4, 1, 'https://static.openfoodfacts.org/images/products/00462907/front.6.400.jpg', 'Noix de cajou', '70 g e', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Midnight Jumbo raisins & cashew nuts', 1, 1, 'https://static.openfoodfacts.org/images/products/00464659/front_en.4.400.jpg', 'watermelon', '1 watermelon', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Carrot Cake with Walnut', 2, 1, 'https://static.openfoodfacts.org/images/products/00470353/ingredients_en.16.400.jpg', 'Carrot Cake with Walnut', '75 g e', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Challenge Butter unsalted', 4, 1, 'https://static.openfoodfacts.org/images/products/004/720/015/2504/front_en.6.400.jpg', 'Unsalted Butter', '16 oz (1 lb) 454 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('6 scones aux raisins de Smyrne', 3, 1, 'https://static.openfoodfacts.org/images/products/00473170/front.7.400.jpg', 'Fruit scones', '340g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Vitamin D3', 5, 1, 'https://static.openfoodfacts.org/images/products/004/746/905/8890/front_en.5.400.jpg', 'Vitamin D3', '90 mini tabs', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('coconut', 1, 1, 'https://static.openfoodfacts.org/images/products/00475020/front_en.5.400.jpg', 'coconut', '1 coconut', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Perfectly Ripe Greengages', 2, 1, 'https://static.openfoodfacts.org/images/products/00477833/front_en.3.400.jpg', 'Plums', '350g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Canola mayonnaise dressing', 3, 1, 'https://static.openfoodfacts.org/images/products/004/800/121/3920/front_en.6.400.jpg', 'Mayonnaise', '30 fl oz', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Skippy Smooth', 2, 1, 'https://static.openfoodfacts.org/images/products/004/800/127/0305/front.6.400.jpg', 'beurre de cacahuète, peanut butter', '340 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Puff Pastry Steak & Ale Pie', 1, 1, 'https://static.openfoodfacts.org/images/products/00480925/front.3.400.jpg', 'Base en pâte brisée avec du bœuf dorigine britannique dans une sauce au bouillon de viande à la bière britannique India Pale Ale recouverte de pâte feuilletée. Puff Pastry Steak & Ale Pie', '200 g e', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('6 Cumberland sausages', 3, 1, 'https://static.openfoodfacts.org/images/products/00481724/front.7.400.jpg', 'Saucisses du Cumberland au porc élevé en plein air dorigine britanique', '400 g e', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Tropicana Cranberry', 3, 1, 'https://static.openfoodfacts.org/images/products/004/850/000/8386/front_en.4.400.jpg', 'Juice beverage with Cranberry ', '10 fl oz (296 mL)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('100% Pure Orange Juice', 5, 1, 'https://static.openfoodfacts.org/images/products/004/850/002/0746/front_en.6.400.jpg', 'Orange Juice', '118 FL OZ', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Tropicana farmstand tropical green fruit and vegetable juice', 1, 1, 'https://static.openfoodfacts.org/images/products/004/850/020/1039/front_en.7.400.jpg', 'Fruit and vegetable juice', '46 fl oz', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Tropicana Pure Premium Orange Juice No Pulp', 3, 1, 'https://static.openfoodfacts.org/images/products/004/850/030/1029/front_en.16.400.jpg', 'Fresh orange juice', '1.75 L', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('6 Lincolnshire Sausages', 2, 1, 'https://static.openfoodfacts.org/images/products/00486255/ingredients_en.11.400.jpg', 'Saucisses dorigine britannique au porc élevé en plein air aux herbes.', '400 g e', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Coca-Cola Life', 4, 1, 'https://static.openfoodfacts.org/images/products/004/900/006/5220/front_en.13.400.jpg', 'Reduced Calorie Cola', '20 fl oz', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Facile Kochbeutel Langkornreis', 3, 1, 'https://static.openfoodfacts.org/images/products/004/911/100/0066/front.4.400.jpg', 'Langkornreis', '500g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('S.Pellegrino', 1, 1, 'https://static.openfoodfacts.org/images/products/004/928/380/2185/front_en.10.400.jpg', 'Sparkling Natural Mineral Water', '25.3 fl. oz (1 pt 9.3 fl. oz) 750 mL', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Salt & Vinegar Twist', 4, 1, 'https://static.openfoodfacts.org/images/products/00496070/front.3.400.jpg', 'Biscuits apéritif à base de pomme de terre aromatisés au sel et au vinaigre ', '80 g e', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Coffee mate', 4, 1, 'https://static.openfoodfacts.org/images/products/005/000/030/0624/front_en.11.400.jpg', 'Coffee creamer', '6 oz', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Chocolate Cupcakes', 3, 1, 'https://static.openfoodfacts.org/images/products/00500241/front_en.5.400.jpg', 'Chocolate Cupcakes', '340 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Ritter Sport Fine Milk Chocolate', 4, 1, 'https://static.openfoodfacts.org/images/products/005/025/502/1008/front_en.4.400.jpg', 'Fine Milk Chocolate', '100 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Melton Mowbray Pork Pie', 3, 1, 'https://static.openfoodfacts.org/images/products/00503303/front_en.7.400.jpg', 'Melton Mowbray Pork Pie', '145g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Gold Emblem Peach Rings', 3, 1, 'https://static.openfoodfacts.org/images/products/005/042/839/3550/front_en.5.400.jpg', 'Peach rings', '3.5 oz (99 g)', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Tamari seasoned almonds', 3, 1, 'https://static.openfoodfacts.org/images/products/005/042/856/0952/front_en.10.400.jpg', 'seasoned almonds', '8.5 OZ / 241 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Organic Balsamic Vinaigrette', 5, 1, 'https://static.openfoodfacts.org/images/products/005/042/858/0912/front_en.11.400.jpg', 'balsamic vinaigrette salad dressing', '16 FL OZ', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Deluxe Mixed Nuts', 2, 1, 'https://static.openfoodfacts.org/images/products/005/042/859/0287/front_en.10.400.jpg', 'Honey roasted mixed nuts', '17 OZ / 481 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Solid Pack Pumpkin', 5, 1, 'https://static.openfoodfacts.org/images/products/005/070/055/9124/front_en.9.400.jpg', 'Pumpkin', '425 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Orangina', 5, 1, 'https://static.openfoodfacts.org/images/products/005/096/833/0015/front_en.6.400.jpg', 'Sparkling citrus Beverage with Natural pulp', '33.8 fl. oz (1qt 1.8 fl. oz) 1 L', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Campbell Tomato Soup', 3, 1, 'https://static.openfoodfacts.org/images/products/005/100/000/0118/front_en.10.400.jpg', 'Tomato Soup', '305 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Family size cream of chicken', 2, 1, 'https://static.openfoodfacts.org/images/products/005/100/005/5002/front_en.7.400.jpg', 'cream of chicken soup', '26 oz', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('V8 original', 3, 1, 'https://static.openfoodfacts.org/images/products/005/100/006/9924/front_en.9.400.jpg', 'Vegetable Juice', '64 fl. oz (2 qt) 1.89 L', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Cream of Mushroom', 1, 1, 'https://static.openfoodfacts.org/images/products/005/100/011/5515/front_en.9.400.jpg', 'Cream of Mushroom Soup', '298 ml', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Cream of Chicken', 4, 1, 'https://static.openfoodfacts.org/images/products/005/100/011/5539/front_en.8.400.jpg', 'Cream of Chicken Soup', '10 1/2 OZ. (298g)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('ALFREDO SAUCE', 4, 1, 'https://static.openfoodfacts.org/images/products/005/100/019/7597/front_en.11.400.jpg', 'SALSA ALFREDO ESTILO CASERO', '411 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Tavern Style Pot Roast Slow Cooker Sauce', 1, 1, 'https://static.openfoodfacts.org/images/products/005/100/020/4721/front_en.3.400.jpg', 'Pot Roast Mix', '13 oz.', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Italian Macaroni', 4, 1, 'https://static.openfoodfacts.org/images/products/00511537/front_en.6.400.jpg', 'Authentic Italian Pasta', '16 OZ (1 LB ) 454g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Channa Masala', 4, 1, 'https://static.openfoodfacts.org/images/products/005/117/911/3169/front_en.4.400.jpg', 'Chick peas in curry sauce', '280 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Creamy Natural Peanut Butter', 3, 1, 'https://static.openfoodfacts.org/images/products/005/150/070/0167/front_en.8.400.jpg', 'Creamy peanut butter', '16 OZ (1 LB) 454g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Jif Peanut Butter Creamy', 5, 1, 'https://static.openfoodfacts.org/images/products/005/150/072/0011/front_en.33.400.jpg', 'Creamy Peanut Butter', '1133 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Boston Harbour Tea', 2, 1, 'https://static.openfoodfacts.org/images/products/005/150/734/0052/front_en.7.400.jpg', 'Blend of superior teas from Darjeeling, India and Ceylon', '0.4 oz', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Beurre damandes / allons butter', 5, 1, 'https://static.openfoodfacts.org/images/products/005/165/109/2869/front.3.400.jpg', 'Purée damandes ', '737g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Snack Fruit, Nut & Berry', 5, 1, 'https://static.openfoodfacts.org/images/products/00517805/front.3.400.jpg', 'Mélange de raisins secs noix de cajou, canneberges déshydratées sucrées, noix de pécan et myrtilles : déshydratées sucrées.', '150 g e', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Weetabix Original 430', 1, 1, 'https://static.openfoodfacts.org/images/products/005/202/900/0172/front.4.400.jpg', 'céréales de blé complet enrichies en vitamines et en fer', '430', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Oriental style instant noodles stew beef flavour', 5, 1, 'https://static.openfoodfacts.org/images/products/005/206/600/4010/front_en.4.400.jpg', 'Ramen noodles beef', '60 g [Noodles 53 g + Seasoning 7 g]', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Yogurth vannilla', 4, 1, 'https://static.openfoodfacts.org/images/products/005/215/900/0073/front_en.9.400.jpg', 'Vanilla Yogurt', '2 lbs', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Cherry Sours ', 4, 1, 'https://static.openfoodfacts.org/images/products/005/254/856/9150/front_en.5.400.jpg', 'cherry sour candy', '170 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Marshmallow Fluff', 4, 1, 'https://static.openfoodfacts.org/images/products/005/260/011/2751/front_en.114.400.jpg', 'Marshmallow Fluff', '213 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Marshmallow', 5, 1, 'https://static.openfoodfacts.org/images/products/005/260/031/2755/front.7.400.jpg', 'Pâte à tartiner au marshmallow aromatisée fraise - Marshmallow Fluff Strawberry', '213 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Organic Chocolate Almond Non-Dairy Beverage', 1, 1, 'https://static.openfoodfacts.org/images/products/005/260/306/5061/front_en.16.400.jpg', 'Chocolate almond milk', '8 fl oz', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Quattro Formaggio', 5, 1, 'https://static.openfoodfacts.org/images/products/00529549/front_en.6.400.jpg', 'A Shredded Blend or Parmesan, Asiago, Fontina & Mild Provolone Cheeses', '12 OZ (340g)', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Irish pancakes', 5, 1, 'https://static.openfoodfacts.org/images/products/00532662/front.7.400.jpg', 'Pancakes', '6x35g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Peanut Butter & Chop Chip Cookies', 5, 1, 'https://static.openfoodfacts.org/images/products/00537742/front_en.13.400.jpg', 'Peanut Butter & Chop Chip Cookies - Cookies au Beurre de Cacahuète et Pépites de Chocolat', '200 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Chicken tikka masala with spiced basmati rice', 5, 1, 'https://static.openfoodfacts.org/images/products/00538077/front_en.24.400.jpg', 'Chicken tikka masala with spiced basmati rice', '400 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Classic Marshmallows', 1, 1, 'https://static.openfoodfacts.org/images/products/005/430/009/1527/front_en.11.400.jpg', 'Guimauves - Classic Marshmallows', '150 g e', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Kola Champron Original', 1, 1, 'https://static.openfoodfacts.org/images/products/005/430/818/4412/front.6.400.jpg', 'boisson au cola', '330 ml', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Hot Cocoa classic', 1, 1, 'https://static.openfoodfacts.org/images/products/005/446/705/0214/front_en.6.400.jpg', 'Hot Cocoa', '30oz (850g) 1.87lb', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Ball Park Lean Beef Franks', 3, 1, 'https://static.openfoodfacts.org/images/products/005/450/010/1149/front_en.5.400.jpg', 'Beef Hot Dogs', '396 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Nesquik Less Sugar', 1, 1, 'https://static.openfoodfacts.org/images/products/005/500/013/9045/front_en.3.400.jpg', 'Mélange pour lait au chocolat enrichi de vitamines 1/3 de moins de sucre que loriginal', '540 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Trader Joes columbia and sumatra coffee', 5, 1, 'https://static.openfoodfacts.org/images/products/00551434/front_en.5.400.jpg', 'Coffee', '737 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Beatrice homogenized milk (3.25% M.G.)', 5, 1, 'https://static.openfoodfacts.org/images/products/005/530/011/0003/front_en.4.400.jpg', 'Beatrice milk', '2 li', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Beurre dérable 100% pure Maple Spread', 3, 1, 'https://static.openfoodfacts.org/images/products/005/552/630/2503/front.3.400.jpg', 'Beurre dérable', '250g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Squares à lAvoine', 5, 1, 'https://static.openfoodfacts.org/images/products/005/557/710/5665/front.3.400.jpg', 'Oatmeal Squares', '500 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('barres tendres chewy', 3, 1, 'https://static.openfoodfacts.org/images/products/005/557/710/9588/ingredients_en.11.400.jpg', 'Barres tendres', '6', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Breton, Multigrain Crackers', 4, 1, 'https://static.openfoodfacts.org/images/products/005/565/363/0104/front_en.3.400.jpg', 'Galletas integrales', '250g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Breton cabaret', 3, 1, 'https://static.openfoodfacts.org/images/products/005/565/367/1404/front_en.3.400.jpg', 'Galletas crujientes y cremosas', '200g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Cassis', 4, 1, 'https://static.openfoodfacts.org/images/products/005/565/630/2046/front.6.400.jpg', 'Pastilles pour la gorge', '38 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Cottage Cheese', 1, 1, 'https://static.openfoodfacts.org/images/products/005/574/235/7653/front_en.14.400.jpg', 'Cottage', '500 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Cacao', 5, 1, 'https://static.openfoodfacts.org/images/products/005/574/235/8902/front.19.400.jpg', 'Cacao en poudre', '250g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Cranberries Dried and Sweetened', 1, 1, 'https://static.openfoodfacts.org/images/products/005/574/237/0348/front_en.4.400.jpg', 'Dried Fruit', '350 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Medium Cheddar', 5, 1, 'https://static.openfoodfacts.org/images/products/005/574/258/6398/front_en.4.400.jpg', 'Cheese', '200 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Whole basted British chicken', 5, 1, 'https://static.openfoodfacts.org/images/products/00558075/front_en.3.400.jpg', 'Chicken', '1.408 kg', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Frenchs Yellow Mustard', 2, 1, 'https://static.openfoodfacts.org/images/products/005/620/076/1142/front_en.6.400.jpg', 'Yellow Mustard', '325 ml', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('PB&J bar', 5, 1, 'https://static.openfoodfacts.org/images/products/00562713/front_en.7.400.jpg', 'Peanut butter and jelly bar', '210 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Creamy Strawberry', 1, 1, 'https://static.openfoodfacts.org/images/products/005/680/052/8015/front_en.11.400.jpg', 'strawberry yogurt', '100 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Creamy Peach', 3, 1, 'https://static.openfoodfacts.org/images/products/005/680/052/8022/front_en.12.400.jpg', 'peach yogurt', '100 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Activia', 5, 1, 'https://static.openfoodfacts.org/images/products/005/680/086/8098/front.4.400.jpg', 'Yogourt probiotique à la noix de coco', '650 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Cream Ale', 1, 1, 'https://static.openfoodfacts.org/images/products/005/691/010/4734/front_en.11.400.jpg', 'Ale', '473 ml', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Original Draught', 2, 1, 'https://static.openfoodfacts.org/images/products/005/691/020/1167/front_en.8.400.jpg', 'Beer', '473 ml', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Yoplait Crémeux vanille', 1, 1, 'https://static.openfoodfacts.org/images/products/005/692/005/2421/front.4.400.jpg', 'Yogourt probiotique à la vanille', '650 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Source 0% MG Vanille', 4, 1, 'https://static.openfoodfacts.org/images/products/005/692/006/0662/front.4.400.jpg', 'Yaourt à la vanille', '650 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Classico di Firenze − Épinards et fromage à la florentine', 5, 1, 'https://static.openfoodfacts.org/images/products/005/700/033/0125/ingredients_en.13.400.jpg', 'Sauce pour pâtes', '650 mL', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Double Chocolate Muffin Mix', 3, 1, 'https://static.openfoodfacts.org/images/products/00573924/front.8.400.jpg', 'A chocolate muffin mix with a sachet of milk chocolate chunks', '365 g e', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Astro Original Balkan Yogourt Plain 3 % M.G.', 4, 1, 'https://static.openfoodfacts.org/images/products/005/782/575/0016/front_en.4.400.jpg', 'Plain yogourt', '750 Gr', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Sunset Campari Tomatoes', 5, 1, 'https://static.openfoodfacts.org/images/products/005/783/602/0641/front_en.6.400.jpg', 'Tomatoes', '454 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Crispy Apple Chips (Original)', 4, 1, 'https://static.openfoodfacts.org/images/products/005/808/400/0058/front_en.3.400.jpg', 'Dried apple chips', '300 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Love Crunch Dark Chocolate & Peanut Butter', 1, 1, 'https://static.openfoodfacts.org/images/products/005/844/916/2063/front_en.4.400.jpg', 'Love Crunch Dark Chocolate & Peanut Butter', '11,5 Oz', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Lotta Chocolotta', 4, 1, 'https://static.openfoodfacts.org/images/products/005/844/941/0140/front_en.5.400.jpg', 'Toaster Pastries', '11 OZ (312 g)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Hot & Steamy Porridge Oats', 4, 1, 'https://static.openfoodfacts.org/images/products/005/844/945/0795/front_en.11.400.jpg', 'Porridge oats', '224g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Multigrain flocons de son d’avoine', 1, 1, 'https://static.openfoodfacts.org/images/products/005/844/960/2293/ingredients_en.19.400.jpg', 'Flocons de son davoine', '1,25 kg', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Envirokidz Choco Chimps', 5, 1, 'https://static.openfoodfacts.org/images/products/005/844/987/0241/front_en.11.400.jpg', 'Chocolate puffs cereal', '10 oz', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Granola noix de coco et chia', 3, 1, 'https://static.openfoodfacts.org/images/products/005/844/989/0324/front.16.400.jpg', 'céréales pour petit déjeuner', '350 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Starburst Original', 2, 1, 'https://static.openfoodfacts.org/images/products/005/849/689/6539/front_en.3.400.jpg', 'chewy candy ', '191 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Original', 3, 1, 'https://static.openfoodfacts.org/images/products/005/849/689/6577/ingredients_en.5.400.jpg', 'chewy candy', '191 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Sour Skittles', 1, 1, 'https://static.openfoodfacts.org/images/products/005/849/689/6584/nutrition_en.5.400.jpg', 'Sour candy', '151 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('All Butter Fairtrade Brazil Nut Cookies', 2, 1, 'https://static.openfoodfacts.org/images/products/00587761/front.14.400.jpg', 'Biscuits au beurre aux noix du Brésil labellisées Fairtrade', '200 g e', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Minute Rice', 2, 1, 'https://static.openfoodfacts.org/images/products/005/910/000/8645/front.6.400.jpg', 'riz saveur poulet', '250g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Sauce BBQ', 4, 1, 'https://static.openfoodfacts.org/images/products/005/928/412/3462/front.5.400.jpg', 'Sauce ketchup', '50 cl', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Hobnobs', 3, 1, 'https://static.openfoodfacts.org/images/products/005/929/050/0677/front_en.3.400.jpg', 'oat and whole wheat biscuits', '300 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Instant Noodles Shrimp', 3, 1, 'https://static.openfoodfacts.org/images/products/005/949/100/0303/front_en.4.400.jpg', 'Noodles', '85 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('True To Nature', 2, 1, 'https://static.openfoodfacts.org/images/products/005/952/730/5983/front_en.3.400.jpg', 'Apples figs and Walnuts Bar', '1', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('A&W racinette/root beer', 3, 1, 'https://static.openfoodfacts.org/images/products/005/953/100/0607/front.7.400.jpg', 'soda racinette', '2 l', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Orange Minute Maid', 4, 1, 'https://static.openfoodfacts.org/images/products/005/960/004/8134/front_en.5.400.jpg', 'Jus dorange', '1 l', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pâte faite de tomate: fines herbes et épices (faible teneur en sodium)', 1, 1, 'https://static.openfoodfacts.org/images/products/005/974/987/5936/front.5.400.jpg', 'Sauce tomate', '156ml', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('100% parmesan', 4, 1, 'https://static.openfoodfacts.org/images/products/005/974/988/4853/front.8.400.jpg', 'fromage', '250 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Life Smart Mieux-être', 1, 1, 'https://static.openfoodfacts.org/images/products/005/974/991/8558/front.15.400.jpg', 'Haricots rouge foncé', '540 ml', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Irresistible Life Smart Plain', 2, 1, 'https://static.openfoodfacts.org/images/products/005/974/993/8051/front.7.400.jpg', 'Yogurt probiotique nature', '650 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Elbow Macaroni ( Club Pack )', 5, 1, 'https://static.openfoodfacts.org/images/products/006/038/303/3705/front_en.4.400.jpg', 'Pasta', '2 KG', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Dark chocolate', 2, 1, 'https://static.openfoodfacts.org/images/products/006/038/304/2400/front_en.5.400.jpg', 'chocolate', '100 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Quinoa Vegetable', 3, 1, 'https://static.openfoodfacts.org/images/products/006/038/304/9959/front_en.14.400.jpg', 'Dried quinoa with vegetable seasoning', '225 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Shortening all vegetable', 5, 1, 'https://static.openfoodfacts.org/images/products/006/038/305/8968/front_en.4.400.jpg', 'Oil', '454 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Memories of Marrakech Couscous Whole Wheat', 2, 1, 'https://static.openfoodfacts.org/images/products/006/038/313/1906/front_en.17.400.jpg', 'Couscous Whole Wheat', '340 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Wheat Squares Cereal', 3, 1, 'https://static.openfoodfacts.org/images/products/006/038/368/2033/front_en.3.400.jpg', 'wheat cereal', '620 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Beurre darachide crémeux', 1, 1, 'https://static.openfoodfacts.org/images/products/006/038/370/8825/front.3.400.jpg', 'Beurre de cacahuètes', '500 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Vegetarian Chicken Breast', 2, 1, 'https://static.openfoodfacts.org/images/products/006/038/379/7980/front_en.3.400.jpg', 'simulated chicken', '936 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Milk chocolate with hazelnuts', 5, 1, 'https://static.openfoodfacts.org/images/products/006/038/399/8622/front_en.5.400.jpg', 'milk chocolate', '300 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Classic round tomatoes', 2, 1, 'https://static.openfoodfacts.org/images/products/00606516/front_en.4.400.jpg', 'Tomatoes', '400g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Veggie Pepperoni', 3, 1, 'https://static.openfoodfacts.org/images/products/006/082/200/1166/front_en.3.400.jpg', 'veggie pepperoni', '120 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Nairns Rough Oatcake', 3, 1, 'https://static.openfoodfacts.org/images/products/006/123/220/3072/front_en.4.400.jpg', 'Oatcakes', '291g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Sockeye Salmon', 1, 1, 'https://static.openfoodfacts.org/images/products/006/136/240/1003/front_en.10.400.jpg', 'Salmon', '213 Gr', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Kippered fillets', 2, 1, 'https://static.openfoodfacts.org/images/products/006/136/246/0024/front_en.4.400.jpg', 'Fish fillets', '92 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Cardamome Pods', 2, 1, 'https://static.openfoodfacts.org/images/products/00613637/front.5.400.jpg', 'Graines de cardamome', '33 g e', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Bouillon de bœuf', 4, 1, 'https://static.openfoodfacts.org/images/products/006/140/000/0182/ingredients_en.10.400.jpg', 'Bouilon de boeuf concentré', '750 ml', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Biologiques − Œufs bruns, calibre gros', 2, 1, 'https://static.openfoodfacts.org/images/products/006/171/901/1763/ingredients_en.19.400.jpg', 'Œufs bruns', '12 œufs', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Bâtonnets de poisson – Favoris des familles', 5, 1, 'https://static.openfoodfacts.org/images/products/006/176/302/3163/front_en.14.400.jpg', 'Bâtonnets de poisson pané', '700 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Chick Peas', 3, 1, 'https://static.openfoodfacts.org/images/products/006/235/650/0061/front_en.11.400.jpg', 'chickpeas, hummus', '19 fl oz', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pizzelle Anise', 4, 1, 'https://static.openfoodfacts.org/images/products/006/305/417/0204/front_en.4.400.jpg', 'Italian waffle cookie anise', '5.25 oz (150g)', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('French vanilla', 3, 1, 'https://static.openfoodfacts.org/images/products/006/320/909/3396/front_en.7.400.jpg', 'powder for coffee with vanilla', '16 oz', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Crème de tomates', 4, 1, 'https://static.openfoodfacts.org/images/products/006/321/121/4420/front_en.20.400.jpg', 'Soupe de tomate', '540 mL', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Fortified Almond Beverage', 1, 1, 'https://static.openfoodfacts.org/images/products/006/366/709/0067/front_en.9.400.jpg', 'Almond milk', '946 ml', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Natur-a Soya Chocolat', 3, 1, 'https://static.openfoodfacts.org/images/products/006/366/712/5080/front.8.400.jpg', 'Lait de soja au chocolat', '1,89 l', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Organic Fortified Soy Beverage - Chocolate', 4, 1, 'https://static.openfoodfacts.org/images/products/006/366/730/1859/front_en.7.400.jpg', 'Chocolate soy milk', '946 ml', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Laura Secord Dark Chocolate Flavour', 2, 1, 'https://static.openfoodfacts.org/images/products/006/367/500/7392/front_en.6.400.jpg', 'Dark chocolate spread', '600g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Leclerc Célébration', 3, 1, 'https://static.openfoodfacts.org/images/products/006/404/200/6390/front.5.400.jpg', 'Batonnets de biscuits enrobés de chocolat noir', '270 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Frosted Flakes', 4, 1, 'https://static.openfoodfacts.org/images/products/006/410/010/8219/front_en.8.400.jpg', 'Cereal', '650 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Corn Flakes', 3, 1, 'https://static.openfoodfacts.org/images/products/006/410/059/0182/front.8.400.jpg', 'Cereals', '680g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Mini Ravioli', 1, 1, 'https://static.openfoodfacts.org/images/products/006/414/404/3064/front_en.6.400.jpg', 'Beef Ravioli in Tomato & Meat Sauce', '15 oz (425 g)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Spaghetti & Meatballs', 5, 1, 'https://static.openfoodfacts.org/images/products/006/414/404/3224/front_en.6.400.jpg', 'Pasta and meatballs made with pork, chicken, and beef in tomato sauce', '15 oz (425 g)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Moisson Santé olives et basilic', 4, 1, 'https://static.openfoodfacts.org/images/products/006/420/020/0028/front.4.400.jpg', 'Sauce pour pâtes olives et basilic', '570 ml', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('sparkling scottish Moutain watzr', 4, 1, 'https://static.openfoodfacts.org/images/products/00643740/front_en.13.400.jpg', 'Glen Brae sparkling scottish moutain water', '500 ml e', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Buttermilk', 5, 1, 'https://static.openfoodfacts.org/images/products/006/442/000/1870/front_en.7.400.jpg', 'Buttermilk', '1 l', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Sour Cream', 2, 1, 'https://static.openfoodfacts.org/images/products/006/442/000/6271/front_en.3.400.jpg', 'Sour Cream', '500mL', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('B12 sublingual tablets', 2, 1, 'https://static.openfoodfacts.org/images/products/006/464/205/7464/front_en.3.400.jpg', 'B12 pills', '100 tablets', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Marks & Spencer   Chicken Saag Masala', 5, 1, 'https://static.openfoodfacts.org/images/products/00647434/front_en.10.400.jpg', 'Chicken Masala', '400g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pêches en dés', 3, 1, 'https://static.openfoodfacts.org/images/products/006/525/002/9706/ingredients_en.8.400.jpg', 'Pêches au sirop', '428 mL', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Premium Organic Tofu Extra Firm', 4, 1, 'https://static.openfoodfacts.org/images/products/006/528/111/1104/front_en.3.400.jpg', 'tofu', '350 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Cheerios Miel & Noix', 2, 1, 'https://static.openfoodfacts.org/images/products/006/563/327/9476/front.3.400.jpg', 'Cheerios Honey & Nut', '685 g e', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Cheerios a saveur de chocolat', 5, 1, 'https://static.openfoodfacts.org/images/products/006/563/344/0685/front.3.400.jpg', 'Céréales au chocolat', '610 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Liberté Grec (0% MG)', 2, 1, 'https://static.openfoodfacts.org/images/products/006/568/400/5307/front.8.400.jpg', 'Yogourt grec ', '500 g ', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Liberté Crème Fraîche', 3, 1, 'https://static.openfoodfacts.org/images/products/006/568/411/6133/front.13.400.jpg', 'Crème fraîche', '250 ml', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Yaourt vanille', 2, 1, 'https://static.openfoodfacts.org/images/products/006/568/438/8318/front.8.400.jpg', 'Yogourt Vanille', '750g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Sirop dérable Pur Canadien', 3, 1, 'https://static.openfoodfacts.org/images/products/006/592/803/7538/front.6.400.jpg', 'Sirop dérable', '375 ml', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Mapple Syrup - Sirop derable', 3, 1, 'https://static.openfoodfacts.org/images/products/006/592/854/6252/front.4.400.jpg', 'Sirop dérable', '250 ml', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Mushroom Stir Fry', 1, 1, 'https://static.openfoodfacts.org/images/products/00659741/front.3.400.jpg', 'Mélange de légumes et de champignons.', '400 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Oréo', 3, 1, 'https://static.openfoodfacts.org/images/products/006/618/810/1700/front_en.11.400.jpg', 'Préparation pour gâteau', '363 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Berry Medley', 4, 1, 'https://static.openfoodfacts.org/images/products/00664103/front_en.6.400.jpg', 'A drink made with pasteurised apple and red grape juice with strawberry, raspberry and blueberry purées', '300 ml', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pressed British Apple & Pear Juice', 5, 1, 'https://static.openfoodfacts.org/images/products/00664424/front_en.37.400.jpg', 'Apple & Pear Juice', '1L', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Sardines (Spring Water)', 4, 1, 'https://static.openfoodfacts.org/images/products/006/661/300/0097/front_en.17.400.jpg', 'Sardines', '106 Gr', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Brunswick Wild Sardines', 3, 1, 'https://static.openfoodfacts.org/images/products/006/661/315/2697/front_en.7.400.jpg', 'Sardines', '106g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Poutine Gravy', 2, 1, 'https://static.openfoodfacts.org/images/products/006/670/100/1029/front.6.400.jpg', 'Sauce poutine', '398 ml', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Oreo', 1, 1, 'https://static.openfoodfacts.org/images/products/006/672/100/0972/front_en.6.400.jpg', 'Chocolate sandwich cookies', '300g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Cheese Nips', 5, 1, 'https://static.openfoodfacts.org/images/products/006/672/100/2228/front_en.3.400.jpg', 'cheddar cheese crackers', '200 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('The Original Oreo', 5, 1, 'https://static.openfoodfacts.org/images/products/006/672/100/5694/front_en.5.400.jpg', 'Oreo ', '303 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Chapelure de Graham Crumbs', 3, 1, 'https://static.openfoodfacts.org/images/products/006/672/101/0827/front.8.400.jpg', 'Chapelure de Graham Crumbs', '400 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Four Cheese Pasta Sauce', 5, 1, 'https://static.openfoodfacts.org/images/products/00670210/ingredients_en.11.400.jpg', 'Four Cheese Pasta Sauce', '340 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Maple Crunch milk chocolate', 2, 1, 'https://static.openfoodfacts.org/images/products/006/730/086/0758/front_en.5.400.jpg', 'milk chocolate', '100 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Café Latte milk chocolate', 1, 1, 'https://static.openfoodfacts.org/images/products/006/730/086/2882/front_en.5.400.jpg', 'milk chocolate', '100 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Sugar free spearmint gum', 5, 1, 'https://static.openfoodfacts.org/images/products/00673051/ingredients_en.11.400.jpg', 'Gommes à mâcher sans sucres saveur menthe verte, avec édulcorants', '30 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Sugar free peppermint gum', 2, 1, 'https://static.openfoodfacts.org/images/products/00673068/front_en.3.400.jpg', 'peppermint gum', '30g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Oasis - Jus de pomme 100% pur', 4, 1, 'https://static.openfoodfacts.org/images/products/006/731/101/0333/front.8.400.jpg', 'Jus de pommes', '960 ml', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Oasis classic', 4, 1, 'https://static.openfoodfacts.org/images/products/006/731/102/0110/front_en.8.400.jpg', 'Orange Juice', '300 mL', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Nanton Natural Water Artesian', 4, 1, 'https://static.openfoodfacts.org/images/products/006/735/100/5054/front.6.400.jpg', 'eau minérale', '120 ml', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Royale® Bonless Cooked Ham Water Added', 1, 1, 'https://static.openfoodfacts.org/images/products/006/760/090/1847/front_en.3.400.jpg', 'Canned Ham', '16 oz', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Nativity Advent Calendar', 3, 1, 'https://static.openfoodfacts.org/images/products/00679220/front.3.400.jpg', 'Calendrier de lAvent avec 24 formes en chocolat au lait', '80 g e', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Kraft Dinner Original', 3, 1, 'https://static.openfoodfacts.org/images/products/006/810/005/8611/front_en.6.400.jpg', 'Kraft Dinner Original', '225 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Kraft Dinner', 2, 1, 'https://static.openfoodfacts.org/images/products/006/810/005/9496/front_en.11.400.jpg', 'Pâtes au cheddar', '200 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Kraft Only Peanuts Smooth', 5, 1, 'https://static.openfoodfacts.org/images/products/006/810/008/4665/front_en.13.400.jpg', 'peanut butter', '750 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('PūrFiltre lait homogénéisé 3,25 % M.G.', 3, 1, 'https://static.openfoodfacts.org/images/products/006/820/001/0014/ingredients_en.27.400.jpg', 'Lait', '1 L', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pure Life', 2, 1, 'https://static.openfoodfacts.org/images/products/006/827/434/6613/front_en.5.400.jpg', 'Purified Water', '1 GAL (3.79 L)', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Soupe à loignon Lipton', 1, 1, 'https://static.openfoodfacts.org/images/products/006/840/009/1738/front.3.400.jpg', 'Mélange à soupe', '113 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Mayonnaise', 2, 1, 'https://static.openfoodfacts.org/images/products/006/840/066/2907/front_en.3.400.jpg', 'Mayonnaise', '1,42 litres', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Dark chocolate crunchy clusters berry medley flavors', 1, 1, 'https://static.openfoodfacts.org/images/products/006/843/791/1320/front_en.3.400.jpg', 'Dark chocolate with berry', '5 oz', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('St-Méthode Sans Gluten Free', 1, 1, 'https://static.openfoodfacts.org/images/products/006/850/510/0885/front.5.400.jpg', 'Pain sans gluten', '400 gr', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Tortillas', 1, 1, 'https://static.openfoodfacts.org/images/products/006/872/103/8115/front_en.4.400.jpg', 'Tortillas original', '610 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Tikka Masala Sauce', 1, 1, 'https://static.openfoodfacts.org/images/products/00687492/front.3.400.jpg', 'Sauce Tikka Masala', '350g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Tortellini aux fines herbes farcis au fromage', 1, 1, 'https://static.openfoodfacts.org/images/products/006/882/010/4001/front.5.400.jpg', 'Tortellini', '350 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Glen Brae Still Scottish Mountain Water ', 3, 1, 'https://static.openfoodfacts.org/images/products/00689243/front.7.400.jpg', 'Glen Brae still Scottish mountain water ', '1 L e', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pure Leaf Lemon', 3, 1, 'https://static.openfoodfacts.org/images/products/006/900/014/7870/front_en.3.400.jpg', 'Lemon Iced Tea', '547ml', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Toaster Strudel framboises', 3, 1, 'https://static.openfoodfacts.org/images/products/006/905/271/0268/ingredients_en.11.400.jpg', 'Pâtisseries à la framboise', '326 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Vermicelle de riz', 2, 1, 'https://static.openfoodfacts.org/images/products/006/911/223/2426/front.4.400.jpg', 'Vermicelle de riz', '454', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pickle à la Mangue', 2, 1, 'https://static.openfoodfacts.org/images/products/006/927/611/2053/front.3.400.jpg', 'Mango Pickle', '283 g e / 250 ml', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Hot Lime Pickle', 2, 1, 'https://static.openfoodfacts.org/images/products/006/927/611/2107/front.7.400.jpg', 'Pickle épicé au citron vert', '283 g (250ml)', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Mild Curry', 1, 1, 'https://static.openfoodfacts.org/images/products/006/927/613/2051/front.6.400.jpg', 'Pâte de curry indienne', '283 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Raisin sultana', 4, 1, 'https://static.openfoodfacts.org/images/products/006/946/790/8137/front.5.400.jpg', 'raisins sec sultana', '454g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Bouillon de poulet Loney’s', 2, 1, 'https://static.openfoodfacts.org/images/products/006/963/600/5001/front.3.400.jpg', 'Bouillon déshydraté de poulet', '400 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Map-O-Spread', 3, 1, 'https://static.openfoodfacts.org/images/products/006/984/804/1026/front.3.400.jpg', 'Beurre de sucre composé', '400 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('up&up Vitamin D3 4,000 IU', 2, 1, 'https://static.openfoodfacts.org/images/products/007/003/062/4569/front_en.5.400.jpg', 'Vitamin D3', '100 softgels', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('High Bake Water Biscuits', 5, 1, 'https://static.openfoodfacts.org/images/products/00701655/front_en.16.400.jpg', 'Crackers - High Bake Water Biscuits', '200 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Thé vert au Jasmin Twinings', 3, 1, 'https://static.openfoodfacts.org/images/products/007/017/701/1710/front.6.400.jpg', 'Thé vert en jasmin', '25 sachets', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('The Original Earl Grey', 4, 1, 'https://static.openfoodfacts.org/images/products/007/017/701/8634/front.6.400.jpg', 'Thé noir à la bergamotte', '200g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Thé Darjeeling', 4, 1, 'https://static.openfoodfacts.org/images/products/007/017/701/8689/front.3.400.jpg', 'Thé noir Darjeeling', '200 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Breakfast tea', 2, 1, 'https://static.openfoodfacts.org/images/products/007/017/701/8726/front.8.400.jpg', 'thé', '200 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Thé aromatisé à la bergamote', 3, 1, 'https://static.openfoodfacts.org/images/products/007/017/702/9623/front_en.8.400.jpg', 'Thé aromatisé à la bergamote', '100 g.', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Thé de CEYLAN', 4, 1, 'https://static.openfoodfacts.org/images/products/007/017/704/2127/front.9.400.jpg', 'thé', '20 sachets, 40 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Original Earl Grey', 3, 1, 'https://static.openfoodfacts.org/images/products/007/017/705/2706/front.5.400.jpg', 'Thé aromatisé bergamote', '25 sachets', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Green Tea & Mint', 2, 1, 'https://static.openfoodfacts.org/images/products/007/017/706/3597/front.7.400.jpg', 'Thé', '50 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Lady grey Goût russe', 4, 1, 'https://static.openfoodfacts.org/images/products/007/017/707/7198/front.3.400.jpg', 'Thé aromatisé bergamote et agrumes avec des écorces dagrumes', '20 sachets', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Gunpowder thé vert nature', 3, 1, 'https://static.openfoodfacts.org/images/products/007/017/711/1342/front.11.400.jpg', 'Thé vert dOrient nature en feuilles entières roulées', '200 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Twinings Thé vert menthe', 3, 1, 'https://static.openfoodfacts.org/images/products/007/017/711/1359/front.12.400.jpg', 'Thé vert menthe vrac', '200g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Twinings Infusions Lemon & Ginger', 3, 1, 'https://static.openfoodfacts.org/images/products/007/017/711/8563/front.6.400.jpg', 'Aromatisierte Früchteteemischung', '37,5g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Russin Earl Grey', 2, 1, 'https://static.openfoodfacts.org/images/products/007/017/718/8726/front.6.400.jpg', 'thé aromatisé bergamote et citron', '30 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Création thé vert rose et menthe', 3, 1, 'https://static.openfoodfacts.org/images/products/007/017/721/3497/front.9.400.jpg', 'The vert aromatisé rose, menthe', '36 g soit 20 sachets', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Twinings orange & lotus flower green tea', 1, 1, 'https://static.openfoodfacts.org/images/products/007/017/724/8499/front_en.6.400.jpg', 'Green tea with orange & lotus flower', '40 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Twinings apple & pear green tea', 1, 1, 'https://static.openfoodfacts.org/images/products/007/017/724/8529/front_en.3.400.jpg', 'Green tea with apple and pear', '40 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Twinings fresh thé vert menthe', 2, 1, 'https://static.openfoodfacts.org/images/products/007/017/726/4888/front.19.400.jpg', 'Thé vert menthe', '40 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Rose garden', 1, 1, 'https://static.openfoodfacts.org/images/products/007/017/727/0810/front_en.3.400.jpg', 'Black tea blended with rose flavor and rose petals', '40 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Toblerone', 3, 1, 'https://static.openfoodfacts.org/images/products/007/022/101/1116/front_en.5.400.jpg', 'Swiss Milk Chocolate with Honey & Almond Nougat', '3.52 OZ (100 g)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Toblerone', 3, 1, 'https://static.openfoodfacts.org/images/products/007/022/103/5020/front_en.5.400.jpg', 'Swiss Milk Chocolate with Honey & Almond Nougat', '14.1 OZ (400g)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Smokey Cajun chicken Jambalaya', 5, 1, 'https://static.openfoodfacts.org/images/products/00702317/front_en.25.400.jpg', 'morceaux de poulet aux épices cajun cuits au grill, avec une sauce tomate et du riz aux oignons, aux poivrons et au jambon fumé effiloché', '400 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('H.K. Anderson Peanut Butter Filled Pretzel Nugets ', 4, 1, 'https://static.openfoodfacts.org/images/products/007/027/100/3635/front_en.3.400.jpg', 'Peanut Butter Filled Preztels ', '680 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Le Gruyère', 5, 1, 'https://static.openfoodfacts.org/images/products/007/027/209/0993/front_en.14.400.jpg', 'Gruyère Cheese', '227 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Sour Patch Kids', 2, 1, 'https://static.openfoodfacts.org/images/products/007/046/209/8358/front_en.5.400.jpg', 'Soft & Chewy Candy', '3.5 OZ (99 g)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Swedish Fish', 4, 1, 'https://static.openfoodfacts.org/images/products/007/046/243/1230/front_en.5.400.jpg', 'Soft & Chewy Candy', '3.1 OZ (88 g)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Peanut Butter Puffins', 3, 1, 'https://static.openfoodfacts.org/images/products/007/061/700/4623/front_en.3.400.jpg', 'Cereal', '312 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Cup Noodles Chicken Flavor', 3, 1, 'https://static.openfoodfacts.org/images/products/007/066/203/0332/front_en.6.400.jpg', 'Ramen Noodle Soup', '3x 2.25 oz', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Organic Heavy Whipping Cream', 1, 1, 'https://static.openfoodfacts.org/images/products/007/085/200/0282/front_en.3.400.jpg', 'whipped cream ', '32', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Reduced 2% fat milk', 2, 1, 'https://static.openfoodfacts.org/images/products/007/085/219/3007/front_en.6.400.jpg', 'Grade A Pasteurized homogenized reduced fat milk', '946 ml', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Swiss miss classics marshmallow hot cocoa mix with marshmallows', 5, 1, 'https://static.openfoodfacts.org/images/products/007/092/047/4366/front_en.6.400.jpg', 'Hot cocoa mix', '21.9oz', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('The Original Ranch', 4, 1, 'https://static.openfoodfacts.org/images/products/007/110/000/6681/front_en.12.400.jpg', 'Ranch Dressing', '1.06 l', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Sesame Cracker', 5, 1, 'https://static.openfoodfacts.org/images/products/007/110/500/0011/front_en.3.400.jpg', 'Sesame Cracker', '4.15 oz.', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('RAPA Scrapple Our Original', 2, 1, 'https://static.openfoodfacts.org/images/products/007/117/408/2093/front_en.3.400.jpg', 'Scrapple', '32 oz, 2 lbs', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Smoked Salmon and Broccoli Quiche', 1, 1, 'https://static.openfoodfacts.org/images/products/00712637/front_en.33.400.jpg', 'Smoked Salmon and Broccoli Quiche', '400 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Ziti', 2, 1, 'https://static.openfoodfacts.org/images/products/007/130/000/0021/front_en.3.400.jpg', 'ENRICHED MACARONI PRODUCT', '16 OZ (454g)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Torrone', 3, 1, 'https://static.openfoodfacts.org/images/products/007/140/300/0232/front_en.7.400.jpg', 'Chocolate covered nougat candy', '6.35oz, 180g (15 pieces)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Daily Greens', 1, 1, 'https://static.openfoodfacts.org/images/products/007/146/401/6630/front_en.15.400.jpg', '100% Fruit & Vegetable Juice', '450 ml (15.2 fl. oz.)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Bean Boozled', 3, 1, 'https://static.openfoodfacts.org/images/products/007/156/798/8612/front.3.400.jpg', 'Bean Boozled', '45 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Mendota Sparkling', 3, 1, 'https://static.openfoodfacts.org/images/products/007/170/800/3396/front_en.6.400.jpg', 'Lemon sparkling water', '20 fl. oz (591 mL)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Dots', 3, 1, 'https://static.openfoodfacts.org/images/products/007/172/085/0008/front_en.7.400.jpg', 'Assorted Fruit Flavored Gumdrops', '7.5 OZ (212 g)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('5 Cheese Original Pizza', 2, 1, 'https://static.openfoodfacts.org/images/products/007/192/137/7601/front_en.6.400.jpg', 'Cheese Pizza', '19.8 oz.', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Chocolate Lowfat Milk', 2, 1, 'https://static.openfoodfacts.org/images/products/007/196/210/0350/front_en.6.400.jpg', 'Chocolate Milk', '64 FL. OZ. ( 1/2 GAL.) 1.89 L', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('French Bread', 3, 1, 'https://static.openfoodfacts.org/images/products/007/218/063/2456/front_en.9.400.jpg', 'Cheese & Garlic Pizzas', '8.80 OZ. (250g)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Tabouleh Wheat Salad Mix', 2, 1, 'https://static.openfoodfacts.org/images/products/007/225/100/0603/front_en.6.400.jpg', 'Tabouleh', '5.25 oz.', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Old English Hunt Orange Marmalade', 5, 1, 'https://static.openfoodfacts.org/images/products/007/225/222/7870/front.10.400.jpg', 'marmelade dorange', '340 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Full on flavour - Four cheese & red onion', 3, 1, 'https://static.openfoodfacts.org/images/products/00722728/front_en.9.400.jpg', 'Chips de pommes de terre aux quatre fromages et à loignon rouge', '150 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Choc chip cookies - twin pack', 1, 1, 'https://static.openfoodfacts.org/images/products/007/241/714/0693/front_en.9.400.jpg', 'Chocolate chip cookies', '460 g (2 x 230 g)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Luxury Cookies Nougatine', 4, 1, 'https://static.openfoodfacts.org/images/products/007/241/714/5889/front.11.400.jpg', 'Cookies dorés aux généreuses pépites de chocolat et nougatine', '200 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Zanimo', 4, 1, 'https://static.openfoodfacts.org/images/products/007/241/714/6831/front.7.400.jpg', 'Biscuits sablés nappés de chocolat au lait Cadbury', '200 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Daily FishnChips Salt & Vinegar', 1, 1, 'https://static.openfoodfacts.org/images/products/007/241/715/0616/front_en.3.400.jpg', 'Salt & Vinegar Flavour Mini Baked Snack Biscuits', '125 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Fingers lOriginal', 2, 1, 'https://static.openfoodfacts.org/images/products/007/241/715/2924/front.8.400.jpg', 'Biscuits craquants enrobés de chocolat au lait Cadbury - Fingers lOriginal', '138 g e', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Cadbury Fingers Milk Chocolate Biscuits', 1, 1, 'https://static.openfoodfacts.org/images/products/007/241/715/3051/front_en.14.400.jpg', 'Milk Chocolate Biscuits', '114g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Finger blanc', 4, 1, 'https://static.openfoodfacts.org/images/products/007/241/715/3181/front.6.400.jpg', 'Biscuits craquants enrobés de chocolat blanc', '114 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Cookies Milk & Hazelnut Chunk Sensations', 2, 1, 'https://static.openfoodfacts.org/images/products/007/241/715/6069/front.12.400.jpg', 'Cookies', '200 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('merci', 5, 1, 'https://static.openfoodfacts.org/images/products/007/279/903/5570/front_en.5.400.jpg', 'finest assortment of european chocolates', '7 OZ (200g)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Haricots blancs', 1, 1, 'https://static.openfoodfacts.org/images/products/007/280/700/0057/front.3.400.jpg', 'Haricots blancs secs', '500 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Dumpling sauce Hot', 2, 1, 'https://static.openfoodfacts.org/images/products/007/286/924/1108/front_en.6.400.jpg', 'Dipping sauce for dumplings, cooked chicken & meat', '6.5 fl oz', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Swiss knight ', 4, 1, 'https://static.openfoodfacts.org/images/products/007/301/502/0127/front.3.400.jpg', 'Fromage fondu  tartiner avec gruyèere', '170 g / 12 portions de 14.17 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Organic Green Tea with Jasmine', 1, 1, 'https://static.openfoodfacts.org/images/products/00730716/front.6.400.jpg', 'Infusion', '50 g e', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Calming Teabags', 5, 1, 'https://static.openfoodfacts.org/images/products/00730723/front.6.400.jpg', 'Infusion', '30 g e', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pocky Almond Crush', 4, 1, 'https://static.openfoodfacts.org/images/products/007/314/115/2310/front_en.10.400.jpg', 'Chocolate covered biscuit sticks', '1.37 oz (39 g)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pocky Strawberry', 3, 1, 'https://static.openfoodfacts.org/images/products/007/314/115/2327/front_en.6.400.jpg', 'Strawberry Cream Covered Biscuit Sticks', '1.79 oz (51 g)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pocky', 5, 1, 'https://static.openfoodfacts.org/images/products/007/314/115/2334/front_en.11.400.jpg', 'Chocolate cream covered biscuit sticks', '2.46 oz (70 g)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Kokuho Rose', 4, 1, 'https://static.openfoodfacts.org/images/products/007/323/402/0083/front_en.4.400.jpg', 'Rice', '5 lbs', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Whole Grains 100% WHOLE WHEAT BREAD', 2, 1, 'https://static.openfoodfacts.org/images/products/007/341/002/5369/front_en.3.400.jpg', 'Whole Wheat Bread', '2 lbs', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Sprouted Grain English Muffins', 3, 1, 'https://static.openfoodfacts.org/images/products/007/347/200/1196/front_en.3.400.jpg', 'English Muffins', '12 servings', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Ezekiel 4:9 Cinnamon Raisin', 4, 1, 'https://static.openfoodfacts.org/images/products/007/347/201/1317/front_en.3.400.jpg', 'Whole wheat bread with raisins', '680 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Crème Caramel Flan', 3, 1, 'https://static.openfoodfacts.org/images/products/007/349/102/4015/front_en.14.400.jpg', 'Caramel Flan ', '226 g (2 * 113 g)', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Empress grey teabags', 5, 1, 'https://static.openfoodfacts.org/images/products/00735346/front.3.400.jpg', 'thé Earl Grey en sachet', '125 g (50 sachets)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Redbush Teabags', 1, 1, 'https://static.openfoodfacts.org/images/products/00735469/front.6.400.jpg', 'Thé roiboos sans théine en sachet', '100 g e', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Roast potato seasoning', 5, 1, 'https://static.openfoodfacts.org/images/products/00737531/front_en.5.400.jpg', 'A blend of sea salt, black pepper and onion', '50 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Lait de coco Ayam™', 4, 1, 'https://static.openfoodfacts.org/images/products/007/375/560/3888/ingredients.10.400.jpg', 'Lait de coco 100% naturel', '400 ml', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Horseradish sauce', 3, 1, 'https://static.openfoodfacts.org/images/products/00738057/front.3.400.jpg', 'Sauce au raifort', '160 g e', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Margaux', 1, 1, 'https://static.openfoodfacts.org/images/products/00738316/front.3.400.jpg', 'Château Notton Margaux', '75 cl', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Coco Rico', 5, 1, 'https://static.openfoodfacts.org/images/products/007/409/091/6459/front_en.7.400.jpg', 'Natural coconut flavored soda', '335 ml', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Digestives', 5, 1, 'https://static.openfoodfacts.org/images/products/00741095/front_en.16.400.jpg', 'Biscuits complets anglais - Digestives', '400 g e', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Ginger snaps', 4, 1, 'https://static.openfoodfacts.org/images/products/00741538/front.7.400.jpg', 'biscuits au gingembre', '250 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Diet Sparkling Cloudy Lemonade', 1, 1, 'https://static.openfoodfacts.org/images/products/00741590/front_en.7.400.jpg', 'carbonated lemon flavoured soft drink with sweetener', '500ml', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Stater BROS', 1, 1, 'https://static.openfoodfacts.org/images/products/007/417/526/4024/front_en.11.400.jpg', 'Dressing', '16 FL OZ (473 mL)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Quinoa Rice & Shine Hot Cereal', 1, 1, 'https://static.openfoodfacts.org/images/products/007/433/337/4305/front_en.4.400.jpg', 'Quinoa Rice & Shine Hot Cereal', '397 g / 14 Oz', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Maruchans Curry Yaki-Soba', 2, 1, 'https://static.openfoodfacts.org/images/products/007/441/045/9567/front_en.4.400.jpg', 'Curry Yakisoba', '483 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Japanese Green Tea', 3, 1, 'https://static.openfoodfacts.org/images/products/007/441/074/1860/front.9.400.jpg', 'Boisson au thé vert', '300 ml, 10.1 fl oz', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Cream Crackers', 2, 1, 'https://static.openfoodfacts.org/images/products/007/444/802/2610/front.8.400.jpg', 'Crackers', '200 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Custard creams', 4, 1, 'https://static.openfoodfacts.org/images/products/00744485/front.8.400.jpg', 'Biscuits avec un fourrage saveur vanille', '400 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Vanilla milk chocolate almond', 1, 1, 'https://static.openfoodfacts.org/images/products/007/457/003/6004/front_en.5.400.jpg', 'Vanilla ice cream dipped in rich milk chocolate and almonds', '3 fl. oz. (88 mL)', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Chapelure japonaise', 1, 1, 'https://static.openfoodfacts.org/images/products/007/460/101/1406/front.7.400.jpg', 'Panko', '360g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('CTC Ramune 200ML Strawberry Flavor', 2, 1, 'https://static.openfoodfacts.org/images/products/007/460/117/6075/front_en.14.400.jpg', 'Limonade japonaise ramune goût fraise', '200 ml', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Sogokimyun', 4, 1, 'https://static.openfoodfacts.org/images/products/007/460/300/5892/front_en.6.400.jpg', 'Ramen noodle soup, hot beef flavor', '120 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('All natural Yellow Mustard', 4, 1, 'https://static.openfoodfacts.org/images/products/007/468/000/1145/front.6.400.jpg', 'Moutarde', '9 oz (255 g)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Perrier lime', 4, 1, 'https://static.openfoodfacts.org/images/products/007/478/033/3528/front_en.6.400.jpg', 'Sparkling Natural Mineral Water with Natural Lime Flavor and Other Natural Flavors', '250 mL (8.45 FL OZ)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('eau gazeuse perrier', 3, 1, 'https://static.openfoodfacts.org/images/products/007/478/035/5612/front.5.400.jpg', 'eau gazeuse', '1l', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Reduced fat milk', 2, 1, 'https://static.openfoodfacts.org/images/products/007/486/575/6648/front_en.6.400.jpg', 'Reduced fat milk (Grade A) (Pasteurized) (Homogenized)', '1/2 pint (236 mL)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Ham & Mushroom Tagliatelle', 3, 1, 'https://static.openfoodfacts.org/images/products/00749145/front.3.400.jpg', 'Pâtes aux œufs de poules élevées en plein air dans une sauce onctueuse avec du jambon effiloché fumé au bois de hêtre et des champignons marinés rôtis', '400 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Almond, Hazelnut & Pistachio Milk Chocolate Buttons', 3, 1, 'https://static.openfoodfacts.org/images/products/00750974/front_en.5.400.jpg', 'Bonbons de chocolat au lait, amande, noisette et pistache. - Almond, Hazelnut & Pistachio Milk Chocolate Buttons', '30 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Original whole milk yoghurt', 4, 1, 'https://static.openfoodfacts.org/images/products/007/527/000/1606/front_en.6.400.jpg', 'Plain Yogurt', '32 oz', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Texas Pete Hot Sauce', 3, 1, 'https://static.openfoodfacts.org/images/products/007/550/000/0027/front_en.9.400.jpg', 'Hot Sauce', '12 oz', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Mineral water', 1, 1, 'https://static.openfoodfacts.org/images/products/007/572/048/1279/front_en.5.400.jpg', 'Mineral water', '500 ml', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Demerara Sugar, Pure Cane', 3, 1, 'https://static.openfoodfacts.org/images/products/007/577/992/0002/front_en.3.400.jpg', 'Brown SUGAR,', '1.247 kg', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Butter Lovers', 4, 1, 'https://static.openfoodfacts.org/images/products/007/615/023/2301/front_en.5.400.jpg', 'MICROWAVE POPCORN', '12 bags * 78 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Snapple Lemon Tea', 4, 1, 'https://static.openfoodfacts.org/images/products/007/618/316/3740/front_en.4.400.jpg', 'iced tea', '16 fl oz', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Diet Snapple Peach Tea', 4, 1, 'https://static.openfoodfacts.org/images/products/007/618/320/2074/front_en.7.400.jpg', 'Diet Iced Tea', '20 fl oz', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('NOODLES ORIGINAL', 2, 1, 'https://static.openfoodfacts.org/images/products/007/618/600/0011/front_en.6.400.jpg', 'PASTA PARA SOPA DE FIDEOS INSTANTANEOS', '100 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Japanese style noodles & chicken flavored soup', 4, 1, 'https://static.openfoodfacts.org/images/products/007/618/600/0028/front_en.4.400.jpg', 'Ramen Noodles Chicken flavor', '100 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Toblerone', 3, 1, 'https://static.openfoodfacts.org/images/products/007/622/300/0264/ingredients_en.3.400.jpg', 'Toblerone', '35g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Quadratini Hazelnut', 4, 1, 'https://static.openfoodfacts.org/images/products/007/658/000/4912/front_en.13.400.jpg', 'Hazelnut cream filled wafer cookies', '8.82 oz', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Chocolate Chip', 3, 1, 'https://static.openfoodfacts.org/images/products/007/667/710/0145/front_en.8.400.jpg', 'Bite Size Cookies', '56 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Noix de cajou grillées au miel', 5, 1, 'https://static.openfoodfacts.org/images/products/00767934/front.7.400.jpg', 'Noix de cajou grillées au miel', '320 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('White Fiber Spaghetti ', 5, 1, 'https://static.openfoodfacts.org/images/products/007/680/800/3055/front_en.9.400.jpg', 'Enriched Pasta with Fiber', '12oz (340g)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Gluten free Fettuccine ', 1, 1, 'https://static.openfoodfacts.org/images/products/007/680/800/6254/front_en.7.400.jpg', 'Gluten free pasta', '12 oz', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Penne', 3, 1, 'https://static.openfoodfacts.org/images/products/007/680/828/0739/front_en.7.400.jpg', 'Pasta', '1 LB (454 g)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Ziti', 4, 1, 'https://static.openfoodfacts.org/images/products/007/680/828/0746/front_en.6.400.jpg', 'Pasta', '1 LB', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('ROTINI', 4, 1, 'https://static.openfoodfacts.org/images/products/007/680/828/0982/front_en.8.400.jpg', 'Pasta', '1 LB (454 g)', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Farfalle', 1, 1, 'https://static.openfoodfacts.org/images/products/007/680/850/1087/front_en.8.400.jpg', 'Pasta', '1 LB', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Large Shells', 5, 1, 'https://static.openfoodfacts.org/images/products/007/680/850/1124/front_en.5.400.jpg', 'Pasta', '1 LB (454 g)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('RIGATONI', 2, 1, 'https://static.openfoodfacts.org/images/products/007/680/850/2947/front_en.3.400.jpg', 'ENRICHED MACARONI PRODUCT', '1 LB (454 g)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Gemelli', 4, 1, 'https://static.openfoodfacts.org/images/products/007/680/850/6433/front_en.13.400.jpg', 'enriched macaroni product', '1 LB (454 g)', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Protein Plus Spaghetti ', 1, 1, 'https://static.openfoodfacts.org/images/products/007/680/853/3576/front_en.9.400.jpg', 'Multigrain Pasta', '14.5 oz (411g)', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Ben & Jerrys Phish Food Froyo', 5, 1, 'https://static.openfoodfacts.org/images/products/007/684/010/1429/front_en.3.400.jpg', 'Phish Food Froyo', '473 mg', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Glace', 3, 1, 'https://static.openfoodfacts.org/images/products/007/684/060/0021/front_en.25.400.jpg', 'Vanilla Ice Cream with Chunks of Chocolate Chip Cookie Dough', '425 g, 500 ml', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Chocolate Fudge Brownie Ice Cream', 1, 1, 'https://static.openfoodfacts.org/images/products/007/684/060/0038/front.4.400.jpg', 'Glace au chocolat avec des morceaux de gâteau fondant au cacao maigre (13%)', '415 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('New York Super Fudge Chunk Ice Cream', 2, 1, 'https://static.openfoodfacts.org/images/products/007/684/060/0113/front.10.400.jpg', 'Chocolate Ice Cream with White & Dark Fudge Chunks, Pecans, Walnuts & Fudge-Covered Almonds', '500 ml e / 438 g e', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Roasted Salted Peanuts', 4, 1, 'https://static.openfoodfacts.org/images/products/007/703/400/9880/front_en.12.400.jpg', 'peanuts', '2.0oz (57g)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Sauce de Sésame', 2, 1, 'https://static.openfoodfacts.org/images/products/007/710/101/4359/front.6.400.jpg', 'Sauce de sésame', '250 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Bit O Honey', 5, 1, 'https://static.openfoodfacts.org/images/products/007/729/077/2009/front_en.5.400.jpg', 'Real honey and almond bits blended into delicious taffy', '4 OZ (113.4 g)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Beatrix Potter Butter Cookies', 3, 1, 'https://static.openfoodfacts.org/images/products/007/733/033/7335/front_en.3.400.jpg', 'Cookies ', '908g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Chocolate Chip Cookies', 1, 1, 'https://static.openfoodfacts.org/images/products/007/733/056/6223/front.8.400.jpg', 'Biscuits aux pépites de chocolat', '125 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Ham, Mushroom & Mascarpone - Pasta Melt', 2, 1, 'https://static.openfoodfacts.org/images/products/00774642/front.7.400.jpg', 'Italian pasta with a tomato sauce topped with layers of ham, roasted chestnut, mushrooms, mature Cheddar cheese, mozzarella and creamy mascarpone', '1 kg e', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Nouilles instantanées saveur crevettes Yeos', 4, 1, 'https://static.openfoodfacts.org/images/products/007/752/193/1090/front.6.400.jpg', 'Préparation alimentaire à base de blé tendre saveur crevette', '85 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pure huile de sésame', 2, 1, 'https://static.openfoodfacts.org/images/products/007/752/194/1013/front_en.25.400.jpg', 'huile de sésame', '150 ml', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Tapatio Salsa Picante', 5, 1, 'https://static.openfoodfacts.org/images/products/007/788/571/0614/front_en.7.400.jpg', 'Hot sauce', '5 fl. oz (148 mL)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Salsa Picante, Hot Sauce', 3, 1, 'https://static.openfoodfacts.org/images/products/007/788/588/2007/front_en.16.400.jpg', 'Hot sauce', '10 fl. oz (296 mL)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Frosted Bite-Size Blueberry Shredded Wheat', 4, 1, 'https://static.openfoodfacts.org/images/products/007/789/039/6346/front_en.3.400.jpg', 'frosted shredded wheat', '439 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Chocolate Low Fat Milk', 3, 1, 'https://static.openfoodfacts.org/images/products/007/789/042/6081/front_en.5.400.jpg', 'Chocolate Milk', '1 GAL (3.78 L)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Fudge Brownie Mix', 1, 1, 'https://static.openfoodfacts.org/images/products/007/789/049/7005/front_en.7.400.jpg', 'brownie mix', '19.8 OZ (1 LB 3.8 OZ) 561 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Camembert', 4, 1, 'https://static.openfoodfacts.org/images/products/007/790/100/4024/front_en.6.400.jpg', 'Soft Ripened Cheese', '8 oz (226 g)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Thins', 4, 1, 'https://static.openfoodfacts.org/images/products/007/797/502/2153/front_en.11.400.jpg', 'Pretzels', '1.5 oz', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Snyders of Hanover Mini Pretzels', 1, 1, 'https://static.openfoodfacts.org/images/products/007/797/508/0061/front_en.3.400.jpg', 'Mini pretzels', '16oz', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Mini Pretzels', 4, 1, 'https://static.openfoodfacts.org/images/products/007/797/508/2102/front_en.4.400.jpg', 'Pretzels', '26 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Crush orange', 2, 1, 'https://static.openfoodfacts.org/images/products/007/800/001/3283/front_en.16.400.jpg', 'Orange Soda', '1', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Sun Drop', 5, 1, 'https://static.openfoodfacts.org/images/products/007/800/023/0468/front_en.9.400.jpg', 'Citrus Soda', '2 L', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Spaghetti', 4, 1, 'https://static.openfoodfacts.org/images/products/00780117/front_en.6.400.jpg', 'Organic Pasta Imported From Italy', '16 OZ (1 LB) 454 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Daily Chef Cappuccino Beverage Mix Coffee, French Vanilla', 3, 1, 'https://static.openfoodfacts.org/images/products/007/874/200/7397/front_en.8.400.jpg', 'French vanilla cappuccino', '1.36 kg', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Diet Dr. Thunder', 3, 1, 'https://static.openfoodfacts.org/images/products/007/874/201/8201/front_en.5.400.jpg', 'calorie free soda', '24 pack', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Flavored Chocolate Chip Cookies - Soft Baked', 2, 1, 'https://static.openfoodfacts.org/images/products/007/874/203/8520/front_en.3.400.jpg', 'Chocolate chip cookies', '8.9 oz (252g)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Blue Sharks', 3, 1, 'https://static.openfoodfacts.org/images/products/007/874/205/0805/front_en.3.400.jpg', 'Gummy sharks', '5.5 OZ (156g)', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Deli Style Sliced Low-Moisture Part-Skim Mozzarella Cheese', 2, 1, 'https://static.openfoodfacts.org/images/products/007/874/206/5915/front_en.8.400.jpg', 'Queso mozzarella en rebanadas', '227 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Deli Style Sliced Mild Cheddar Cheese', 1, 1, 'https://static.openfoodfacts.org/images/products/007/874/208/5296/front_en.8.400.jpg', 'queso suave cheddar en rebanadas', '227 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Parmesan Cheese', 1, 1, 'https://static.openfoodfacts.org/images/products/007/874/228/3357/front_en.3.400.jpg', 'Queso parmesano', '170 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Creamy Peanut Butter', 5, 1, 'https://static.openfoodfacts.org/images/products/007/874/236/9990/front_en.3.400.jpg', 'Peanut butter', '18oz', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Peanut butter', 5, 1, 'https://static.openfoodfacts.org/images/products/007/874/237/0019/front_en.4.400.jpg', 'Creamy Peanut Butter', '28 oz', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Plum sauce', 4, 1, 'https://static.openfoodfacts.org/images/products/007/889/512/3005/front.6.400.jpg', 'Sauce aux prunes', '397 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Lee Kum Kee Double Deluxe Soy Sauce', 3, 1, 'https://static.openfoodfacts.org/images/products/007/889/513/2908/front_en.8.400.jpg', 'Soy sauce', '500 ml', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Lee Kum Kee Premium Gold Soy Sauce', 3, 1, 'https://static.openfoodfacts.org/images/products/007/889/514/3478/front_en.3.400.jpg', 'Lee Kum Kee Premium Gold Soy Sauce', '500ml', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Oyster Sauce', 3, 1, 'https://static.openfoodfacts.org/images/products/007/889/514/7100/front.6.400.jpg', 'Sauce dhuîtres', '510 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Panda Brand Oyster Sauce', 1, 1, 'https://static.openfoodfacts.org/images/products/007/889/530/0017/front.7.400.jpg', 'Sauce dhuitre', '255 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Panda Brand sauce saveur huître', 1, 1, 'https://static.openfoodfacts.org/images/products/007/889/530/0024/front.9.400.jpg', 'Sauce dhuître', '510 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('蒜蓉', 3, 1, 'https://static.openfoodfacts.org/images/products/007/889/540/5552/front.4.400.jpg', '蒜蓉', '213 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pure huile de sésame', 4, 1, 'https://static.openfoodfacts.org/images/products/007/889/571/0922/front.3.400.jpg', 'huile de sésame ', '207ml', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Extremely Chocolatey Millionaires Caramel Crispy Mini Bites', 3, 1, 'https://static.openfoodfacts.org/images/products/00789400/front_en.3.400.jpg', 'Chocolate coated', '270 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Runts', 3, 1, 'https://static.openfoodfacts.org/images/products/007/920/047/2146/front_en.12.400.jpg', 'Throwback Fruit-Shaped Candy', '141,7 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Original Spree', 1, 1, 'https://static.openfoodfacts.org/images/products/007/920/098/3710/front_en.5.400.jpg', 'Candy Dulce', '5 OZ (141.7 g)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Gourmet Nacho', 4, 1, 'https://static.openfoodfacts.org/images/products/007/942/621/1109/front_en.7.400.jpg', 'Cheddar cheese sauce', '15 oz / 425 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Seedless Red Grapes', 4, 1, 'https://static.openfoodfacts.org/images/products/00807029/front_en.3.400.jpg', 'Red Grapes', '500g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Straw Mushrooms Medium Peeled', 4, 1, 'https://static.openfoodfacts.org/images/products/008/073/610/3961/front_en.8.400.jpg', 'Straw Mushrooms Medium Peeled', '425 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Black Pepper Sauce', 4, 1, 'https://static.openfoodfacts.org/images/products/008/073/611/8699/front_en.6.400.jpg', 'Black Pepper Sauce', '220 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Bogle cabernet sauvignon', 4, 1, 'https://static.openfoodfacts.org/images/products/008/088/749/3966/front_en.6.400.jpg', 'Cabernet sauvignon', '750 ml', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Portuguese Sardines in tomato sauce', 4, 1, 'https://static.openfoodfacts.org/images/products/00809238/front_en.8.400.jpg', 'Sardines', '120 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Baked Beans in a rich tomato sauce', 1, 1, 'https://static.openfoodfacts.org/images/products/00809382/front_en.7.400.jpg', 'Baked Beans with tomato sauce', '410 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Chicken Korma', 4, 1, 'https://static.openfoodfacts.org/images/products/00809603/front.15.400.jpg', 'Poulet Korma', '400g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Chicken Tikka Masala', 3, 1, 'https://static.openfoodfacts.org/images/products/00809658/front.9.400.jpg', 'Morceaux de filet de poulet dans une sauce aromatique avec de la crème légère, du lait fermenté et des oignons', '400 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Chicken Laksa', 4, 1, 'https://static.openfoodfacts.org/images/products/00809733/front.7.400.jpg', 'Poulet Laksa', '400 g e', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Hot Beef Curry', 4, 1, 'https://static.openfoodfacts.org/images/products/00809894/front.13.400.jpg', 'Morceaux de boeuf dans une sauce curry épicée et piquante', '400 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('JFJ California Champagne Extra Dry', 1, 1, 'https://static.openfoodfacts.org/images/products/008/105/426/4204/front_en.7.400.jpg', 'California Champagne', '750 mL', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Plain Goat Milk Yogurt', 3, 1, 'https://static.openfoodfacts.org/images/products/008/131/210/1784/front_en.3.400.jpg', 'Yogurt', '', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Vegetable Selection with Mint Butter', 2, 1, 'https://static.openfoodfacts.org/images/products/00813747/ingredients_en.7.400.jpg', 'Assortiment de légumes au beurre et la menthe - Vegetable Selection with Mint Butter', '300 g e', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Hawaii water', 2, 1, 'https://static.openfoodfacts.org/images/products/008/153/381/8188/front_en.12.400.jpg', 'Ultra-pure Hawaii water', '', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Cream of Chicken Soup', 2, 1, 'https://static.openfoodfacts.org/images/products/00816236/front.4.400.jpg', 'Cream of Chicken Soup', '400 g e', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Chunky Lentils & Bacon Soup', 5, 1, 'https://static.openfoodfacts.org/images/products/00816311/ingredients_en.12.400.jpg', 'Chunky Lentils & Bacon Soup', '400 g e', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Zaru Soba', 3, 1, 'https://static.openfoodfacts.org/images/products/008/165/208/3023/front_en.7.400.jpg', 'Soba', '1.81kg', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Couscous Tipiak', 2, 1, 'https://static.openfoodfacts.org/images/products/008/189/300/3002/front.3.400.jpg', 'Semoule de blé dur', '1 kg', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Quinoa Gourmand', 3, 1, 'https://static.openfoodfacts.org/images/products/008/189/301/0239/front.3.400.jpg', 'Quinoa & Boulgour', '350 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Fruit and Fibre Muesli', 4, 1, 'https://static.openfoodfacts.org/images/products/00819039/front.3.400.jpg', 'A mix of dried fruit, seeds and nuts with a blend of wheat, oat and bran flakes', '700 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Berries, Cherries & Flakes ', 5, 1, 'https://static.openfoodfacts.org/images/products/00819077/front.3.400.jpg', 'Pétales de céréales aux fruits rouges', '375 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Miel de Manuka', 1, 1, 'https://static.openfoodfacts.org/images/products/00819237/front.4.400.jpg', 'Manuka Honey', '340 g e', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Traditional British Porridge Oats', 3, 1, 'https://static.openfoodfacts.org/images/products/00819367/front.3.400.jpg', 'Flocons davoine pour porridge', '500 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Raspberry Conserve', 3, 1, 'https://static.openfoodfacts.org/images/products/00819473/front.3.400.jpg', 'confiture de framboises', '340 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Roasted Garlic Mayo', 4, 1, 'https://static.openfoodfacts.org/images/products/00819596/front_en.7.400.jpg', 'Creamy mayonnaise with roasted garlic', '280 ml', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Ciobar Gusto Fondente', 4, 1, 'https://static.openfoodfacts.org/images/products/008/348/012/1519/front.10.400.jpg', 'Ciobar', '115 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Chunky Guacamole', 2, 1, 'https://static.openfoodfacts.org/images/products/00835848/front_en.8.400.jpg', 'sauce à Iavocat avec morceaux, avec du jus de citron vert, des oignons, de la coriandre, des piments et de l’ail', '170 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Young Corn', 5, 1, 'https://static.openfoodfacts.org/images/products/008/373/722/0729/front_en.9.400.jpg', 'Baby Corn', '5.5 oz (drained 2.75 oz)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Coconut Milk Rich Formula', 2, 1, 'https://static.openfoodfacts.org/images/products/008/373/725/0122/front_en.4.400.jpg', 'Coconut Milk', '400 mL', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Torpedo Extra IPA', 5, 1, 'https://static.openfoodfacts.org/images/products/008/378/300/0085/front_en.7.400.jpg', 'Beer', '350 ml', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Foreign Extra Stout', 1, 1, 'https://static.openfoodfacts.org/images/products/008/382/012/5559/front.3.400.jpg', 'Guinness Foreign Extra Stout', '330 ml e', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Sea Salt', 4, 1, 'https://static.openfoodfacts.org/images/products/008/411/403/3000/front_en.13.400.jpg', 'Potato Chips', '2 oz', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Kettle Brand Potato Chips - Sea Salt', 2, 1, 'https://static.openfoodfacts.org/images/products/008/411/411/2699/front_en.5.400.jpg', 'Potato Chips', '1.5 oz', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Kettle Brand Jalapeno Potato Chips', 1, 1, 'https://static.openfoodfacts.org/images/products/008/411/412/3572/front_en.5.400.jpg', 'Jalapeno flavor potato chips', '13 oz', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Chocolate Brownie Mini Bites', 1, 1, 'https://static.openfoodfacts.org/images/products/00842938/ingredients_en.13.400.jpg', 'Bouchées de brownie au chocolat noir - Chocolate Brownie Mini Bites', '235 g e', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Rocky Road Mini Bites', 2, 1, 'https://static.openfoodfacts.org/images/products/00842990/front_en.15.400.jpg', 'Mini bouchées de raisins (19%), guimauves (10%), cerises confites, riz croustillant, morceaux de biscuits et flocons davoine, enrobés de chocolat au lait (50%).', '225 g e', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Key West Lime Juice', 1, 1, 'https://static.openfoodfacts.org/images/products/008/474/400/1011/front_en.3.400.jpg', 'Lime Juice', '16 Fl. oz.', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('British Plum and Damson Soft Set Jam', 1, 1, 'https://static.openfoodfacts.org/images/products/00847988/front_en.12.400.jpg', 'Plum and damson extra jam', '295 g e', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Tamarin sin pipas', 1, 1, 'https://static.openfoodfacts.org/images/products/008/490/900/0507/front.12.400.jpg', 'frutas', '454g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Cock Chantaboon Rice Stick', 4, 1, 'https://static.openfoodfacts.org/images/products/008/490/900/0552/front.10.400.jpg', 'préparation alimentaire à base de riz', '375 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pâte de Curry jaune', 2, 1, 'https://static.openfoodfacts.org/images/products/008/490/900/2358/front.7.400.jpg', 'Pâte de Curry jaune', '400 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pâte de Curry vert', 2, 1, 'https://static.openfoodfacts.org/images/products/008/490/900/2365/front.7.400.jpg', 'Pâte de Curry vert', '400 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Tamarind candy hot', 2, 1, 'https://static.openfoodfacts.org/images/products/008/490/900/6332/front.4.400.jpg', 'Bonbon tamarin', '100 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pineapple Pieces', 1, 1, 'https://static.openfoodfacts.org/images/products/008/490/900/9944/front.7.400.jpg', 'morceaux dananas', '340g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pointes de bambou', 3, 1, 'https://static.openfoodfacts.org/images/products/008/490/901/4351/front.7.400.jpg', 'Pointes de bambou', '400 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Sauce sucrée et epicée pour rouleaux de printemps', 5, 1, 'https://static.openfoodfacts.org/images/products/008/490/901/5853/front_en.4.400.jpg', 'Sauce sucrée et epicée pour rouleaux de printemps', '275 ml', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Banan med smör', 5, 1, 'https://static.openfoodfacts.org/images/products/008/490/902/1915/front_en.6.400.jpg', 'Banan med smör', '195 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Sweet chilli sauce for chicken', 5, 1, 'https://static.openfoodfacts.org/images/products/008/490/902/3049/front.15.400.jpg', 'Sauce aux piments pour volailles', '650 ml', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Frozen Fresh Durian', 4, 1, 'https://static.openfoodfacts.org/images/products/008/490/910/3635/front.5.400.jpg', 'Fruit congelé', '454 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Sorbet au durian', 2, 1, 'https://static.openfoodfacts.org/images/products/008/490/910/5677/front.9.400.jpg', 'Sorbet au Durian', '400 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Bananes au Sirop', 3, 1, 'https://static.openfoodfacts.org/images/products/008/490/921/0029/front.5.400.jpg', 'Bananes au Sirop', '565 g / 230 g égoutté', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Feuilles de moutarde au vinaigre', 5, 1, 'https://static.openfoodfacts.org/images/products/008/490/921/0562/front.5.400.jpg', 'Feuilles de moutarde au vinaigre', '565 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Rice Stick', 2, 1, 'https://static.openfoodfacts.org/images/products/008/490/930/2267/front.6.400.jpg', 'Préparation alimentaire à base de riz', '375 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pâte pour « Padthai »', 3, 1, 'https://static.openfoodfacts.org/images/products/008/490/990/0562/front_en.3.400.jpg', 'Sauce', '227 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Sicilian Lemon Curd', 2, 1, 'https://static.openfoodfacts.org/images/products/00852067/front.7.400.jpg', 'Crème de citron de Sicile.', '325 g e', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Low Fat Black Cherry Yogurt', 1, 1, 'https://static.openfoodfacts.org/images/products/00852104/ingredients_en.15.400.jpg', 'Yaourt allégé en matière grasse à la cerise noire - Low Fat Black Cherry Yogurt', '150 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Archer farms roasted jumbo cashews', 4, 1, 'https://static.openfoodfacts.org/images/products/008/523/932/3083/front_en.3.400.jpg', 'Cashews', '850 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Oven-Ready Lasagna', 3, 1, 'https://static.openfoodfacts.org/images/products/008/523/938/2837/front_en.7.400.jpg', 'Enriched Macaroni Product', '12 OZ (340g)', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Crispy Flakes with Red Berries Cereal', 5, 1, 'https://static.openfoodfacts.org/images/products/008/523/999/8168/front_en.5.400.jpg', 'Rice & Wheat Flakes with Strawberries', '11.2 OZ (317g)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Blackcurrant conserve', 4, 1, 'https://static.openfoodfacts.org/images/products/00853040/front.9.400.jpg', 'confiture de cassis', '340 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Ruby red grapefruit marmalade', 2, 1, 'https://static.openfoodfacts.org/images/products/00853118/front.3.400.jpg', 'marmelade de pamplemousse rose', '340 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Vanilla Bean & Maple Syrup Smoothie', 5, 1, 'https://static.openfoodfacts.org/images/products/00854467/front_en.6.400.jpg', 'dary smoothie made from yogurt, apple juice, maple syrup and vanilla', '250ml', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Farmhouse Cider', 5, 1, 'https://static.openfoodfacts.org/images/products/00861144/front.7.400.jpg', 'Cidre du Devon', '500 ml e', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Authentic Greek Feta', 1, 1, 'https://static.openfoodfacts.org/images/products/00862325/front.8.400.jpg', 'Feta Cheese', '10.5 OZ (298g)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('2 thick cut pork chops', 3, 1, 'https://static.openfoodfacts.org/images/products/008/647/700/4260/front_en.3.400.jpg', 'Pork Chops', '388g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('British Natural Goats Cheese', 4, 1, 'https://static.openfoodfacts.org/images/products/00864909/front_en.9.400.jpg', 'Goats Cheese', '125g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Egg, Tomato & Salad Cream', 4, 1, 'https://static.openfoodfacts.org/images/products/00869256/front_en.8.400.jpg', 'free range egg and salad cream with vine ripened tomatoes on malted brown bread', '1 pack', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Chinese style noodles', 2, 1, 'https://static.openfoodfacts.org/images/products/008/730/385/7784/front_en.7.400.jpg', 'Noodles', '1.36kg', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('West Country Crème Fraîche', 1, 1, 'https://static.openfoodfacts.org/images/products/00875059/front_en.7.400.jpg', 'Crème Fraîche', '300ml', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('CapriSun Super V Fruit & Vegetable Juice Drink', 3, 1, 'https://static.openfoodfacts.org/images/products/008/768/400/4166/front_en.3.400.jpg', 'Fruit & Vegetable Juice', '1.77 L', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Rebel IPA', 5, 1, 'https://static.openfoodfacts.org/images/products/008/769/200/1263/front_en.10.400.jpg', 'Bière forte', '355 ml', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Poudre de Piment Rouge', 1, 1, 'https://static.openfoodfacts.org/images/products/008/770/300/0988/front.7.400.jpg', 'Red pepper powder', '453 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Mirin seasoning', 3, 1, 'https://static.openfoodfacts.org/images/products/008/770/316/8787/front_en.3.400.jpg', 'Vin de cuisine sucré', '900 ml', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('6 pack assorted crisps', 5, 1, 'https://static.openfoodfacts.org/images/products/00879415/front_en.11.400.jpg', 'Ready salted potato crisps, salt and vinegar flavour potato crisps, cheese and onion flavour potato crisps', '150 g, 6 packs of 25 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('croque vital', 2, 1, 'https://static.openfoodfacts.org/images/products/008/817/905/2006/front.3.400.jpg', 'mélange de graines pour salade', '150 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Vanilla Cream Top Yogurt', 3, 1, 'https://static.openfoodfacts.org/images/products/008/819/434/0027/front_en.10.400.jpg', 'Vanilla Yogurt', '6 oz', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Bonne Maman', 4, 1, 'https://static.openfoodfacts.org/images/products/008/870/201/6406/front.4.400.jpg', 'Confiture de framboises', '250 ml', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Chinese Style Sausage', 3, 1, 'https://static.openfoodfacts.org/images/products/008/877/516/9900/front_en.7.400.jpg', 'Lap Xuong Mai Quê Lô', '12 oz', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Moroccan style topped houmous', 3, 1, 'https://static.openfoodfacts.org/images/products/00888165/front.6.400.jpg', 'Préparation culinaire à base de pois chiches écrasés, au tahini (pâte de graines de sésame), au jus de citron et à lail recouverte de pois chiches entiers, doignons rouges et dépices', '170 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Chicken Tikka Mini Fillets', 4, 1, 'https://static.openfoodfacts.org/images/products/00888325/front.5.400.jpg', 'Filets de poulets cuit dans une marinade façon tikka', '120 g ', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Christmas Pudding', 3, 1, 'https://static.openfoodfacts.org/images/products/00888707/front.6.400.jpg', 'Dessert de Noël avec des raisins secs, du cidre britannique, du rhum et du xérès', '100 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('2 Steaks de Gigot dAgneau Britannique', 5, 1, 'https://static.openfoodfacts.org/images/products/008/954/080/7348/front.3.400.jpg', 'British lamb ', '272 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Thai Chicken Soup', 5, 1, 'https://static.openfoodfacts.org/images/products/00895651/front.8.400.jpg', 'Soupe au poulet à la Thaïalandaise avec du concentré de noix de coco, de la citronnelle et du citron vert', '600 g e', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pea & Ham Soup', 3, 1, 'https://static.openfoodfacts.org/images/products/00895736/front.9.400.jpg', 'Soupe aux pois et au jambon', '600 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Instant noodles migoreng satay flavour', 4, 1, 'https://static.openfoodfacts.org/images/products/008/968/614/0743/front_en.3.400.jpg', 'Mi Goreng Satay', '80 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Rendang', 2, 1, 'https://static.openfoodfacts.org/images/products/008/968/644/0430/front_en.4.400.jpg', 'Instant seasoning mix for beef in rich coconut & spices', '60 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Boeuf Aberdeen Angus, Chutney doignon rouge et moutarde', 5, 1, 'https://static.openfoodfacts.org/images/products/00897273/front_en.14.400.jpg', 'Boeuf Aberdeen Angus rôti saignant avec des tomates, du chutney doignon rouge, un mélange de feuilles de salade et une sauce à la moutarde sur du pain à langlaise', '268 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Curiously strong mint Gum', 3, 1, 'https://static.openfoodfacts.org/images/products/00901765/front_en.5.400.jpg', 'Mint flavoured sugar free chewing gum with sweeteners', '30g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Mandarine', 2, 1, 'https://static.openfoodfacts.org/images/products/009/047/841/0012/front.3.400.jpg', 'Boisson gazeuse aux arômes naturels', '370 ml', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Jarritos tamarind', 1, 1, 'https://static.openfoodfacts.org/images/products/009/047/841/0029/front.8.400.jpg', 'Natural Flavor Soda', '370ml', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Spiruline en paillettes de haute qualité nutritionnelle', 5, 1, 'https://static.openfoodfacts.org/images/products/009/103/756/1503/front.3.400.jpg', 'Spiruline en paillettes séchée à moins de 42°C', '90 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('2 Ultimate Burger Buns', 1, 1, 'https://static.openfoodfacts.org/images/products/00911801/front.3.400.jpg', '2 Petits Pains à lAnglaise dorés aux œufs et dorés à lœuf.', '145 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Prawn Cocktail', 4, 1, 'https://static.openfoodfacts.org/images/products/00922081/front.3.400.jpg', 'Cocktail de crevettes', '200 g e', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Original Red Raspberry', 3, 1, 'https://static.openfoodfacts.org/images/products/009/244/403/2631/front_en.8.400.jpg', 'Low fat yogurt', '4 oz (113 g)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Omega Trek Mix', 3, 1, 'https://static.openfoodfacts.org/images/products/00929523/front_en.3.400.jpg', 'Dried Cranberry & Roasted Nuts blend', '10 x 34 g (12 oz) 340 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('The Snowman & The Snowdog Milk Chocolate Advent Calendar', 5, 1, 'https://static.openfoodfacts.org/images/products/00933575/front_en.15.400.jpg', 'Advent calendar with 24 solid milk chocolate shapes', '100 g e', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Milk Chocolate Advent Calendar', 5, 1, 'https://static.openfoodfacts.org/images/products/00934558/front_en.8.400.jpg', '24 festive milk chocolate shapes', '100 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Wafers alla Nocciola', 1, 1, 'https://static.openfoodfacts.org/images/products/009/370/705/1017/front_en.7.400.jpg', 'Wafers with hazelnut cream filling', '6.17 oz', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Wafers alla Vaniglia', 5, 1, 'https://static.openfoodfacts.org/images/products/009/370/705/1024/front_en.8.400.jpg', 'Wafers with vanilla cream filling', '6.17 oz', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Dark Chocolate 72% Cocoa Solids', 4, 1, 'https://static.openfoodfacts.org/images/products/00938105/front_en.9.400.jpg', 'Dark Chocolate', '100 g e', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Intense Dark Chocolate 85% Cocoa Solids', 4, 1, 'https://static.openfoodfacts.org/images/products/00938112/front_en.5.400.jpg', 'Dark Chocolate', '100 g e', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Dark Chocolate with italian orange', 3, 1, 'https://static.openfoodfacts.org/images/products/00938143/front_en.5.400.jpg', 'Dark Chocolate with orange', '100g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Chestnut Mushroom Soup', 5, 1, 'https://static.openfoodfacts.org/images/products/00945653/front_en.10.400.jpg', 'Soupe', '600 g e', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Gâteries à lérable du Canada', 1, 1, 'https://static.openfoodfacts.org/images/products/009/492/287/6546/front.4.400.jpg', 'Gâteries à lérable du Canada', '3 produits, 155 g au total', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Sparkling Scottish Mountain Water', 2, 1, 'https://static.openfoodfacts.org/images/products/00949453/front.7.400.jpg', 'Glen Brae Carbonated Scottish mountain water', '500 ml e', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Le Bâtonnet Moelleux (10 Bâtonnets)', 5, 1, 'https://static.openfoodfacts.org/images/products/009/511/165/0107/front.8.400.jpg', 'Préparation à base de chair de poisson', '170 g ', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Organic Virgin Coconut Oil', 5, 1, 'https://static.openfoodfacts.org/images/products/00959070/front_en.12.400.jpg', 'organic virgin coconut oil', '300 ml e', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Homogenized Milk Vitamin D', 4, 1, 'https://static.openfoodfacts.org/images/products/009/661/900/0036/front_en.6.400.jpg', 'Vitamin D Milk', '1 gal', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Blueberries', 4, 1, 'https://static.openfoodfacts.org/images/products/009/661/936/7603/ingredients_en.11.400.jpg', 'Bleuets entiers, sechés, sucrés', '567g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Milk Chocolate Almonds', 4, 1, 'https://static.openfoodfacts.org/images/products/009/661/937/6056/front_en.3.400.jpg', 'Roasted almonds covered in milk chocolate', '1.36kg (3 LB)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Almonds - European Style Milk Chocolate Covered', 5, 1, 'https://static.openfoodfacts.org/images/products/009/661/948/8926/front_en.3.400.jpg', 'Chocolate covered almonds', '1.5 kg', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Cheese Pizza', 3, 1, 'https://static.openfoodfacts.org/images/products/009/661/950/5456/front_en.6.400.jpg', 'Frozen Pizza', '4 Pizzas - 67.8 OZ (4 LB 3.8 OZ) 1.92 KG', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('HK Anderson Valencia Peanut Butter Filled Pretzel Nuggets', 1, 1, 'https://static.openfoodfacts.org/images/products/009/661/965/6622/front_en.3.400.jpg', 'Peanut butter filled pretzels', '52oz', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Beurre darachide', 4, 1, 'https://static.openfoodfacts.org/images/products/009/661/989/6813/front.3.400.jpg', 'Peanut butter', '1 kg', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Sirop dÉrable', 1, 1, 'https://static.openfoodfacts.org/images/products/009/661/989/7001/front.6.400.jpg', 'Sirop dÉrable N°1 Médium', '1 L', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('kirkland fruit nut medley', 4, 1, 'https://static.openfoodfacts.org/images/products/009/661/999/3154/front_en.8.400.jpg', 'fruit nut trail mix', '1.58 kg', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Purified water ', 3, 1, 'https://static.openfoodfacts.org/images/products/009/661/999/8876/front_en.4.400.jpg', 'Water', '236mL', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Trader Joes Harissa', 3, 1, 'https://static.openfoodfacts.org/images/products/00968180/front.6.400.jpg', 'Harissa', '110 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Organic mini cheese sandwich crackers', 2, 1, 'https://static.openfoodfacts.org/images/products/00970662/front_en.11.400.jpg', 'cheese crackers', '215g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Coconut water', 4, 1, 'https://static.openfoodfacts.org/images/products/00974110/front.3.400.jpg', 'Eau de coco', '1l', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Coconut water with pineapple juice', 1, 1, 'https://static.openfoodfacts.org/images/products/00974127/front.3.400.jpg', 'eau de coco avec du jus dananas', '1l', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Nutella', 3, 1, 'https://static.openfoodfacts.org/images/products/00988639/front_en.5.400.jpg', 'Hazelnut spread with skim milk & cocoa', '0,52 oz (15 g)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Soft Prunes', 3, 1, 'https://static.openfoodfacts.org/images/products/00989060/ingredients_en.9.400.jpg', 'Partially rehydrated pitted prunes', '450 g e', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Chicken Saaq Masala', 3, 1, 'https://static.openfoodfacts.org/images/products/00989688/front.6.400.jpg', 'Un curry moyennement épicé avec des moreaux de blanc de poulet mariné et cuit au grill dans une sauce à la tomate et aux épinards', '400 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Crispy Katsu Chicken Curry with Fragrant Rice', 5, 1, 'https://static.openfoodfacts.org/images/products/00993555/front.3.400.jpg', 'Poulet pané cuit avec du riz au gingembre et à l‘ail et une sauce curry', '360 g e', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Moroccan mint infusion', 1, 1, 'https://static.openfoodfacts.org/images/products/00994675/front_en.3.400.jpg', 'Mint tea', '37.5 g (15 sachets)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Mango Madness ', 3, 1, 'https://static.openfoodfacts.org/images/products/009/948/240/3676/front_en.3.400.jpg', 'Snapple', '1', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('', 2, 1, 'https://static.openfoodfacts.org/images/products/009/948/241/7031/front_en.3.400.jpg', ' Organic Soymilk Unsweetened', 'soymilk', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Early Bird Multiseed Small batch bread', 4, 1, 'https://static.openfoodfacts.org/images/products/009/948/243/0948/front_en.8.400.jpg', 'bread', '795g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Kahuna Crunch Trail Mix', 3, 1, 'https://static.openfoodfacts.org/images/products/009/948/243/6315/ingredients_en.7.400.jpg', 'Mix of nuts and dried fruits', '16 oz / 448 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Cashew Butter with Peanuts & Sea Salt', 2, 1, 'https://static.openfoodfacts.org/images/products/00998109/front_en.3.400.jpg', 'Cashew butter', '227 g e', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Red Seedless Grapes', 2, 1, 'https://static.openfoodfacts.org/images/products/01041859/front_en.3.400.jpg', 'Red Seedless Grapes', '500g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('babycorn', 2, 1, 'https://static.openfoodfacts.org/images/products/01043433/front_en.6.400.jpg', 'babycorn', '175g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Desiree potatoes', 1, 1, 'https://static.openfoodfacts.org/images/products/01058963/front_en.3.400.jpg', 'Desiree potatoes', '2.5kg', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('mixed nuts', 2, 1, 'https://static.openfoodfacts.org/images/products/01060768/front_en.6.400.jpg', 'mixed nuts', '200g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Italian plum tomatoes in tomato juice', 1, 1, 'https://static.openfoodfacts.org/images/products/01062045/front_en.8.400.jpg', 'Peeled plum tomatoes in tomato juice', '400 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Jahodový džem', 5, 1, 'https://static.openfoodfacts.org/images/products/01080681/ingredients_en.12.400.jpg', 'Jahodový džem', '150 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('limes ', 5, 1, 'https://static.openfoodfacts.org/images/products/01095678/front_en.7.400.jpg', 'limes', '5 limes', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('mixed chillies', 1, 1, 'https://static.openfoodfacts.org/images/products/01117455/front_en.8.400.jpg', 'mixed chillies', '50g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Turrón blando', 1, 1, 'https://static.openfoodfacts.org/images/products/011/262/570/1214/front.4.400.jpg', 'Turrón blando con almendras de tipo Jijona. Calidad suprema', '150 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Whole British Milk', 5, 1, 'https://static.openfoodfacts.org/images/products/01137613/front_en.3.400.jpg', 'Pasteurised homogenised standardised whole milk', '2 pints (1,136 l)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('milk chocolate digestives', 2, 1, 'https://static.openfoodfacts.org/images/products/01147834/front_en.3.400.jpg', 'milk chocolate digestives', '300 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Mayonaise ', 1, 1, 'https://static.openfoodfacts.org/images/products/01149340/front_en.10.400.jpg', 'Mayonnaise ', '500ml', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Courgettes', 1, 1, 'https://static.openfoodfacts.org/images/products/01150421/front_en.5.400.jpg', 'Courgettes', '1 kg', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Sainsburys Spaghetti, SO Organic ', 5, 1, 'https://static.openfoodfacts.org/images/products/01189506/front_en.3.400.jpg', 'Organic Spaghetti Pasta', '500 gr', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('bunched carrots', 4, 1, 'https://static.openfoodfacts.org/images/products/01199246/front_en.8.400.jpg', 'carrots', '400g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('diet pepsi ', 4, 1, 'https://static.openfoodfacts.org/images/products/01205008/ingredients_en.7.400.jpg', 'Diet Pepsi', '12 ounce can', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('So Organic Passata', 4, 1, 'https://static.openfoodfacts.org/images/products/01215397/front_en.3.400.jpg', 'Tomato Passata', '700 gr', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Sainsburys Peas, SO Organic ', 3, 1, 'https://static.openfoodfacts.org/images/products/01216486/front_en.5.400.jpg', 'Frozen Organic Peas', '750 gr', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Diet Mtn Dew', 3, 1, 'https://static.openfoodfacts.org/images/products/01216606/front_en.6.400.jpg', 'Diet Mountain Dew', '1', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Whole British Milk', 3, 1, 'https://static.openfoodfacts.org/images/products/01219487/front_en.10.400.jpg', 'Whole milk', '1.136 L', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Organic semi skimmed British milk', 3, 1, 'https://static.openfoodfacts.org/images/products/01219494/front_en.3.400.jpg', 'Semi skimmed milk', '2 pints', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Alpin', 3, 1, 'https://static.openfoodfacts.org/images/products/012/211/478/0811/front.3.400.jpg', 'Leche larga vida entera achocolatada', '200ml', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('French camembert', 4, 1, 'https://static.openfoodfacts.org/images/products/01223804/front_en.3.400.jpg', 'Camembert', '250g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('sweetcorn and peas', 1, 1, 'https://static.openfoodfacts.org/images/products/01265750/front_en.5.400.jpg', 'sweetcorn and peas', '198 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Sainsburys &quot;Taste the Difference&quot; Demerara Shortbread Rounds', 4, 1, 'https://static.openfoodfacts.org/images/products/01273601/front_en.6.400.jpg', 'Shortbread rounds', '200 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Iced tea lemon flavor', 1, 1, 'https://static.openfoodfacts.org/images/products/01275900/front_en.7.400.jpg', 'i', '12 fl oz', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Sainsburys Organic Sweetcorn', 4, 1, 'https://static.openfoodfacts.org/images/products/01311501/front_en.8.400.jpg', 'Sweetcorn', '150g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Yellow Mustard', 2, 1, 'https://static.openfoodfacts.org/images/products/01322109/front_en.5.400.jpg', 'Mustard', '9 OZ (255 g)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Miel de Sarrasin', 3, 1, 'https://static.openfoodfacts.org/images/products/013413/front.4.400.jpg', 'Miel de Sarrasin', '230g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('2 white baguettes - bake at home ', 2, 1, 'https://static.openfoodfacts.org/images/products/01344899/front_en.8.400.jpg', 'Baguette', '300g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Fortnum & Mason', 1, 1, 'https://static.openfoodfacts.org/images/products/013/500/006/6203/front_en.7.400.jpg', 'Lemon Curd ', '315 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Madiran 2010', 3, 1, 'https://static.openfoodfacts.org/images/products/0139329/front.7.400.jpg', 'Madiran', '75 cl', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('austrian smoky cheese', 3, 1, 'https://static.openfoodfacts.org/images/products/01406276/front_en.7.400.jpg', 'smoke flavour processed cheese', '100g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Bramley apples', 5, 1, 'https://static.openfoodfacts.org/images/products/01409895/front_en.7.400.jpg', 'Bramley apples', '5', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Prawn Crackers', 5, 1, 'https://static.openfoodfacts.org/images/products/01410808/front_en.11.400.jpg', 'Prawn flavored tapioca snacks', '80 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Manuka honey', 5, 1, 'https://static.openfoodfacts.org/images/products/01412871/front_en.3.400.jpg', 'manuka honey', '340 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Bella Sahnesteif', 5, 1, 'https://static.openfoodfacts.org/images/products/01421777/front.4.400.jpg', 'Sahnesteif', '8g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Bisque de Homard', 1, 1, 'https://static.openfoodfacts.org/images/products/01425587/front.13.400.jpg', 'Bisque de homard', '490 g, 470 ml', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Mini houmous snack pot selection', 2, 1, 'https://static.openfoodfacts.org/images/products/01441871/front_en.9.400.jpg', 'Houmous', '180g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Sainsburys Basics Salsa Dip', 3, 1, 'https://static.openfoodfacts.org/images/products/01456042/front_en.7.400.jpg', 'Tomato Salsa Dip', '300g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Low Fat Red Fruits Yogurts', 3, 1, 'https://static.openfoodfacts.org/images/products/01466287/front_en.7.400.jpg', 'Low Fat Red Fruits Yogurts', '6x125g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('french brandy', 4, 1, 'https://static.openfoodfacts.org/images/products/01469646/front_en.8.400.jpg', 'brandy', '70cl', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('London dry gin', 3, 1, 'https://static.openfoodfacts.org/images/products/01469660/front_en.5.400.jpg', 'gin', '70cl', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('vodka', 4, 1, 'https://static.openfoodfacts.org/images/products/01469707/front_en.9.400.jpg', 'vodka', '70cl', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Mozzarella cheese ball', 4, 1, 'https://static.openfoodfacts.org/images/products/01483246/front_en.8.400.jpg', 'Soft cheese made with pasteurised cows milk, packed in brine', '220 g (125 g)', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('mozzarella cheese ball', 1, 1, 'https://static.openfoodfacts.org/images/products/01489187/front_en.5.400.jpg', 'mozzarella cheese ball', '220 / 125 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('British double fresh cream', 1, 1, 'https://static.openfoodfacts.org/images/products/01510294/front_en.3.400.jpg', 'double fresh cream', '300ml', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Cayenne pepper', 5, 1, 'https://static.openfoodfacts.org/images/products/01535815/front_en.8.400.jpg', 'Cayenne pepper', '38 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Sainsburys Cabernet Sauvignon, SO Organic', 1, 1, 'https://static.openfoodfacts.org/images/products/01554823/front_en.3.400.jpg', 'Organic Cabernet Wine', '75cl', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Bière', 4, 1, 'https://static.openfoodfacts.org/images/products/01561540/front_en.3.400.jpg', 'Japans Premium Beer', '500ml', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('4 Cornish Clotted Cream Scones', 4, 1, 'https://static.openfoodfacts.org/images/products/01575118/front_en.10.400.jpg', '4 Clotted Cream scones', '280 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('1% fat British milk', 2, 1, 'https://static.openfoodfacts.org/images/products/01578232/front_en.14.400.jpg', 'pasteurised homogenised standardised 1% fat milk', '568ml', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Crème fraîche', 3, 1, 'https://static.openfoodfacts.org/images/products/01594577/front_en.15.400.jpg', 'Crème fraîche', '300ml', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('16 milano salami slices', 4, 1, 'https://static.openfoodfacts.org/images/products/01610215/front_en.5.400.jpg', 'cured pork Milano salami', '86g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Schoko-bons', 3, 1, 'https://static.openfoodfacts.org/images/products/01611144/front.3.400.jpg', 'Bonbons de chocolat supérieur au lait fourrés lait et noisette', '140g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Family apples', 1, 1, 'https://static.openfoodfacts.org/images/products/01618419/front_en.7.400.jpg', 'Cripps pink apples', '9', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Jackfruit in syrup', 3, 1, 'https://static.openfoodfacts.org/images/products/016/229/001/9404/front.6.400.jpg', 'Fruit Jacquier au sirop', '565 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Fior di Napoli', 2, 1, 'https://static.openfoodfacts.org/images/products/01633085/front.11.400.jpg', 'Mozzarella', '150 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Red Kidney Beans in water', 4, 1, 'https://static.openfoodfacts.org/images/products/01642582/front_en.5.400.jpg', 'Kidney beans', '230g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('6 British barn eggs', 3, 1, 'https://static.openfoodfacts.org/images/products/01642759/front_en.6.400.jpg', 'egg', '6 / 328 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('British Mature Cheddar', 5, 1, 'https://static.openfoodfacts.org/images/products/01646429/front_en.7.400.jpg', 'Cheddar', '270 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Life', 3, 1, 'https://static.openfoodfacts.org/images/products/016/773/604/4941/front.6.400.jpg', 'Boisson gazeuse au cola', '33 cl', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('4 microwaveable steam bags. Carrits, broccoli & sweetcorn', 2, 1, 'https://static.openfoodfacts.org/images/products/01689570/front_en.3.400.jpg', 'frozen vegetables', '540g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Lighter green pesto', 2, 1, 'https://static.openfoodfacts.org/images/products/01693607/front_en.7.400.jpg', 'Pesto sauce', '190g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Summer fruit sauce', 2, 1, 'https://static.openfoodfacts.org/images/products/01717037/front_en.5.400.jpg', 'Fruit sauce made with raspberry, strawberry and blackcurrant purées', '275 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Fruit dOr pro-activ (35 % MG) Tartine', 5, 1, 'https://static.openfoodfacts.org/images/products/017/187/002/6855/front.3.400.jpg', 'Matière grasse légère à tartiner (35 % MG) aux esters de stérol végétal et enrichie en vitamines A et D', '250 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Schweppes poire', 3, 1, 'https://static.openfoodfacts.org/images/products/01721117/front_en.3.400.jpg', 'boisson gazeuse rafraichissante saveur poire comice, conférence, alexandrine et williams, avec sucre et édulcorants', '1,5 l', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Soft white icing', 5, 1, 'https://static.openfoodfacts.org/images/products/01730371/front_en.7.400.jpg', 'Icing', '500 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Handcrafted mature cheddar & tomato flatbread', 4, 1, 'https://static.openfoodfacts.org/images/products/01733303/front_en.6.400.jpg', 'Flatbread with tomato and cheese', '225 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('swiss gruyere', 2, 1, 'https://static.openfoodfacts.org/images/products/01733624/front_en.12.400.jpg', 'gruyere', '200g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Sainsburys Fairtrade rooibos tea bags', 5, 1, 'https://static.openfoodfacts.org/images/products/01734485/front_en.3.400.jpg', 'Rooibos tea', '200 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('chorizo slices seasoned with sweet paprica', 3, 1, 'https://static.openfoodfacts.org/images/products/01737721/front_en.7.400.jpg', 'chorizo', '38 / 180 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Brunswick ham sliced cooked and beechwood smoked ham', 2, 1, 'https://static.openfoodfacts.org/images/products/01737974/front_en.7.400.jpg', 'smoked ham', '100', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Sainsburys blackberry and blueberry infusion', 3, 1, 'https://static.openfoodfacts.org/images/products/01738193/front_en.7.400.jpg', 'Blackberry and blueberry infusion tea bags', '40 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('elderflower cordial', 3, 1, 'https://static.openfoodfacts.org/images/products/01741674/front_en.7.400.jpg', 'elderflower cordial made with English elderflower', '500ml', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('6 Carrot Cake Slices', 1, 1, 'https://static.openfoodfacts.org/images/products/01760729/front_en.9.400.jpg', 'Tranches de gâteau à la carotte - 6 Carrot Cake Slices', '200 g (6* 33,3 g)', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Heudebert la tartine Blé complet', 3, 1, 'https://static.openfoodfacts.org/images/products/017/760/598/095/front.6.400.jpg', 'Pain grillé au blé complet', '320 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('British small whole chicken', 3, 1, 'https://static.openfoodfacts.org/images/products/01785623/front_en.6.400.jpg', 'Chicken', '1.35kg', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('20% fat British pork mince', 3, 1, 'https://static.openfoodfacts.org/images/products/01787405/front_en.3.400.jpg', 'British pork mince', '0.750kg', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('bay leaves', 2, 1, 'https://static.openfoodfacts.org/images/products/01797442/front_en.9.400.jpg', 'bay leaves', '6g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('fair trade black pepper corn', 2, 1, 'https://static.openfoodfacts.org/images/products/01797657/front_en.9.400.jpg', 'black peppercorns', '100g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('12 Cumberland pork chipolatas', 3, 1, 'https://static.openfoodfacts.org/images/products/01798630/front_en.8.400.jpg', 'pork chipolatas', '375g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Splits - multigrain ', 5, 1, 'https://static.openfoodfacts.org/images/products/017/991/711/0413/front_en.10.400.jpg', 'Pretzels', '11 oz (312 g)', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Sainsburys FreeFrom express pure oats', 4, 1, 'https://static.openfoodfacts.org/images/products/01800425/front_en.3.400.jpg', 'Gluten, wheat and dairy free quick cook porridge oats', '216 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('King of beers', 2, 1, 'https://static.openfoodfacts.org/images/products/01801828/front_en.7.400.jpg', 'lager', '16 fl oz', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Soft Cheese', 1, 1, 'https://static.openfoodfacts.org/images/products/01814835/front_en.3.400.jpg', 'Full fat soft cheese', '300 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Silver Balls', 4, 1, 'https://static.openfoodfacts.org/images/products/01816761/front_en.6.400.jpg', 'Sugar balls coated with silver', '78g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Low fat natural cottage cheese', 4, 1, 'https://static.openfoodfacts.org/images/products/01821697/front_en.6.400.jpg', 'cottage cheese', '300 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('15 free range British eggs by Sainsburys', 4, 1, 'https://static.openfoodfacts.org/images/products/01828850/front_en.6.400.jpg', 'eggs', '15', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pitted green olives', 1, 1, 'https://static.openfoodfacts.org/images/products/01830958/front_en.7.400.jpg', 'Green Manzanilla pitted olives in brine', '350 g (160 g drained weight)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Miel de Caféier', 3, 1, 'https://static.openfoodfacts.org/images/products/018312/front.4.400.jpg', 'Miel de Caféier', '230g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Diced smoked cooking bacon with added water', 3, 1, 'https://static.openfoodfacts.org/images/products/01832457/front_en.5.400.jpg', 'bacon', '200g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Galangal', 1, 1, 'https://static.openfoodfacts.org/images/products/01840865/front_en.3.400.jpg', 'Galangal in oil and vinegar', '90g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('La Choucroute du temps retrouvé', 3, 1, 'https://static.openfoodfacts.org/images/products/018/421/006/3748/front.7.400.jpg', 'Choucroute garnie à partager', '1 kg', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Budweiser', 3, 1, 'https://static.openfoodfacts.org/images/products/01847325/front_en.6.400.jpg', 'Beer', '16 OZ, 1 Pint', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Sainsburys Spanish Manchego, Taste the Difference', 1, 1, 'https://static.openfoodfacts.org/images/products/01847758/front_en.4.400.jpg', 'Manchego Cheese (Full fat hard cheese-Sheeps Milk)', '170 gr', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Mango Chutney', 5, 1, 'https://static.openfoodfacts.org/images/products/01849240/front_en.9.400.jpg', 'Mango chutney', '370g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('hand cooked vegetable crisps', 5, 1, 'https://static.openfoodfacts.org/images/products/01854961/front_en.9.400.jpg', 'Mixed root vegetable and salted crisps', '100 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Tap Room Brewing Company', 1, 1, 'https://static.openfoodfacts.org/images/products/01856712/front_en.16.400.jpg', 'IPA US craft beer', '355 mL', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Peeled Snacks Much-Ado-About-Mango', 5, 1, 'https://static.openfoodfacts.org/images/products/018/588/900/0126/front_en.9.400.jpg', 'Dried mangoes', '1.4 oz', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Sirop dérable pur biologique Escuminac', 1, 1, 'https://static.openfoodfacts.org/images/products/018/724/800/0532/front.3.400.jpg', 'Sirop dérable pur', '540 ml', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('15% fat British Beef Mince', 1, 1, 'https://static.openfoodfacts.org/images/products/01879803/front_en.8.400.jpg', 'British beef mince (15% fat)', '500 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Vegetarian Catalan bean casserole', 2, 1, 'https://static.openfoodfacts.org/images/products/01888669/front_en.5.400.jpg', 'Bean Casserole', '400g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Multicoloured 100s & 1000s', 2, 1, 'https://static.openfoodfacts.org/images/products/01890761/front_en.13.400.jpg', 'Coloured sugar sprinkles', '80g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Butterfly Confetti', 2, 1, 'https://static.openfoodfacts.org/images/products/01890778/front_en.6.400.jpg', 'Pink, Yellow and White Sugar Butterflies', '53g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Mixed nuts', 2, 1, 'https://static.openfoodfacts.org/images/products/01892062/front_en.17.400.jpg', 'mixed nuts', '300g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('So Organic Cranberries', 1, 1, 'https://static.openfoodfacts.org/images/products/01892277/front_en.4.400.jpg', 'Dried Organic Cranberries ', '100 gr', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Cin Chili', 4, 1, 'https://static.openfoodfacts.org/images/products/018/923/500/0006/front_en.4.400.jpg', 'Cin Chili', '2.75 oz', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Coriander & Lemon Couscous', 5, 1, 'https://static.openfoodfacts.org/images/products/01892406/front_en.6.400.jpg', 'Couscous', '110g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('2 thin & crispy pizza bases', 2, 1, 'https://static.openfoodfacts.org/images/products/01892987/front_en.6.400.jpg', 'pizza bases', '2', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('distilled malt vinegar', 2, 1, 'https://static.openfoodfacts.org/images/products/01897878/front_en.8.400.jpg', 'distilled malt vinegar', '568ml', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Miel dAcacia en rayon', 5, 1, 'https://static.openfoodfacts.org/images/products/019092/front.4.400.jpg', 'Miel dAcacia et rayon de miel', '350g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Bonbons durs, cerise sauvage', 1, 1, 'https://static.openfoodfacts.org/images/products/01922305/front.5.400.jpg', 'Bonbons', '32 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Miel de Romarin', 3, 1, 'https://static.openfoodfacts.org/images/products/019801/front.8.400.jpg', 'Miel de romarin', '30 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Comté Au Lait Cru (34 % MG)', 1, 1, 'https://static.openfoodfacts.org/images/products/020/001/003/3672/front.3.400.jpg', 'Fromage de France AOP, à pâte pressée cuite, au lait cru de vache', '0,282 kg', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Brie pasteurisé', 3, 1, 'https://static.openfoodfacts.org/images/products/020/002/301/2664/front.3.400.jpg', 'Fromage', '0,256 kg', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Bitter Vingummibade', 4, 1, 'https://static.openfoodfacts.org/images/products/020/002/401/2205/front.5.400.jpg', 'Syrlig vingummi', '100 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Syrlige & Brusende Bolsjer', 4, 1, 'https://static.openfoodfacts.org/images/products/020/002/401/3110/front.5.400.jpg', 'Syrlige bolsjer/syrliga karameller/syrlige drops', '100 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Tarallini Snack med Hvidløg og Chili', 4, 1, 'https://static.openfoodfacts.org/images/products/020/002/401/6760/front.6.400.jpg', 'Gesalzenes italienisches Weizengebäck mit Knoblauch und Chili', '80 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Gouda graine cumin', 5, 1, 'https://static.openfoodfacts.org/images/products/020/011/600/9977/front.5.400.jpg', 'Gouda', '192 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Ptit Basque (34% MG) - 642 g ', 4, 1, 'https://static.openfoodfacts.org/images/products/020/014/408/9675/front.10.400.jpg', 'Fromage industriel de France, à pâte pressée non cuite, au lait pasteurisé de brebis', '642 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Viande pour animaux', 3, 1, 'https://static.openfoodfacts.org/images/products/020/018/200/4722/front.10.400.jpg', 'viande', '450 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Brochettes de boeuf', 2, 1, 'https://static.openfoodfacts.org/images/products/020/024/807/9046/front.3.400.jpg', 'Brochettes de boeuf', '600 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Steaks hachés &quot;façon André&quot; race charolaise', 2, 1, 'https://static.openfoodfacts.org/images/products/020/049/202/2249/front.6.400.jpg', 'Steaks hachés', '0,251 kg', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Côte de Porc', 3, 1, 'https://static.openfoodfacts.org/images/products/020/050/500/8598/front.3.400.jpg', 'Côte de porc origine France', '0,187 kg', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Rôti de porc dans le filet', 2, 1, 'https://static.openfoodfacts.org/images/products/020/051/207/2612/front.4.400.jpg', 'Roti de porc dans le filet', '1,593 kg.', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Bleu Auvergne La Mémée', 1, 1, 'https://static.openfoodfacts.org/images/products/020/069/601/2206/front.4.400.jpg', 'Fromage au lait de vache pasteurisé', '180 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('bœuf  haché', 3, 1, 'https://static.openfoodfacts.org/images/products/020/116/802/8473/front.3.400.jpg', 'bœuf  haché', '0,417 kg', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Haché nature pur boeuf 15% mg', 4, 1, 'https://static.openfoodfacts.org/images/products/020/116/802/8992/front.6.400.jpg', 'Viande hachée pur boeuf', '425 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pain chocolat (x 5)', 1, 1, 'https://static.openfoodfacts.org/images/products/020/129/201/8371/front.9.400.jpg', 'Pain au chocolat', '300 g (5 pains)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Steaks hachés', 5, 1, 'https://static.openfoodfacts.org/images/products/020/136/124/4939/front.7.400.jpg', 'Steaks hachés', '40 * 125 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Morue salée séchée', 2, 1, 'https://static.openfoodfacts.org/images/products/020/146/712/3121/front.8.400.jpg', 'morues', '1,350 kg', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Gingembre', 1, 1, 'https://static.openfoodfacts.org/images/products/020/155/501/713/front.5.400.jpg', 'Gingembre', '0,066 kg', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Filet mignon de porc surgelé Picard', 1, 1, 'https://static.openfoodfacts.org/images/products/020/155/605/3209/front.7.400.jpg', 'Filet mignon de porc surgelé', '0,461 kg', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Apfelmus', 4, 1, 'https://static.openfoodfacts.org/images/products/02017887/front.9.400.jpg', 'Apfelmus', '710g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Comté extra 16/21 mois', 4, 1, 'https://static.openfoodfacts.org/images/products/020/194/204/1391/front.3.400.jpg', 'Comté', '280 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pain aux céréales', 3, 1, 'https://static.openfoodfacts.org/images/products/020/203/401/0172/front.7.400.jpg', 'Pain spécial aux céréales et aux graines', '300 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('caissette de veau épaule rotis et découpe', 4, 1, 'https://static.openfoodfacts.org/images/products/020/207/913/3621/front.4.400.jpg', 'viande de veau', '1,460 kg', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Longe de veau', 3, 1, 'https://static.openfoodfacts.org/images/products/020/215/824/8741/front.7.400.jpg', 'Longe de veau', '2,778 kg', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Faux filets', 3, 1, 'https://static.openfoodfacts.org/images/products/020/288/305/4716/front.3.400.jpg', 'Faux filets', '0,380 kg', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('rosbif  ', 1, 1, 'https://static.openfoodfacts.org/images/products/020/335/712/0371/front.4.400.jpg', 'rosbif', '766 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Boulettes de bœuf oignons paprika', 4, 1, 'https://static.openfoodfacts.org/images/products/020/344/803/5959/front.6.400.jpg', 'Boulettes de bœuf ', '500 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Farce à tomate', 5, 1, 'https://static.openfoodfacts.org/images/products/020/367/302/2434/front.6.400.jpg', 'Farce à tomate', '620 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Haché nature pur porc', 3, 1, 'https://static.openfoodfacts.org/images/products/020/393/903/5369/front.6.400.jpg', 'viande haché', '718 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Languon de porc', 1, 1, 'https://static.openfoodfacts.org/images/products/020/416/701/7127/front.6.400.jpg', 'viande de porc', '580 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Brochettes de porc', 5, 1, 'https://static.openfoodfacts.org/images/products/020/420/204/2701/front.3.400.jpg', 'Brochettes de porc', '600 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Roti de veau vénitien', 1, 1, 'https://static.openfoodfacts.org/images/products/020/422/112/3252/front.3.400.jpg', 'Roti de veau ', '876 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Roti de veau farci aux olives', 2, 1, 'https://static.openfoodfacts.org/images/products/020/423/207/7476/front.5.400.jpg', 'Roti de veau', '875 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Poitrine de bœuf ', 5, 1, 'https://static.openfoodfacts.org/images/products/020/426/803/5228/front.7.400.jpg', 'poitrine de bœuf ', '584 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Viande Bovine pour Fondue', 1, 1, 'https://static.openfoodfacts.org/images/products/020/427/902/9988/front.5.400.jpg', 'Viande Bovine pour Fondue', '514 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Roti de veau à la provencale', 3, 1, 'https://static.openfoodfacts.org/images/products/020/452/607/4846/front.3.400.jpg', 'Roti de veau', '763 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Roti de veau à lindienne', 1, 1, 'https://static.openfoodfacts.org/images/products/020/452/907/4980/front.5.400.jpg', 'Roti de veau', '819 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Casino filet de merlan pané', 2, 1, 'https://static.openfoodfacts.org/images/products/020/511/303/9958/front.7.400.jpg', 'Filet de merlan pané cuit à coeur, réfrigéré, sans arête', 'Variable', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('unsmoked british bacon collar joint', 3, 1, 'https://static.openfoodfacts.org/images/products/020/511/400/6935/front_en.6.400.jpg', 'unsmoked bacon collar joint', '0.992kg', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Kassler cru fumé bio', 1, 1, 'https://static.openfoodfacts.org/images/products/020/550/502/3480/front.3.400.jpg', 'Kassler cru fumé bio', '126 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Haché Porc et Boeuf', 1, 1, 'https://static.openfoodfacts.org/images/products/020/554/300/9934/front.7.400.jpg', 'Viande Hachée', '1,660 kg', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pains chocolat beurre (x 8) - Leclerc', 3, 1, 'https://static.openfoodfacts.org/images/products/020/554/501/9351/front.3.400.jpg', 'Pain au chocolat', '8 pains', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Emmental français', 4, 1, 'https://static.openfoodfacts.org/images/products/020/554/702/4605/front.6.400.jpg', 'Emmental ', '543 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Queues de bœuf', 3, 1, 'https://static.openfoodfacts.org/images/products/020/584/309/3015/front.11.400.jpg', 'Queues de bœuf (race à lait)', '1,956 kg', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('filets de poulets français', 5, 1, 'https://static.openfoodfacts.org/images/products/020/587/502/0737/front.6.400.jpg', 'filets de poulets', '298 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('saucisson à cuire à la truffe noire', 2, 1, 'https://static.openfoodfacts.org/images/products/020/627/404/8025/front.4.400.jpg', 'saucisson à cuire', '0,462 kg', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pâté de Campagne', 4, 1, 'https://static.openfoodfacts.org/images/products/020/630/903/4375/front.5.400.jpg', 'Pâté de Campagne', '620 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Saucisses chipolatas - 6 pièces', 5, 1, 'https://static.openfoodfacts.org/images/products/020/638/402/3684/front.3.400.jpg', 'Saucisses chipolatas', '335 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('saucisses aux herbes', 1, 1, 'https://static.openfoodfacts.org/images/products/020/639/102/2762/front.4.400.jpg', 'saucisses aux herbes', '300 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Merguez - 6 pièces', 4, 1, 'https://static.openfoodfacts.org/images/products/020/639/301/9814/front.4.400.jpg', 'Merguez', '305 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Merguez 12 pièces', 1, 1, 'https://static.openfoodfacts.org/images/products/020/640/603/7460/front.3.400.jpg', 'Merguez ', '600 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Jambon cuit supérieur 3 tranches', 2, 1, 'https://static.openfoodfacts.org/images/products/020/693/901/8042/front.7.400.jpg', 'Jambon cuit', '135 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Dés de jambon cuit', 1, 1, 'https://static.openfoodfacts.org/images/products/020/700/401/9094/front.4.400.jpg', 'jambon', '271 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('jambon cuit supérieur sans os', 4, 1, 'https://static.openfoodfacts.org/images/products/020/702/005/2082/front.10.400.jpg', 'jambon cuit ', '0,512 kg', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Jambon cuit supérieur sans os', 3, 1, 'https://static.openfoodfacts.org/images/products/020/702/008/2980/front.5.400.jpg', 'Jambon blanc', '816 g (8 tranches)', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Viande Bovine Tende Tranche à Fondue', 1, 1, 'https://static.openfoodfacts.org/images/products/020/706/702/4530/front.6.400.jpg', 'Viande bovine tende tranche', '0,456 kg', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('rôti de porc cuit', 2, 1, 'https://static.openfoodfacts.org/images/products/020/764/602/7167/front.4.400.jpg', 'rôti de porc', '202 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Porc caissette côte', 3, 1, 'https://static.openfoodfacts.org/images/products/020/771/905/3468/front.9.400.jpg', 'côtes de porc', '970 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Brie de Meaux 3/4 AOP AFF, courtenay', 4, 1, 'https://static.openfoodfacts.org/images/products/020/787/002/7032/front.6.400.jpg', 'Brie de meaux', '0,258 kg', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Côte de porc Le Porcilin', 1, 1, 'https://static.openfoodfacts.org/images/products/020/790/301/3254/front.4.400.jpg', 'Porc terroir cote filet à griller', '0,250 kg', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pizza 3 fromages', 3, 1, 'https://static.openfoodfacts.org/images/products/020/790/305/8903/front.3.400.jpg', 'Pizza', '646 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Poulet roti', 3, 1, 'https://static.openfoodfacts.org/images/products/020/800/506/5271/front.7.400.jpg', 'Poulet roti', '1 unité', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Couronne des rois', 3, 1, 'https://static.openfoodfacts.org/images/products/020/802/803/5756/front.6.400.jpg', 'Brioche', '450 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('poulet roti fermier', 5, 1, 'https://static.openfoodfacts.org/images/products/020/822/103/9360/front.8.400.jpg', 'poulet roti', 'une pièce', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Bananes cavendish biologique catégorie 2', 2, 1, 'https://static.openfoodfacts.org/images/products/020/863/700/7618/front.8.400.jpg', 'bananes', '0.664kg (variable)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('gras double de bœuf tripe cuites ', 4, 1, 'https://static.openfoodfacts.org/images/products/020/877/604/0675/front.4.400.jpg', 'tripes', '1.042 kg', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('tablier de sapeur cuit', 4, 1, 'https://static.openfoodfacts.org/images/products/020/877/701/9885/front.4.400.jpg', 'tablier de sapeur cuit', '421 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Dinde farcie', 1, 1, 'https://static.openfoodfacts.org/images/products/020/880/213/3098/front.10.400.jpg', 'Dinde farcie pomme, figue et marrons', '2,387 kg', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('rosette poivre vert pur porc tranchée sans peau', 4, 1, 'https://static.openfoodfacts.org/images/products/020/894/001/9889/front.3.400.jpg', 'rosette', '169 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Mousse Pur Canard ', 3, 1, 'https://static.openfoodfacts.org/images/products/020/909/101/0930/front.4.400.jpg', 'Mousse de canard', '0,196 kg', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Saint Nectaire laitier', 5, 1, 'https://static.openfoodfacts.org/images/products/020/920/902/8734/front.4.400.jpg', 'Saint Nectaire ', '0,402 kg', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Comté au lait cru - Affiné 10 mois minimum ', 4, 1, 'https://static.openfoodfacts.org/images/products/020/922/602/5068/front.13.400.jpg', 'Fromage à pâte pressée cuite', '258 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Fourme dAmbert', 3, 1, 'https://static.openfoodfacts.org/images/products/020/938/601/7255/front.8.400.jpg', 'Fourme dAmbert', '266 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Le  Rochebaron', 4, 1, 'https://static.openfoodfacts.org/images/products/020/969/606/0415/front.5.400.jpg', 'fromage', '542 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Gratin Méditerranéen', 5, 1, 'https://static.openfoodfacts.org/images/products/020/985/601/9680/front.6.400.jpg', 'Gratin de pomme de terre façon méditerranéene', '1 pièce', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Jambon cru de Pays', 1, 1, 'https://static.openfoodfacts.org/images/products/021/060/901/6405/front.8.400.jpg', 'Jambon cru', '123 g (4 tranches)', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Emmental au lait cru', 4, 1, 'https://static.openfoodfacts.org/images/products/021/150/202/3026/front.7.400.jpg', 'Fromage à pâte pressée cuite', '255 g (variable)', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('1 Steak ', 2, 1, 'https://static.openfoodfacts.org/images/products/021/166/002/3425/front.4.400.jpg', 'Steak de bœuf', '184 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Truite fumée bio du Mont-Lozère', 1, 1, 'https://static.openfoodfacts.org/images/products/021/234/505/2617/front.5.400.jpg', 'Truite fumée', '0,180 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Escalope de dinde', 4, 1, 'https://static.openfoodfacts.org/images/products/021/270/000/9973/front.6.400.jpg', 'Escalope de dinde', '114 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pain de Campagne Noix Raisin', 2, 1, 'https://static.openfoodfacts.org/images/products/021/509/001/0178/front.7.400.jpg', 'Pain de Campagne Noix Raisin', '1 pain (poids non précisé)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Saint-Nectaire fermier', 5, 1, 'https://static.openfoodfacts.org/images/products/021/515/703/0316/front.3.400.jpg', 'Saint-Nectaire fermier', '304 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Saint Nectaire fermier', 3, 1, 'https://static.openfoodfacts.org/images/products/021/515/703/7261/front.4.400.jpg', 'Saint Nectaire', '374 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Poulet Fermier Jaune Bio', 4, 1, 'https://static.openfoodfacts.org/images/products/021/521/211/7747/front.3.400.jpg', 'Poulet Fermier Jaune Bio 81J', '1,647 kg', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Poulet fermier jaune FQC', 2, 1, 'https://static.openfoodfacts.org/images/products/021/548/907/4453/front.5.400.jpg', 'Poulet', '1,723 kg', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Escalope de dinde', 3, 1, 'https://static.openfoodfacts.org/images/products/021/580/604/6774/front.5.400.jpg', 'Escalope de dinde', '477 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Bleu Remberter', 1, 1, 'https://static.openfoodfacts.org/images/products/021/646/702/0400/front.8.400.jpg', 'bleu', '300 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('poulet fermier', 2, 1, 'https://static.openfoodfacts.org/images/products/021/724/703/1494/front.6.400.jpg', 'poulet fermier', '200 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('1 Cuisse de Dinde', 4, 1, 'https://static.openfoodfacts.org/images/products/021/725/102/2501/front.3.400.jpg', 'Cuisse de dinde', '0,792 kg ', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Poulet, 4 Escalopes Fines de Poulet', 3, 1, 'https://static.openfoodfacts.org/images/products/021/726/802/2501/front.7.400.jpg', 'Escalope de poulet', '0,288 kg', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('2 Escalopes de Dinde Fermière élevée en Plein Air', 4, 1, 'https://static.openfoodfacts.org/images/products/021/729/102/7887/front.7.400.jpg', 'Escalopes de dinde', '0,211 kg', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Grignottes de poulet cuites', 4, 1, 'https://static.openfoodfacts.org/images/products/021/734/805/8383/front.6.400.jpg', 'viandes de poulet', '1 kg', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Cerf', 2, 1, 'https://static.openfoodfacts.org/images/products/021/746/304/5466/front.5.400.jpg', 'Pavés de cerf dans le cuissot', '0,257 kg', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Barbecue chicken thighs', 1, 1, 'https://static.openfoodfacts.org/images/products/021/747/900/0633/front_en.3.400.jpg', 'Barbecue chicken thighs', '1', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('LExtra Tendre Filet de Poulet Mariné', 5, 1, 'https://static.openfoodfacts.org/images/products/021/751/304/9857/front.3.400.jpg', 'Filet de poulet mariné', '380 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Cuisses de Poulet Rôties ', 1, 1, 'https://static.openfoodfacts.org/images/products/021/763/703/4708/front.5.400.jpg', 'Cuisses de poulet rôties cuites traitées en salaison', '0,370 kg', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('grignottes de poulet à la mexicaine', 2, 1, 'https://static.openfoodfacts.org/images/products/021/782/005/8382/front.3.400.jpg', 'grignottes de poulet', '1,006 kg', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Grignottes de poulet à la mexicaine', 2, 1, 'https://static.openfoodfacts.org/images/products/021/782/005/8641/front.9.400.jpg', 'Manchons de poulet mariné cuit', '1,010 kg', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('tomme à lail', 3, 1, 'https://static.openfoodfacts.org/images/products/021/791/104/2115/front.5.400.jpg', 'tomme', '0,474 kg', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Lièvre mariné', 2, 1, 'https://static.openfoodfacts.org/images/products/021/791/603/3392/front.5.400.jpg', 'Cuisse de lièvre prête à cuire marinée', '0,290 kg', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Fresh vegetables', 3, 1, 'https://static.openfoodfacts.org/images/products/021/849/300/1385/front_en.5.400.jpg', 'chinese cabbage', '1.150kg', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Bananes Cavendish', 3, 1, 'https://static.openfoodfacts.org/images/products/021/961/601/2462/front.3.400.jpg', 'Bananes', '0,957 kg', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Emmental de Savoie IGP (31 % MG) ', 5, 1, 'https://static.openfoodfacts.org/images/products/021/974/302/8992/front.5.400.jpg', 'Fromage de France IGP, à pâte pressée cuite, au lait cru de vache', '335 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Comté', 2, 1, 'https://static.openfoodfacts.org/images/products/021/974/702/2170/front.3.400.jpg', 'Fromage de France AOP, à pâte pressée cuite, au lait de vache', '225 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Véritable Andouille de Guémené fumé au bois de hêtre ', 2, 1, 'https://static.openfoodfacts.org/images/products/021/996/302/7485/front.13.400.jpg', 'Andouille', '286 gr', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pain Chocolat Beurre', 2, 1, 'https://static.openfoodfacts.org/images/products/022/054/800/8867/front.4.400.jpg', 'Pain Chocolat Beurre', '1 boîte', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Sarcives', 5, 1, 'https://static.openfoodfacts.org/images/products/022/192/002/9913/front.3.400.jpg', 'Sarcives de porc', '0,208 Kg', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Tarte Normande 6/8 personnes', 2, 1, 'https://static.openfoodfacts.org/images/products/022/211/002/2301/front.3.400.jpg', 'Tarte Normande diamètre 22', '1 tarte', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Boisson au riz nature La Vie Claire', 1, 1, 'https://static.openfoodfacts.org/images/products/022/222/289/1697/front.7.400.jpg', 'Boisson au riz', '1 l', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('pop corn mirco-ondes salé', 3, 1, 'https://static.openfoodfacts.org/images/products/022/235/300/0821/front.8.400.jpg', 'pop corn', '300g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Marpoms', 1, 1, 'https://static.openfoodfacts.org/images/products/022/314/016/11/front.11.400.jpg', 'compote pommes marrons', '85 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Aiguillettes de poulet', 2, 1, 'https://static.openfoodfacts.org/images/products/022/501/903/1955/front.4.400.jpg', 'Aiguillettes de poulet', '0,326 kg', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Beef Blade Roast with Roast Beef Seasoning', 1, 1, 'https://static.openfoodfacts.org/images/products/022/675/322/2203/front_en.3.400.jpg', 'beef blade roast', '1480g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Escalopes de dinde extra fines', 2, 1, 'https://static.openfoodfacts.org/images/products/022/677/302/9912/front.4.400.jpg', 'Découpe de dinde halal', '368 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Tesco New Zealand lamb - half leg', 1, 1, 'https://static.openfoodfacts.org/images/products/022/737/600/4108/front_en.6.400.jpg', 'half leg lamb', '1.026kg', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Muesli céréales et fruits secs', 1, 1, 'https://static.openfoodfacts.org/images/products/022/762/801/3582/front.3.400.jpg', 'Muesli', 'variable', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('3 filets de poulet', 1, 1, 'https://static.openfoodfacts.org/images/products/022/817/904/9266/front.4.400.jpg', 'Escalope de poulet', '696 g.', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Swede Portion', 1, 1, 'https://static.openfoodfacts.org/images/products/022/830/200/0386/front_en.4.400.jpg', 'Swede', '0.382 kg', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Huile de sésame', 5, 1, 'https://static.openfoodfacts.org/images/products/02311722/front.8.400.jpg', 'Huile de sésame', '200 ml', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Poulet, Aiguillettes de Poulet ', 5, 1, 'https://static.openfoodfacts.org/images/products/023/343/001/9742/front.22.400.jpg', 'Aiguillette de poulet', '0, 276 kg', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Chipolatas aux Échalotes', 1, 1, 'https://static.openfoodfacts.org/images/products/023/356/002/6047/front.3.400.jpg', 'Chipolatas', '418 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Chipolatas forestières', 2, 1, 'https://static.openfoodfacts.org/images/products/023/356/102/4349/front.4.400.jpg', 'Chipolatas', '390 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Tesco Fresh Diced Pork Topside 500G', 5, 1, 'https://static.openfoodfacts.org/images/products/023/754/500/1975/front_en.6.400.jpg', 'Tesco Fresh Diced Pork', '500g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Coulommiers (22 % MG) au lait cru', 5, 1, 'https://static.openfoodfacts.org/images/products/023/996/502/3094/front.4.400.jpg', 'Fromage de France, à pâte molle à croûte fleurie, au lait cru de vache', '236 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Quesadillas au poulet', 1, 1, 'https://static.openfoodfacts.org/images/products/024/229/711/5924/front_en.14.400.jpg', 'Sandwich au poulet', '1.139 kg', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('British beef ribeye steak', 2, 1, 'https://static.openfoodfacts.org/images/products/024/625/300/5212/front_en.3.400.jpg', 'Ribeye steak', '0.237kg', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Provolone DOP Valpadana 29%', 1, 1, 'https://static.openfoodfacts.org/images/products/024/690/002/6638/front.3.400.jpg', 'fromage', '242 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Tomme de brebis corse', 5, 1, 'https://static.openfoodfacts.org/images/products/024/707/604/3290/front.13.400.jpg', 'Tomme de brebis corse', '228 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Poule ', 2, 1, 'https://static.openfoodfacts.org/images/products/024/829/704/3755/front.5.400.jpg', 'Poule', '2,020 kg', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pâté aux Endives', 1, 1, 'https://static.openfoodfacts.org/images/products/025/005/802/7812/front.5.400.jpg', 'Pâté aux Endives', '250 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Le Campalin', 3, 1, 'https://static.openfoodfacts.org/images/products/025/008/101/7514/front.3.400.jpg', 'Pâté de campagne à la farine de lin', '0,196 kg', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('100% Juice Fruit Punch', 4, 1, 'https://static.openfoodfacts.org/images/products/02505008/front_en.7.400.jpg', 'Blend of 4 juices from concentrate with added ingredients', '6 fl oz (177 mL)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Chipolatas aux herbes', 4, 1, 'https://static.openfoodfacts.org/images/products/025/136/802/6830/front.3.400.jpg', 'Chipolatas', '430 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('4 beignets moelleux à la pomme', 4, 1, 'https://static.openfoodfacts.org/images/products/025/232/301/3056/front.6.400.jpg', 'Beignets à la pomme', '300 g, 4 beignets', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Mountain wildflower honey', 5, 1, 'https://static.openfoodfacts.org/images/products/025/623/500/7066/front_en.5.400.jpg', '100% Raw US Grade A Honey', '12 oz.', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Poulet Fumé Cuit', 1, 1, 'https://static.openfoodfacts.org/images/products/025/682/802/9260/front.8.400.jpg', 'Poulet fumé cuit', '1,350 kg', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('British Organic Free range Chicken', 4, 1, 'https://static.openfoodfacts.org/images/products/025/777/801/2463/front_en.6.400.jpg', 'British Organic Free range Chicken', '1', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pain De Campagne', 2, 1, 'https://static.openfoodfacts.org/images/products/026/001/700/7878/front.3.400.jpg', 'Pain au son', '300 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Boule bio Campanière', 2, 1, 'https://static.openfoodfacts.org/images/products/026/005/001/1481/front.10.400.jpg', 'Boule bio', '500 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pain complet bio Campanière', 3, 1, 'https://static.openfoodfacts.org/images/products/026/005/101/1480/front.15.400.jpg', 'Pain complet bio', '300 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Baguette de campagne', 3, 1, 'https://static.openfoodfacts.org/images/products/026/015/000/6233/front.4.400.jpg', 'Baguette de campagne', '0,250 kg', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Meule vieille réserve affinage 12 mois (34% MG)', 5, 1, 'https://static.openfoodfacts.org/images/products/026/213/401/3848/front.6.400.jpg', 'Fromage à pate pressée cuite', '0,180 kg', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Emmental', 2, 1, 'https://static.openfoodfacts.org/images/products/026/215/102/2830/front.6.400.jpg', 'Fromage à pâte pressée cuite', '0,556 kg (variable)', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Chipolatas', 1, 1, 'https://static.openfoodfacts.org/images/products/026/329/102/2834/front.3.400.jpg', 'Chipolatas', '366 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Saucisson sec de lArdèche Prestige', 4, 1, 'https://static.openfoodfacts.org/images/products/026/562/205/7867/front.6.400.jpg', 'Saucisson sec', '348 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Le cendré Ardéchois', 1, 1, 'https://static.openfoodfacts.org/images/products/026/562/305/0775/front.5.400.jpg', 'Saucisson sec', '368 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('2 steaks hachés', 3, 1, 'https://static.openfoodfacts.org/images/products/026/781/015/1791/front.15.400.jpg', 'steaks hachés', '2 * 125 g (250 g)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Saumon Rose sauvage du Pacifique', 3, 1, 'https://static.openfoodfacts.org/images/products/026/961/403/0968/front.5.400.jpg', 'Oncorhynchus gorbuscha', '1,048 kg', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Tautavel Réserve 2010', 2, 1, 'https://static.openfoodfacts.org/images/products/02701200/front.10.400.jpg', 'Vin rouge', '75cl', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Saucisse de volaille', 5, 1, 'https://static.openfoodfacts.org/images/products/027/801/904/8287/front.6.400.jpg', '20 saucisses de dinde crue halal', '1 kg', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('2 pavés de dromadaire aux 3 épices', 4, 1, 'https://static.openfoodfacts.org/images/products/027/848/506/0684/front.8.400.jpg', '2 pavés de dromadaire marinés', '0,272 kg', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Fromage Frais nature', 2, 1, 'https://static.openfoodfacts.org/images/products/027/869/122/0015/front.6.400.jpg', 'Fromage frais, Fromage blanc', '1 kg', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('2 Galettes de Céréales à la Provencale', 3, 1, 'https://static.openfoodfacts.org/images/products/027/880/087/2558/front.12.400.jpg', 'Plat préparé à base de quinoa blanc et rouge, boulghour et petits légumes.', '200 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Brochettes dagneau St George', 3, 1, 'https://static.openfoodfacts.org/images/products/028/008/003/7985/front.6.400.jpg', 'Morceaux à brochette', '260 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('All Black Angus Succulent pavé de Rumsteak de Nouvelle-Zélande', 5, 1, 'https://static.openfoodfacts.org/images/products/028/009/003/1881/front.6.400.jpg', 'Viande bovine Angus Rumsteak Pavé à griller', '0,174 kg', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('4 filled muffins - salted caramel', 5, 1, 'https://static.openfoodfacts.org/images/products/028/031/800/0804/front_en.7.400.jpg', 'salted caramel muffin', '320g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pain complet Bio', 5, 1, 'https://static.openfoodfacts.org/images/products/028/095/402/1911/front.11.400.jpg', 'Pain complet Bio', '498 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Saint Albray® (26 % MG)', 2, 1, 'https://static.openfoodfacts.org/images/products/028/551/402/0601/front.18.400.jpg', 'Fromage industriel de France, à pâte molle à croûte lavée, au lait pasteurisé de vache', '166 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Saucisson sec au jambon', 3, 1, 'https://static.openfoodfacts.org/images/products/028/689/204/7297/front.7.400.jpg', 'Petit saucisson sec au jambon au poivre', '350 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Comté AOP Bio (34 % MG) ', 2, 1, 'https://static.openfoodfacts.org/images/products/028/751/601/9812/front.4.400.jpg', 'Fromage de France AOP, à pâte pressée cuite, au lait cru de vache, issu de lagriculture biologique', '210 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Magret de Canard du Sud-Ouest IGP', 5, 1, 'https://static.openfoodfacts.org/images/products/029/073/004/1330/front.5.400.jpg', 'Canard', '0,352 kg', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('British pork loin steaks', 2, 1, 'https://static.openfoodfacts.org/images/products/029/152/300/4563/front_en.3.400.jpg', 'pork loin steaks', '0.435g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('2 x Bavette dAloyau', 5, 1, 'https://static.openfoodfacts.org/images/products/029/224/603/5421/front.5.400.jpg', 'Viande bovine à griller', '250 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Merguez forte à griller', 4, 1, 'https://static.openfoodfacts.org/images/products/029/228/201/8563/front.15.400.jpg', 'Merguez', '318 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('reblochon de savoie A.O.P.', 3, 1, 'https://static.openfoodfacts.org/images/products/029/234/300/4702/front_en.11.400.jpg', 'Soft ripened cheese made from raw cows milk', '235g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('2 Pavés Grand Cru', 5, 1, 'https://static.openfoodfacts.org/images/products/029/243/004/6646/front.7.400.jpg', 'Rumsteck viande bovine race Limousine', '274 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('2 tournedos dans le filet', 3, 1, 'https://static.openfoodfacts.org/images/products/029/245/106/5510/front.6.400.jpg', 'Tournedos dans le filet', '250 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('2 Tournedos dans le filet', 4, 1, 'https://static.openfoodfacts.org/images/products/029/245/106/5923/front.10.400.jpg', 'Viande bovine à griller', '258 g (2 portions)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('2 tournedos dans le filet', 5, 1, 'https://static.openfoodfacts.org/images/products/029/245/106/9181/front.7.400.jpg', 'Tournedos dans le filet', '264 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('1 Bifteck', 2, 1, 'https://static.openfoodfacts.org/images/products/029/247/102/0476/front.7.400.jpg', 'Viande bovine à griller', '146 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Cailles Nature', 4, 1, 'https://static.openfoodfacts.org/images/products/029/391/303/0374/front.4.400.jpg', 'Cailles PAC', '618 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Free range chicken thighs', 4, 1, 'https://static.openfoodfacts.org/images/products/029/566/200/4538/front_en.5.400.jpg', 'Chicken thighs', '0.648kg', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('4 flavoursome chicken thighs', 5, 1, 'https://static.openfoodfacts.org/images/products/029/568/800/5137/front_en.5.400.jpg', 'Chicken thighs', '0.584kg', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Rump steak', 2, 1, 'https://static.openfoodfacts.org/images/products/029/582/800/6239/front_en.3.400.jpg', 'Rump', '0.271kg', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('2 hand cut Welsh lamb rack cutlets', 3, 1, 'https://static.openfoodfacts.org/images/products/029/635/700/3980/front_en.3.400.jpg', 'Lamb rack cutlets', '0.234kg', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Comté AOP (34% MG) - 323 g -  Leader Price', 2, 1, 'https://static.openfoodfacts.org/images/products/029/728/302/0867/front.8.400.jpg', 'Fromage de France AOP, à pâte pressée cuite, au lait cru de vache', '323 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Emmental suisse AOP (31 % MG) ', 3, 1, 'https://static.openfoodfacts.org/images/products/029/913/403/1756/front.7.400.jpg', 'Fromage de suisse AOP, à pâte pressée cuite, au lait cru de vache', '324 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Outdoor bred British pork - loin steaks', 4, 1, 'https://static.openfoodfacts.org/images/products/029/968/600/3126/front_en.3.400.jpg', 'pork loin steaks', '0.468kg', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Ground Cumin', 2, 1, 'https://static.openfoodfacts.org/images/products/03011355/front_en.3.400.jpg', 'Cumin', '43g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Salad Tomatoes', 1, 1, 'https://static.openfoodfacts.org/images/products/03041314/front_en.4.400.jpg', 'Tomatoes', '6', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Amandise', 1, 1, 'https://static.openfoodfacts.org/images/products/031/722/021/8093/front.6.400.jpg', 'Pâte à tartiner aux amandes', '200g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Sirop de Figue Épais', 2, 1, 'https://static.openfoodfacts.org/images/products/031/922/051/4267/front.7.400.jpg', 'Sirop de Figue Épais', '190 ml', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Avocados ', 4, 1, 'https://static.openfoodfacts.org/images/products/03201985/front_en.6.400.jpg', 'Avocados', '2', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Peppery babyleaf rocket salad', 1, 1, 'https://static.openfoodfacts.org/images/products/03230916/front_en.6.400.jpg', 'Salad', '65g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('3 Pack Mixed Peppers', 2, 1, 'https://static.openfoodfacts.org/images/products/03231296/front_en.7.400.jpg', 'Peppers', '500g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Edamame and Pea Salad', 5, 1, 'https://static.openfoodfacts.org/images/products/03232064/front_en.8.400.jpg', 'Salad', '200 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Vegetables & Beansprout stir fry', 4, 1, 'https://static.openfoodfacts.org/images/products/03232149/front_en.5.400.jpg', 'Vegetables & Beansprout stir fry', '302g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Reduced Fat French Dressing', 1, 1, 'https://static.openfoodfacts.org/images/products/03233016/front_en.3.400.jpg', 'French Dressing', '150 ml', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Mixed vegetables ', 1, 1, 'https://static.openfoodfacts.org/images/products/03234136/front_en.3.400.jpg', 'mixed vegetables', '180g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Peppery watercress, spinash & rocket salad', 2, 1, 'https://static.openfoodfacts.org/images/products/03234761/front_en.7.400.jpg', 'watercress, spinash & rocket salad', '80g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Baby button mushrooms ', 1, 1, 'https://static.openfoodfacts.org/images/products/03239315/front_en.3.400.jpg', 'mushrooms', '200g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Mediterranean roasting vegetables ', 1, 1, 'https://static.openfoodfacts.org/images/products/03242759/front_en.10.400.jpg', 'Vegetables', '475g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pure Sunflower Oil', 5, 1, 'https://static.openfoodfacts.org/images/products/03243756/front_en.5.400.jpg', 'Sunflower oil', '500ml', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('British Maris Piper Potatoes', 5, 1, 'https://static.openfoodfacts.org/images/products/03248461/front_en.3.400.jpg', 'Piper potatoes', '2 kg', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Tuna chunks in brine', 2, 1, 'https://static.openfoodfacts.org/images/products/03248980/front_en.12.400.jpg', 'Skipjack tuna chunks in brine', '160 g (120 g drained)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Cornish Brie', 5, 1, 'https://static.openfoodfacts.org/images/products/03254295/front_en.7.400.jpg', 'Cornish Brie', '160g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Edamame stir fry', 1, 1, 'https://static.openfoodfacts.org/images/products/03265123/front_en.11.400.jpg', 'Edamame stir fry', '280 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Miel de montagne', 2, 1, 'https://static.openfoodfacts.org/images/products/032/822/012/5663/front.7.400.jpg', 'Miel', '500 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('KitKat', 2, 1, 'https://static.openfoodfacts.org/images/products/03424607/front_en.18.400.jpg', 'Crisp Wafers in Milk Chocolate', '1.5 OZ (42 g)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Reeses Pieces', 5, 1, 'https://static.openfoodfacts.org/images/products/03424801/front.7.400.jpg', 'Reeses Pieces beurre de cacahuètes', '43 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Mustard with Provence Herbs', 5, 1, 'https://static.openfoodfacts.org/images/products/034/412/600/1016/front_en.4.400.jpg', 'Mustard', '200 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Milk Chocolate Peanut Butter Cups', 3, 1, 'https://static.openfoodfacts.org/images/products/03444009/front_en.24.400.jpg', 'Milk Chocolate Peanut Butter Cups', '1.5 oz (42 g)', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Brotes de judía mungo en conserva ecológicas &quot;Carrefour Bio&quot;', 2, 1, 'https://static.openfoodfacts.org/images/products/035/600/705/4400/front.9.400.jpg', 'Brotes de judía mungo en conserva ecológicas', '330 g (neto), 175 (escurrido), 370 ml', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Burger à loignon surgelés', 1, 1, 'https://static.openfoodfacts.org/images/products/037/000/919/0058/front.6.400.jpg', 'Burgers à loignon', '10 x 80 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Wasa léger', 4, 1, 'https://static.openfoodfacts.org/images/products/038/070/242/1571/front_en.6.400.jpg', 'Tartine croustillante au seigle fin et délicat', '270 gr', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('the Original', 1, 1, 'https://static.openfoodfacts.org/images/products/03808306/front_en.6.400.jpg', 'Potato Crisps', '0.67oz (19g)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Fischer Tradition', 3, 1, 'https://static.openfoodfacts.org/images/products/03866221/front.9.400.jpg', 'bière blonde pur', '33 cl', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Croustipate', 2, 1, 'https://static.openfoodfacts.org/images/products/039/052/600/4003/front.7.400.jpg', 'Carrés feuilletés', '200 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Lasagne', 5, 1, 'https://static.openfoodfacts.org/images/products/03989951/front.9.400.jpg', 'Teigwaren aus Hartweizengrieß', '500 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Chocolate frog', 3, 1, 'https://static.openfoodfacts.org/images/products/040/001/236/5423/front_en.12.400.jpg', 'Chocolate frog', '150g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('M&Ms Milk Chocolate Candies', 5, 1, 'https://static.openfoodfacts.org/images/products/04003100/front_en.10.400.jpg', 'M&Ms', '1.69 oz', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('M&MS Peanut Butter - M&MS Au Beurre De Cacahuète', 4, 1, 'https://static.openfoodfacts.org/images/products/04014407/front_en.16.400.jpg', 'M&MS Au Beurre De Cacahuète', '46.2 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Dark Chocolate 70% Cocoa', 2, 1, 'https://static.openfoodfacts.org/images/products/04048121/front_en.12.400.jpg', 'Dark Chocolate 70% Cocoa', '100g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('M&Ms Minis', 2, 1, 'https://static.openfoodfacts.org/images/products/04056704/front_en.3.400.jpg', 'Candy-coated chocolates', '1.24 oz, 35.2 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Mambo', 1, 1, 'https://static.openfoodfacts.org/images/products/041/129/060/0014/front.3.400.jpg', 'Gâteau à la crème vanille (32%) et fantaisie au cacao (20%)', '90 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Céréales CROQUANTES Caramel et Chocolat', 5, 1, 'https://static.openfoodfacts.org/images/products/04124897/front.3.400.jpg', 'Céréales CROQUANTES Caramel et Chocolat', '500 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Branche Loriginale', 5, 1, 'https://static.openfoodfacts.org/images/products/04148623/front.3.400.jpg', 'Branche aux chocolat,', '30 branches', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Frenchs Smooth & Spicy', 3, 1, 'https://static.openfoodfacts.org/images/products/041/500/841/37/front.6.400.jpg', 'moutarde', '340 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Almond Milk Unsweetened', 1, 1, 'https://static.openfoodfacts.org/images/products/04154891/front_en.10.400.jpg', 'Unsweetened almond milk ', '1', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Nutella', 4, 1, 'https://static.openfoodfacts.org/images/products/04158019/front.3.400.jpg', 'Pâtes à tartiner aux noisettes et au cacao', '780 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('LEscargot', 3, 1, 'https://static.openfoodfacts.org/images/products/04176275/front.7.400.jpg', 'Chocolats', '100 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Buttercrunch', 2, 1, 'https://static.openfoodfacts.org/images/products/041/770/056/80/front_en.10.400.jpg', 'Buttercrunch with almonds', '10 oz (284 g)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pisse-Dru 2011', 5, 1, 'https://static.openfoodfacts.org/images/products/04247418/front.8.400.jpg', 'Beaujolais', '75 cl', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('International café hazelnut', 5, 1, 'https://static.openfoodfacts.org/images/products/04348706/front_en.3.400.jpg', 'Artificially flavored café-style beverage mix', '9 OZ', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Parmigiano reggiano parmesan affiné 22 mois râpé frais', 5, 1, 'https://static.openfoodfacts.org/images/products/04612449/front.6.400.jpg', 'Fromage râpé frais en poudre au lait cru de vache à pâte dure cuite', '60 g e', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Le Carré', 5, 1, 'https://static.openfoodfacts.org/images/products/046/221/081/8071/front.8.400.jpg', 'Carré de lEst', '230 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Dole Pineapple Chunks in Juice', 1, 1, 'https://static.openfoodfacts.org/images/products/046/855/401/3707/front_en.7.400.jpg', 'pineapple in juice', '227 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Loacker Lampone Yogurt ', 2, 1, 'https://static.openfoodfacts.org/images/products/04803805/front.12.400.jpg', 'Wafer con crema al lampone e yougurt', '150g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Sauce for bolognese extra mushroom', 3, 1, 'https://static.openfoodfacts.org/images/products/04886556/front_en.3.400.jpg', 'Sauce for bolognese', '320g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pop Tarts Hot Fudge Sundae', 1, 1, 'https://static.openfoodfacts.org/images/products/049/231/140/6204/front_en.7.400.jpg', 'Toaster pastries', '20.3 oz', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Atomic', 1, 1, 'https://static.openfoodfacts.org/images/products/04930259/front.7.400.jpg', 'Bonbons', '260 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Dasani purified water', 5, 1, 'https://static.openfoodfacts.org/images/products/04997704/front_en.6.400.jpg', 'Water', '591 ml', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Poppadoms - lime & coriander chutney', 2, 1, 'https://static.openfoodfacts.org/images/products/050/032/842/8581/front_en.7.400.jpg', 'Lime and coriander chutney flavour potato & gram flour snack', '82,5 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Peacock new crop 100% pure thai fragant rice', 1, 1, 'https://static.openfoodfacts.org/images/products/050/102/250/01503/front_en.6.400.jpg', 'Thai rice', '10 kg', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Backhefe', 5, 1, 'https://static.openfoodfacts.org/images/products/05115457/front.5.400.jpg', 'Trockenbackhefe', '7 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Bacon', 3, 1, 'https://static.openfoodfacts.org/images/products/054/001/414/72097/front.9.400.jpg', 'Charcuterie', '190 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Medium Pork Pie', 5, 1, 'https://static.openfoodfacts.org/images/products/0555678/front_en.9.400.jpg', 'Pork Pie', '145g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Twinings Thé vert menthe intense', 4, 1, 'https://static.openfoodfacts.org/images/products/055/953/900/247/front.5.400.jpg', 'thé vert', '20 sachets de 32g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Silhouette', 5, 1, 'https://static.openfoodfacts.org/images/products/056/800/124/56/front.4.400.jpg', 'Yaourt aux Fraises 0 %', '650 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Fleur de Sel de lÎle de Ré', 4, 1, 'https://static.openfoodfacts.org/images/products/05760626/front.3.400.jpg', '100% fleur de sel marin gris alimentaire', '125 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Jet-Puffed', 2, 1, 'https://static.openfoodfacts.org/images/products/060/069/966/1447/front_en.8.400.jpg', 'Marshmallow Creme', '7 oz (198 g)', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Kind Fruit and Nut', 4, 1, 'https://static.openfoodfacts.org/images/products/060/265/217/0065/ingredients_en.4.400.jpg', 'Nut delight ', '40 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('almond cashew with flax', 5, 1, 'https://static.openfoodfacts.org/images/products/060/265/217/0164/front_en.9.400.jpg', 'Granola Bar', '1', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Almond & Coconut gluten Free Nut Bar', 3, 1, 'https://static.openfoodfacts.org/images/products/060/265/217/6616/front.7.400.jpg', 'Barre damande', '40 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Chocolat Noir, Noix & Sel de Mer', 4, 1, 'https://static.openfoodfacts.org/images/products/060/265/217/6753/front_en.30.400.jpg', 'Dark Chocolat, Nuts & Sea Salt Bar', '40 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Whipped Topping', 3, 1, 'https://static.openfoodfacts.org/images/products/060/538/856/3040/front_en.3.400.jpg', 'Whipped Topping', '2 Tbsp', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Great Value Regular Potato Crisps', 4, 1, 'https://static.openfoodfacts.org/images/products/060/538/888/8150/front.6.400.jpg', 'Salgadinho de Batata Original', '150g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Miltons Original Multi-grain baked crackers', 1, 1, 'https://static.openfoodfacts.org/images/products/060/654/194/0012/front_en.4.400.jpg', 'Crackers', '170 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Crispy cacao & cinnamon kale chips', 1, 1, 'https://static.openfoodfacts.org/images/products/060/961/384/4454/front.5.400.jpg', 'Chips de kalé au cacao et à la cannelle', '60 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Icelandic Toasted Porter', 5, 1, 'https://static.openfoodfacts.org/images/products/060/972/894/9259/front_en.18.400.jpg', 'Icelandic Toasted Porter', '33 cl', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Icelandic Arctic Pale Ale', 5, 1, 'https://static.openfoodfacts.org/images/products/060/972/894/9280/front_en.11.400.jpg', 'Icelandic Arctic Pale Ale', '33 cl', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Icelandic White Ale', 4, 1, 'https://static.openfoodfacts.org/images/products/060/972/894/9310/front_en.8.400.jpg', 'Icelandic White Ale', '33 cl', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Red Bull', 4, 1, 'https://static.openfoodfacts.org/images/products/061/126/981/8994/front_en.4.400.jpg', 'Gives You wing ', '355mL', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Grand Arôme', 1, 1, 'https://static.openfoodfacts.org/images/products/061/211/478/8257/front.14.400.jpg', 'Cacao fortement dégraissé en poudre sucré', '800 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('nairns - gluten free wholegrain crackers', 5, 1, 'https://static.openfoodfacts.org/images/products/061/232/203/0070/front_en.3.400.jpg', 'gluten free wholegrain crackers', '114 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Sirop erable', 5, 1, 'https://static.openfoodfacts.org/images/products/061/251/131/8903/front.5.400.jpg', 'Sirop erable', '1l', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Iced Tea with Lemon Flavour', 1, 1, 'https://static.openfoodfacts.org/images/products/061/300/873/0697/front_en.31.400.jpg', 'Iced Tea with Lemon Flavour', '500 ml', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Original green tea with honey', 2, 1, 'https://static.openfoodfacts.org/images/products/061/300/873/0734/front.13.400.jpg', 'thé glacé', '500 ml', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pomegrenate Green Tea', 2, 1, 'https://static.openfoodfacts.org/images/products/061/300/873/0758/front.10.400.jpg', 'Boisson rafraîchissante', '500 ml', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Blueberry white tea', 4, 1, 'https://static.openfoodfacts.org/images/products/061/300/873/0772/front.10.400.jpg', 'boisson au thé aromatisée', '500 ml', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pomegranate Green Tea', 3, 1, 'https://static.openfoodfacts.org/images/products/061/300/873/3858/front.7.400.jpg', 'Boisson rafraîchissante, aux extraits de thé vert et grenade', '355 ml', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Lite Half Ice-Tea & Half Lemonade', 4, 1, 'https://static.openfoodfacts.org/images/products/061/300/873/4527/front.3.400.jpg', 'Boisson non pétillante avec sucre et édulcorant', '500 ml', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Arizona green tea zero', 3, 1, 'https://static.openfoodfacts.org/images/products/061/300/873/4541/front.10.400.jpg', 'Boisson au thé vert aromatisée au miel avec édulcorants', '500 ml', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Arizona Iced tea with lemon flavor', 4, 1, 'https://static.openfoodfacts.org/images/products/061/300/873/5784/front_en.5.400.jpg', 'Iced tea', '11.5 fl oz', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Arizona Fruit Punch', 4, 1, 'https://static.openfoodfacts.org/images/products/061/300/873/9027/front_en.8.400.jpg', 'Boisson rafraîchissante avec 10% de teneur en fruits', '500 ml e', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Strawberry Lemonade', 5, 1, 'https://static.openfoodfacts.org/images/products/061/300/873/9119/front.10.400.jpg', 'Boisson rafraichissante aux jus de fruits', '500 ml', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('American Eagle Ginseng Tea (TM)', 5, 1, 'https://static.openfoodfacts.org/images/products/061/330/200/2018/ingredients_en.4.400.jpg', 'ginseng tea', '36g  20 tea bags x 1.8g ', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Beurre de cacahuète creamy peanut butter', 2, 1, 'https://static.openfoodfacts.org/images/products/061/366/802/4501/front.3.400.jpg', 'beurre darachides', '510 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Riceworks - Gourmet Brown Rice Crisps', 2, 1, 'https://static.openfoodfacts.org/images/products/061/667/609/2210/front_en.3.400.jpg', 'Rice Crisps', '155 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Miso blanc à la citrouille et legumes', 2, 1, 'https://static.openfoodfacts.org/images/products/061/928/680/2002/front.12.400.jpg', 'Soupe au miso', '6 x 60g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Mighty miso instant organic soup - hearty red miso with tofu & ginger', 4, 1, 'https://static.openfoodfacts.org/images/products/061/928/680/3009/front.8.400.jpg', 'Soupe au miso', '6 x 60g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Canada Dry Ginger Ale', 2, 1, 'https://static.openfoodfacts.org/images/products/06203315/front.3.400.jpg', 'Soda au gingembre', '222 ml', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('National Spice and Lentil mix for Hyderabadi Danedar Haleem', 5, 1, 'https://static.openfoodfacts.org/images/products/062/051/400/1890/front_en.4.400.jpg', 'Spice and Lentil mix for Hyderabadi Danedar Haleem', '375 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Spice mix for Murghi', 2, 1, 'https://static.openfoodfacts.org/images/products/062/051/400/6734/front_en.4.400.jpg', 'Spice mix for chicken curry', '50 g x 2', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Qeema', 1, 1, 'https://static.openfoodfacts.org/images/products/062/051/401/0311/front_en.4.400.jpg', 'Spice mix for curry', '100 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('County Dark Ale', 3, 1, 'https://static.openfoodfacts.org/images/products/062/143/300/5044/front_en.6.400.jpg', 'Ale', '473 ml', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Arkell Best Bitter', 3, 1, 'https://static.openfoodfacts.org/images/products/062/143/300/7741/front_en.8.400.jpg', 'Light Beer', '473 ml', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Gryphon Gold', 1, 1, 'https://static.openfoodfacts.org/images/products/062/143/300/9042/front_en.8.400.jpg', 'Beer', '473 ml', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Canada dry', 1, 1, 'https://static.openfoodfacts.org/images/products/06215718/front.7.400.jpg', 'soda gingembre', '2 l', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Rose Water', 3, 1, 'https://static.openfoodfacts.org/images/products/062/369/500/0256/front.7.400.jpg', 'Rosenwasser', '300 ml', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Seva Eau dérable', 2, 1, 'https://static.openfoodfacts.org/images/products/062/784/323/7037/front.6.400.jpg', 'Eau dérable', '1 L', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('TRUSIMAX Creatine', 2, 1, 'https://static.openfoodfacts.org/images/products/062/811/047/5916/front_en.3.400.jpg', 'TRUSIMAX Creatine', '300 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('TRUSIMAX X-Unique', 2, 1, 'https://static.openfoodfacts.org/images/products/062/811/047/5923/front_en.3.400.jpg', 'TRUSIMAX X-Unique', '60', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('TRUSIMAX Glutamen', 1, 1, 'https://static.openfoodfacts.org/images/products/062/811/047/5930/ingredients_en.3.400.jpg', 'TRUSIMAX Glutamen', '434 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('TRUSIMAX CLA', 5, 1, 'https://static.openfoodfacts.org/images/products/062/811/047/5947/front_en.4.400.jpg', 'TRUSIMAX CLA', '90 caps', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('TRAUSIMAX L-Carnitine', 5, 1, 'https://static.openfoodfacts.org/images/products/062/811/047/5961/front_en.3.400.jpg', 'TRAUSIMAX L-Carnitine', '120 caps', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('TRAUSIMAX Whey Balance', 4, 1, 'https://static.openfoodfacts.org/images/products/062/811/047/5978/ingredients_en.3.400.jpg', 'TRAUSIMAX Whey Balance', '908 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('TRAUSIMAX BCAA 10', 4, 1, 'https://static.openfoodfacts.org/images/products/062/811/047/5985/front_en.3.400.jpg', 'TRAUSIMAX BCAA 10', '180 caps', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('TRAUSIMAX TMAX', 3, 1, 'https://static.openfoodfacts.org/images/products/062/811/047/5992/front_en.3.400.jpg', 'TRAUSIMAX TMAX', '120', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('White Demi-Baguettes', 1, 1, 'https://static.openfoodfacts.org/images/products/062/855/303/1410/front_en.3.400.jpg', 'white baguettes', '400 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Almond Dark Chocolate', 3, 1, 'https://static.openfoodfacts.org/images/products/062/891/516/8358/front_en.5.400.jpg', 'Chocolate with almonds', '100 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Crémeux – Vanille', 1, 1, 'https://static.openfoodfacts.org/images/products/062/902/541/0283/ingredients_en.10.400.jpg', 'Yogourt à la vanille', '975 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Moose Juice Extreme Energy Passion Fruit', 3, 1, 'https://static.openfoodfacts.org/images/products/063/415/873/4168/front_en.12.400.jpg', 'Sugar free energy drink', '250ml', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Wholemeal Pittas Enriched with Extra Virgin Olive Oil', 3, 1, 'https://static.openfoodfacts.org/images/products/0635684/front.3.400.jpg', 'Pain pita au blé complet et à lhuile dolive vierge extra', '360 g e (6 * 60 g)', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Organic Green Tea', 2, 1, 'https://static.openfoodfacts.org/images/products/063/604/635/5431/front.5.400.jpg', 'Thé vert organique', '46 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Th Dundee orange marmalade', 2, 1, 'https://static.openfoodfacts.org/images/products/063/779/300/2500/front.7.400.jpg', 'Marmelade dorange de Dundee', '340 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Sweet Onion Relish', 3, 1, 'https://static.openfoodfacts.org/images/products/063/779/301/1694/front.8.400.jpg', 'Confiture doignons', '195 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Turrón Blando', 5, 1, 'https://static.openfoodfacts.org/images/products/063/856/490/2159/front_en.3.400.jpg', 'Turrón blando', '200g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Homard Américain Cuit', 4, 1, 'https://static.openfoodfacts.org/images/products/063/972/000/04/front.8.400.jpg', 'Homard', '300 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Prince goût chocolat', 1, 1, 'https://static.openfoodfacts.org/images/products/06407179/front.3.400.jpg', 'Biscuit au chocolat', '300 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Poàs', 5, 1, 'https://static.openfoodfacts.org/images/products/064/586/000/2216/front.6.400.jpg', 'café', '340 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Bere zăganu blondă', 5, 1, 'https://static.openfoodfacts.org/images/products/064/680/952/1249/front_en.3.400.jpg', 'Bere artizanală', '0.5 l', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Kokomen', 1, 1, 'https://static.openfoodfacts.org/images/products/064/843/610/0682/front_en.4.400.jpg', 'Ramen Spicy Chicken Flavor', '120 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Kokomen', 5, 1, 'https://static.openfoodfacts.org/images/products/064/843/610/0699/front_en.4.400.jpg', 'Ramen Spicy Chicken Flavor', '600 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Border Luxury chocolate biscuit barrel', 4, 1, 'https://static.openfoodfacts.org/images/products/065/265/500/0814/front_en.3.400.jpg', 'Biscuits with chocolate', '600 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Jasmine', 2, 1, 'https://static.openfoodfacts.org/images/products/065/378/300/0110/front_en.5.400.jpg', 'Organic loose leaf green tea', '100 g, 3.53 oz', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Creamy Havarti', 5, 1, 'https://static.openfoodfacts.org/images/products/065/485/890/1165/front_en.4.400.jpg', 'Creamy Cheese', '8 OZ / 226 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Original Black Tea Unsweetened', 4, 1, 'https://static.openfoodfacts.org/images/products/065/487/100/9039/front_en.3.400.jpg', 'Unsweetened Black Tea', '33.8 FL OZ', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Choc Chunk Shortbread', 4, 1, 'https://static.openfoodfacts.org/images/products/065/576/200/1040/front.6.400.jpg', 'Sablés aux pépites de chocolat', '160 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Vanilla Crunch Granola', 5, 1, 'https://static.openfoodfacts.org/images/products/065/585/200/0267/front_en.5.400.jpg', 'Granola', '395 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Organic Peach Tea', 3, 1, 'https://static.openfoodfacts.org/images/products/065/762/252/7790/front_en.7.400.jpg', 'organic bottled tea', '16.9 fl oz', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pomegranate Blue', 2, 1, 'https://static.openfoodfacts.org/images/products/065/762/272/1006/front_en.8.400.jpg', 'Flavored organic juices from concentrate with other natural flavors', '16.9 FL OZ (500mL)', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Organic lemon tea', 5, 1, 'https://static.openfoodfacts.org/images/products/065/762/281/4043/front_en.8.400.jpg', 'lemon tea', '16.9 fl oz (500 ml)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Elephant Vanilla Chai', 5, 1, 'https://static.openfoodfacts.org/images/products/065/856/470/3983/front.9.400.jpg', 'Gewürzteemischung mit Schwarzteepulver und Gewürzen', '398 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Morning Rounds, Pita Break', 3, 1, 'https://static.openfoodfacts.org/images/products/066/416/410/0299/front_en.3.400.jpg', 'Pita bread pomme-cannelle', '900 gr', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Colmans Mustard', 2, 1, 'https://static.openfoodfacts.org/images/products/066/780/300/0752/front.4.400.jpg', 'Moutarde en poudre Colman', '113 g.', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('PG Tips', 1, 1, 'https://static.openfoodfacts.org/images/products/066/780/300/0905/front.5.400.jpg', 'Thé en sachet', '125 g e', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Squirrel Droppings', 3, 1, 'https://static.openfoodfacts.org/images/products/066801/front_en.10.400.jpg', 'Chocolate peanuts', '4 oz', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Homard américain cuit congelé dans leau salé', 3, 1, 'https://static.openfoodfacts.org/images/products/067/534/300/0064/front.9.400.jpg', 'homard', '300 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Diet Coke™ / Coke Diète🅫', 3, 1, 'https://static.openfoodfacts.org/images/products/06792800/front_en.9.400.jpg', 'Sugar-Free Cola', '355ml', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pure Life', 3, 1, 'https://static.openfoodfacts.org/images/products/06827465/front_en.12.400.jpg', 'Purified water enhanced with minerals', '16.9 fl. oz (500 mL)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Spring water', 5, 1, 'https://static.openfoodfacts.org/images/products/068/826/702/2760/front_en.8.400.jpg', 'natural spring water', '1', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Peeled Baby-Cut Carrots', 5, 1, 'https://static.openfoodfacts.org/images/products/068/826/704/3918/front_en.6.400.jpg', 'Carrots', '1 lb', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Sponge Cake Dessert Shells', 2, 1, 'https://static.openfoodfacts.org/images/products/068/826/708/8612/front_en.8.400.jpg', 'Sponge Cake', '5 oz.', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Bacon Hummus', 5, 1, 'https://static.openfoodfacts.org/images/products/068/826/715/5505/front_en.7.400.jpg', 'Hummus with bacon', '284 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('LiquiD3 Tropical Cherry Flavour 5000 IU', 4, 1, 'https://static.openfoodfacts.org/images/products/068/907/606/0653/front_en.7.400.jpg', 'Vitamin D3', '437 ml', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Fage Total 2% with Cherry', 2, 1, 'https://static.openfoodfacts.org/images/products/068/954/408/1562/front_en.10.400.jpg', 'Low fat (2% milkfat) greek strained yogurt with cherry', '5.3 oz (150 g)', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pepsi', 2, 1, 'https://static.openfoodfacts.org/images/products/06942508/front.8.400.jpg', 'Sodas au cola', '355 ml', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Cod liver oil (softgel)', 4, 1, 'https://static.openfoodfacts.org/images/products/069/685/980/0337/front_en.3.400.jpg', 'Cod liver oil', '500mg', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Graines de chanvre crues décortiquées', 4, 1, 'https://static.openfoodfacts.org/images/products/069/765/820/1110/front_en.3.400.jpg', 'Graines de chanvre crues', '800 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Hemp Hearts', 3, 1, 'https://static.openfoodfacts.org/images/products/069/765/820/1264/front_en.3.400.jpg', 'Hemp Hearts', '28 oz', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Palets aux Perles de Chocolat', 3, 1, 'https://static.openfoodfacts.org/images/products/069/789/325/3264/front.8.400.jpg', 'Palets aux perles de chocolat', '125 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('St. Bernardus Abt 12', 5, 1, 'https://static.openfoodfacts.org/images/products/069/917/648/3313/front_en.4.400.jpg', 'Abbey Ale', '11.2 fl oz', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Salsa de la Muerte with Chipotle ', 4, 1, 'https://static.openfoodfacts.org/images/products/070/094/170/0099/front.3.400.jpg', 'Sauce au piment Chipotle', '147ml', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Fynbos Honey Cape West Coast', 2, 1, 'https://static.openfoodfacts.org/images/products/070/162/231/2006/front_en.6.400.jpg', 'Miel de Fynbos de la côte ouest du Cap - Fynbos Honey Cape West Coast', '500 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Betteraves rouges cuites sous vide', 1, 1, 'https://static.openfoodfacts.org/images/products/070/630/670/4740/front.7.400.jpg', 'Betteraves rouges cuites', '500 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Ginger beer', 1, 1, 'https://static.openfoodfacts.org/images/products/070/650/256/8382/front_en.5.400.jpg', 'Lightly sparkling, warming, ginger spiked drink', '275 ml', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Wild Maine Blueberry Jam', 5, 1, 'https://static.openfoodfacts.org/images/products/071/138/100/0083/front_en.3.400.jpg', 'Blueberry Jam', '12.5 oz.', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Egg Lands best', 3, 1, 'https://static.openfoodfacts.org/images/products/071/514/111/3563/front_en.6.400.jpg', 'Grade A extra large eggs', '18 GRADE A EGGS 40.5 OZ (2 LBS 8.5 OZ) 1.15kg', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Dark Chocolate', 1, 1, 'https://static.openfoodfacts.org/images/products/071/627/000/1776/front_en.7.400.jpg', 'Dark Chocolate', '90 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Meijer Low Fat Honey Grahams', 3, 1, 'https://static.openfoodfacts.org/images/products/071/928/398/5064/front_en.6.400.jpg', 'Graham Crackers', '14.4 oz', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('spaghetti in tomato sauce', 2, 1, 'https://static.openfoodfacts.org/images/products/072/051/602/0261/front_en.5.400.jpg', 'spaghetti in tomato sauce', '220 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Goslings Stormy Ginger Beer', 4, 1, 'https://static.openfoodfacts.org/images/products/072/109/419/9707/front_en.9.400.jpg', 'Ginger Beer', '12 fl oz', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Shot Energy Gel Mocha', 3, 1, 'https://static.openfoodfacts.org/images/products/072/225/217/6226/front_en.6.400.jpg', 'Energy Gel', '34g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Social Club Original', 5, 1, 'https://static.openfoodfacts.org/images/products/072/515/600/3667/front.3.400.jpg', 'Salty biscuits', '9 packs', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Mediterranean chips', 3, 1, 'https://static.openfoodfacts.org/images/products/072/822/912/3811/front.3.400.jpg', 'Chips de légumes exotiques au goût méditerranéen', '110 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('100 % cacao', 5, 1, 'https://static.openfoodfacts.org/images/products/07283244/front.9.400.jpg', 'Chocolat en poudre', '250 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Topitos Linaza', 4, 1, 'https://static.openfoodfacts.org/images/products/073/039/901/8255/front.13.400.jpg', 'Totopos de maíz con linaza y ajonjolí', '65 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Rhubarb', 5, 1, 'https://static.openfoodfacts.org/images/products/073/112/372/9348/front_en.6.400.jpg', 'Lightly sparkling crisp rhubarb drink', '275 ml', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Banana Ketchup', 3, 1, 'https://static.openfoodfacts.org/images/products/073/355/391/1553/front.7.400.jpg', 'Ketchup de banane', '155 ml', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Nutritional yeast flakes', 3, 1, 'https://static.openfoodfacts.org/images/products/073/373/902/4558/front_en.19.400.jpg', 'Nutritional yeast', '1', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Grade AA Unsalted Butter', 5, 1, 'https://static.openfoodfacts.org/images/products/073/709/400/5054/front_en.7.400.jpg', 'Butter', '453g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Half & Half', 4, 1, 'https://static.openfoodfacts.org/images/products/073/709/401/4308/front_en.8.400.jpg', 'Half & Half', '33 fl oz.', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Vinaigre de riz pour sushi (すし酢) Mizkan', 1, 1, 'https://static.openfoodfacts.org/images/products/073/752/732/78/front.6.400.jpg', 'Vinaigre pour sushi', '500 ml', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('sunbutter', 5, 1, 'https://static.openfoodfacts.org/images/products/073/753/919/1205/front_en.3.400.jpg', 'sunflower spread', '16oz', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Stir-Fry Rice Noodles', 5, 1, 'https://static.openfoodfacts.org/images/products/073/762/806/4502/front_en.6.400.jpg', 'Rice Noodles', '155 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Dolly', 4, 1, 'https://static.openfoodfacts.org/images/products/073/792/544/3925/front_en.3.400.jpg', 'India Pale Ale', '.33l', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Harina de maíz blanco', 5, 1, 'https://static.openfoodfacts.org/images/products/073/990/700/0010/ingredients_en.7.400.jpg', 'Harina de maíz', '1 kg', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Horizon Organic Fat-Free Milk', 5, 1, 'https://static.openfoodfacts.org/images/products/074/236/526/4054/front_en.6.400.jpg', 'Fat-Free Milk', '1.89 L', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Dark chocolate with caramelised sesame seeds', 2, 1, 'https://static.openfoodfacts.org/images/products/074/343/400/2522/front_en.5.400.jpg', 'Sesame dark chocolate', '100 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Promax LS protein bar honey peanut', 3, 1, 'https://static.openfoodfacts.org/images/products/074/365/918/6694/front_en.7.400.jpg', 'Protein bar', '684 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Royal Chefs Secret Extra Long Grain Basmati Rice', 5, 1, 'https://static.openfoodfacts.org/images/products/074/504/200/0082/front_en.4.400.jpg', 'Basmati Rice', '10 lb', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Intense Dark Midnight Reverie 86% Cacao', 3, 1, 'https://static.openfoodfacts.org/images/products/074/759/960/7257/front_en.6.400.jpg', 'Dark Chocolate', '3.17 oz (90 g)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Ghiradelli Chocolate - Milk & Caramel', 3, 1, 'https://static.openfoodfacts.org/images/products/074/759/960/7646/front_en.5.400.jpg', 'Chocolate - Milk & Caramel', '100 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Intense Dark Cabernet Matinee', 4, 1, 'https://static.openfoodfacts.org/images/products/074/759/961/4828/front_en.7.400.jpg', 'Dark chocolate with a hint of natural blackberry and grape flavor', '3.17 oz (90 g)', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Cherry tango intense dark', 5, 1, 'https://static.openfoodfacts.org/images/products/074/759/961/6839/front_en.6.400.jpg', 'Dark chocolate with bits of cherry and almonds', '3.17 oz (90 g)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Ghirardelli chocolate squares', 5, 1, 'https://static.openfoodfacts.org/images/products/074/759/970/0743/front_en.5.400.jpg', 'Dark chocolate with raspberry filling', '15g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Perrier', 3, 1, 'https://static.openfoodfacts.org/images/products/07478545/front_en.8.400.jpg', 'Sparkling Mineral Water', '25.3 fl. oz (1 pt 9.3 fl. oz) 750 mL', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pure protein - Chocolate deluxe', 1, 1, 'https://static.openfoodfacts.org/images/products/074/982/614/0292/front_en.3.400.jpg', 'chocoalte protein bar', '6', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Sky Flakes crackers', 5, 1, 'https://static.openfoodfacts.org/images/products/075/051/501/8402/front_en.9.400.jpg', 'Biscuit', '25 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Ovaltine Rich Chocolate Mix', 2, 1, 'https://static.openfoodfacts.org/images/products/075/174/603/2120/front_en.4.400.jpg', 'Chocolate Milk Mix', '12 oz', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Daves Gourmet Red Heirloom', 2, 1, 'https://static.openfoodfacts.org/images/products/075/346/901/0027/front_en.10.400.jpg', 'Orgainc Pasta Sauce', '25.5oz (723g)', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('DG Roasted Garlic & Sweet Basil', 1, 1, 'https://static.openfoodfacts.org/images/products/075/346/901/0041/front_en.7.400.jpg', 'Organic Pasta Sauce', '25.5 oz (723g)', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Original Munich Sweet Mustard', 3, 1, 'https://static.openfoodfacts.org/images/products/075/498/211/0492/front_en.6.400.jpg', 'Moutarde sucrée', '285 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Agua purificada Bonafont', 4, 1, 'https://static.openfoodfacts.org/images/products/075/810/400/1712/front.4.400.jpg', 'Agua purificada', '600 ml', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Bonafont Juizzy sabor Limón', 1, 1, 'https://static.openfoodfacts.org/images/products/075/810/400/4485/front_en.16.400.jpg', 'Agua embotellada sabor Limón', '1.5 L', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Aloe Vera Drink Pome-Granata Flavour', 4, 1, 'https://static.openfoodfacts.org/images/products/076/189/863/7982/front_en.5.400.jpg', 'Aloe Vera Drink Pome-Granata Flavour', '500 ml', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Carambar Mystery', 4, 1, 'https://static.openfoodfacts.org/images/products/076/221/016/2489/front.4.400.jpg', 'Confiseries aromatisées', '354 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Kratom', 2, 1, 'https://static.openfoodfacts.org/images/products/076/318/410/3294/front_en.6.400.jpg', '8 nztural thai capsules', '8 capsules', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Grillons Natures', 4, 1, 'https://static.openfoodfacts.org/images/products/076/585/743/6388/front.3.400.jpg', 'Grillons Natures', '30 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Les Poissons Sauvages - Le Haddock', 3, 1, 'https://static.openfoodfacts.org/images/products/076/881/318/5399/front.11.400.jpg', 'Haddock Fumé au Bois de Hêtre', '100 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Vinaigre de Modène balsamique', 3, 1, 'https://static.openfoodfacts.org/images/products/076/885/153/1219/front.11.400.jpg', 'Vinaigre de Modène balsamique', '50 cl', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Terrine de boudin blanc au jus de truffe 1 %', 3, 1, 'https://static.openfoodfacts.org/images/products/07721233/front.10.400.jpg', 'Terrine', '100 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Tad Al', 3, 1, 'https://static.openfoodfacts.org/images/products/07722189/front.3.400.jpg', 'Pois chiches jaunes grillés', '300 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Paysan Cretons saveur maison', 5, 1, 'https://static.openfoodfacts.org/images/products/077/522/555/2237/front.4.400.jpg', 'Cretons saveur maison', '2 x 275 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('On the Border Mexican Grill & Cantina Premium Rounds', 1, 1, 'https://static.openfoodfacts.org/images/products/078/113/871/3115/front_en.4.400.jpg', 'Tortilla chips', '326 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Canada Dry', 1, 1, 'https://static.openfoodfacts.org/images/products/07812208/front.7.400.jpg', 'Club Soda', '355 ml', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Tasty Bite Jaipur Vegetables', 2, 1, 'https://static.openfoodfacts.org/images/products/078/273/300/0051/front_en.12.400.jpg', 'Jaipur Vegetables', '285g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('SmartWater', 5, 1, 'https://static.openfoodfacts.org/images/products/078/616/233/8006/front_en.6.400.jpg', 'vapor distilled water and electrolytes for taste', '33.8 FL OZ (1 QT 1.8 FL OZ) 1 L', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Snake Dog IPA', 2, 1, 'https://static.openfoodfacts.org/images/products/078/624/311/1788/front.6.400.jpg', 'Beer', '12 fl oz', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Raging Bitch', 1, 1, 'https://static.openfoodfacts.org/images/products/078/624/311/9913/front_en.3.400.jpg', 'Belgian-style IPA', '355 ml', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Chocolate Chip Complete Cookie', 2, 1, 'https://static.openfoodfacts.org/images/products/078/769/283/4617/front_en.18.400.jpg', 'Cookies aux Pepites de Chocolat', '2 cookies de 57 g soit 113 g par sachet', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Sichuan Spicy Noodle Sauce - 368 g - Lee Kum Kee', 5, 1, 'https://static.openfoodfacts.org/images/products/07887383/front.7.400.jpg', 'Sauce épicée pour nouilles sichuan', '368 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Wonka Nerds Raisin - Fraise', 5, 1, 'https://static.openfoodfacts.org/images/products/07933624/ingredients_en.3.400.jpg', 'Nerds Fraise Raisin', '46.7 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Nuts and Chocolate Milk', 3, 1, 'https://static.openfoodfacts.org/images/products/079/357/307/1330/front_en.3.400.jpg', 'chocolate milkshake', '', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Nuts & Vanilla Milk', 1, 1, 'https://static.openfoodfacts.org/images/products/079/357/320/5100/front_en.3.400.jpg', 'almond milk', '2 servings', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Chia Bia Milled Chia Seed (Gluten free)', 2, 1, 'https://static.openfoodfacts.org/images/products/079/357/366/9872/front_en.3.400.jpg', 'Milled Chia Seed', '315 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Portland Ketchup Company', 1, 1, 'https://static.openfoodfacts.org/images/products/079/357/389/3604/front_en.7.400.jpg', 'Ketchup', '14oz (397g)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Lemon Creamy Australian Style Lowfat', 2, 1, 'https://static.openfoodfacts.org/images/products/079/570/901/0084/front_en.7.400.jpg', 'Organic Lowfat Yogurt', '6 oz (170 g)', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Maple Creamy Australian Style Lowfat', 2, 1, 'https://static.openfoodfacts.org/images/products/079/570/901/0121/front_en.9.400.jpg', 'Organic Lowfat Yogurt', '6 oz (170 g)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Fresh Cauliflower', 5, 1, 'https://static.openfoodfacts.org/images/products/079/663/128/7018/front_en.10.400.jpg', 'Cauliflower', '1 Head', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Sunflower protein', 1, 1, 'https://static.openfoodfacts.org/images/products/079/713/287/4929/front_en.6.400.jpg', 'Organic sunflower seed protein powder', '150 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Undercurrent', 5, 1, 'https://static.openfoodfacts.org/images/products/079/947/573/7466/front_en.6.400.jpg', 'Oatmeal Pale Ale', '330 ml e', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Tortina White', 3, 1, 'https://static.openfoodfacts.org/images/products/08004202/front.4.400.jpg', 'Gaufrettes fourrées à la noisette et enrobées de chocolat blanc', '63g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Les Sardines à lhuile de tournesol et olives noires', 5, 1, 'https://static.openfoodfacts.org/images/products/08012502/front.6.400.jpg', 'Sardines à lhuile de tournesol', '135 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Coconut Drink', 2, 1, 'https://static.openfoodfacts.org/images/products/080/453/111/1606/front.5.400.jpg', 'Boisson au jus de noix de coco.', '31 cl', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Korean BBQ Original Sauce - Kalbi Marinade', 4, 1, 'https://static.openfoodfacts.org/images/products/080/717/617/3091/front_en.3.400.jpg', 'Marinade pour côtes', '480 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Crispy Seaweed Snacks B!bigo', 2, 1, 'https://static.openfoodfacts.org/images/products/080/717/670/6381/front_en.6.400.jpg', 'seaweed', '5 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Royal Muscato', 4, 1, 'https://static.openfoodfacts.org/images/products/081/088/501/1042/front.3.400.jpg', 'Sweet Sparkling Wine', '75 cl', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Grana Padano gerieben', 1, 1, 'https://static.openfoodfacts.org/images/products/08112133/front.5.400.jpg', 'Grana Padano g. U., gerieben, mindestens 32% Fett i. Tr., mindestens 16 Monate gereift', '100 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Bonne nuit', 3, 1, 'https://static.openfoodfacts.org/images/products/081/163/904/0028/front.6.400.jpg', 'Bio infusion sans cafeïne', '22 g (15 sachets)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Allure Mango', 3, 1, 'https://static.openfoodfacts.org/images/products/081/247/501/2255/front_en.27.400.jpg', 'Mango and Aloe Vera Juice', '500 ml', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Balsamic Vinegar', 5, 1, 'https://static.openfoodfacts.org/images/products/081/257/901/0775/front_en.7.400.jpg', 'Balsamic Vinegar', '200ml', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Coconut oil', 2, 1, 'https://static.openfoodfacts.org/images/products/081/257/901/3042/front_en.15.400.jpg', 'Italian waffle cookie anise', '29 fl oz', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Himalaya Organic Raw Cacao Nibs', 1, 1, 'https://static.openfoodfacts.org/images/products/081/290/701/3652/front_en.5.400.jpg', 'cacao nibs', '5 Oz, 142 g ', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Coconut Almonds', 1, 1, 'https://static.openfoodfacts.org/images/products/081/308/510/0011/front_en.5.400.jpg', 'Coconut Almonds Dark Chocolate', '907 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Salsa Picante de Chile Habanero (Green)', 4, 1, 'https://static.openfoodfacts.org/images/products/081/649/301/0026/front_en.4.400.jpg', 'Hot sauce', '120 mL', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Édulcorant zéro calories - Stevia', 1, 1, 'https://static.openfoodfacts.org/images/products/081/675/700/0633/front_en.4.400.jpg', 'Pure Via Stevia', '800 gr / 800 sachets', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('4 elf', 1, 1, 'https://static.openfoodfacts.org/images/products/081/709/900/4594/front.5.400.jpg', 'Winter warmer ale', '12 fl oz', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Boom Chicka Pop - Sea Salt Popcorn', 5, 1, 'https://static.openfoodfacts.org/images/products/081/878/001/0146/front_en.3.400.jpg', 'Sea salt popcorn', '340 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Banana Walnut Granola clusters', 5, 1, 'https://static.openfoodfacts.org/images/products/081/989/801/2145/front_en.3.400.jpg', 'Crunchy clusters of whole grain rolled oats with banana, walnuts & cinnamon', '311 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('St Hubert Oméga 3 (Sel de Mer, Tartine et Cuisson)', 1, 1, 'https://static.openfoodfacts.org/images/products/08221726/front.5.400.jpg', 'Matière grasse à tartiner et à cuire', '255 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Vin de Glace', 1, 1, 'https://static.openfoodfacts.org/images/products/082/792/400/4057/front.4.400.jpg', 'Vin de glace', '200 mL', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Palate wrecker', 3, 1, 'https://static.openfoodfacts.org/images/products/083/074/600/1319/front.5.400.jpg', 'Hamiltons ale', '12 fl oz', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Miso Soup, Instant Soybean Paste Soup White', 4, 1, 'https://static.openfoodfacts.org/images/products/083/075/700/0233/front_en.4.400.jpg', 'Instant Soybean Paste Soup with real tofu', '30 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Plantain Chips Pacific sea salt', 5, 1, 'https://static.openfoodfacts.org/images/products/083/269/700/0564/front.7.400.jpg', 'Chips de bananes Plantain - Sel marin du Pacifique', '75 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Piña &quot;Banacol&quot;', 2, 1, 'https://static.openfoodfacts.org/images/products/083/361/400/3026/front.5.400.jpg', 'Piña fresca. Tamaño 6', '1 pieza', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('House Cut Fries', 1, 1, 'https://static.openfoodfacts.org/images/products/083/418/300/0997/front_en.3.400.jpg', 'Fries', '28 oz.', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Crispy Onion Rings', 3, 1, 'https://static.openfoodfacts.org/images/products/083/418/300/1055/front_en.7.400.jpg', 'Onion Rings', '311 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Unsweetened Matcha Love', 1, 1, 'https://static.openfoodfacts.org/images/products/083/514/301/0438/front_en.7.400.jpg', 'Unsweetened green tea made with real matcha', '5.2 fl. oz (155 mL)', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Sparkling Blackberry', 3, 1, 'https://static.openfoodfacts.org/images/products/083/609/300/2023/front_en.3.400.jpg', 'Izze', '4', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Barre de Chocolat aux Amandes NewTree', 5, 1, 'https://static.openfoodfacts.org/images/products/083/611/000/2074/front.3.400.jpg', 'Barre de Chocolat aux Amandes NewTree', '30 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Barre Chocolat Quinoa NewTree', 4, 1, 'https://static.openfoodfacts.org/images/products/083/611/000/2609/front.7.400.jpg', 'Barre Chocolat Quinoa Flax ', '30 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Soba noodles', 2, 1, 'https://static.openfoodfacts.org/images/products/083/732/800/0029/front_en.7.400.jpg', 'buckwheat noodles', '270 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pesto alla Napoletana', 4, 1, 'https://static.openfoodfacts.org/images/products/083/894/800/1663/front.3.400.jpg', 'Sauce cuisinée aux tomates et à lail', '190 g e', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Noisettes Grillées Noir', 2, 1, 'https://static.openfoodfacts.org/images/products/083/894/800/7559/front.6.400.jpg', 'Chocolat noir avec éclats de noisettes', '100 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('100% pur jus Orange Sanguine de Sicile', 3, 1, 'https://static.openfoodfacts.org/images/products/08406615/front.5.400.jpg', 'Jus dorange sanguine flash pasteurisé et réfrigéré', '1 l', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Cuisine R-Evolution', 1, 1, 'https://static.openfoodfacts.org/images/products/084/112/507/5067/front.7.400.jpg', 'Ensemble de cuisine moléculaire', '120 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Filets végés', 3, 1, 'https://static.openfoodfacts.org/images/products/084/223/400/1701/front_en.3.400.jpg', 'fish-free filet', '288 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Édulcorant de table', 4, 1, 'https://static.openfoodfacts.org/images/products/084/307/600/0099/ingredients_en.11.400.jpg', 'LAKANTO ', '235 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('vivaloe', 2, 1, 'https://static.openfoodfacts.org/images/products/084/516/300/4287/front.7.400.jpg', 'infusion thé aloe vera ', '500ml', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Vivaloé Honeydew Aloe', 4, 1, 'https://static.openfoodfacts.org/images/products/084/516/300/8407/front_en.18.400.jpg', 'Boisson à laloé véra et au melon', '50 cl', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pink Lemonade Aloe', 5, 1, 'https://static.openfoodfacts.org/images/products/084/516/300/8452/front.3.400.jpg', 'Aloe Vera Limonade Rose', '500 ml e', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Bakarwadi', 5, 1, 'https://static.openfoodfacts.org/images/products/084/620/300/0115/front_en.4.400.jpg', 'Deep Fried Spring Roll', '200 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Wild Oats Organic Strawberry Fruit Spread', 4, 1, 'https://static.openfoodfacts.org/images/products/084/873/700/0937/front_en.6.400.jpg', 'Strawberry fruit spread', '11oz', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Toddy Palms Seed & Jackfruit in syrup', 1, 1, 'https://static.openfoodfacts.org/images/products/084/909/210/1970/front.4.400.jpg', 'Fruits de Palmier et de Jacquier au sirop', '565 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Toddy Palms Seed whole in syrup', 5, 1, 'https://static.openfoodfacts.org/images/products/084/909/210/2038/front.3.400.jpg', 'Fruit de Palmier au sirop ', '565 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Radis piment filament', 5, 1, 'https://static.openfoodfacts.org/images/products/084/909/210/5626/front.7.400.jpg', 'Radis piment filament', '340 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Palm Seeds (Attap) in Heavy Syrup', 4, 1, 'https://static.openfoodfacts.org/images/products/084/909/901/2798/front.5.400.jpg', 'Fruits de Palmier au Sirop léger', '625 d', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Ketchup Classic', 5, 1, 'https://static.openfoodfacts.org/images/products/085/055/100/5616/front_en.3.400.jpg', 'Ketchup', '567 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Rosemary & Olive Oil', 5, 1, 'https://static.openfoodfacts.org/images/products/085/066/800/0870/front_en.11.400.jpg', 'Kettle Cooked Potato Chips', '5 oz (142 g)', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Q Ginger Beer', 2, 1, 'https://static.openfoodfacts.org/images/products/085/169/400/3422/front_en.8.400.jpg', 'Ginger Beer', '9 fl oz', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Arugula Kale Apple Romaine Celery Cucumber Lemon Ginger', 2, 1, 'https://static.openfoodfacts.org/images/products/085/204/300/3643/front_en.3.400.jpg', 'Cold Pressed Juice', '473 mL', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Cheddar Clouds', 5, 1, 'https://static.openfoodfacts.org/images/products/085/240/600/3938/front_en.6.400.jpg', 'White Cheddar Cheese Puffs', '10 oz', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('CitizenM water', 5, 1, 'https://static.openfoodfacts.org/images/products/085/269/500/1301/front.7.400.jpg', 'Eau', '0,5 l', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Beer', 3, 1, 'https://static.openfoodfacts.org/images/products/085/320/500/4041/ingredients_en.5.400.jpg', 'Switchback Ale', '12 fl oz', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('HARD CANDY', 1, 1, 'https://static.openfoodfacts.org/images/products/085/371/500/3190/ingredients_en.3.400.jpg', 'CANDY', '57g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Fondant dérable biologique', 2, 1, 'https://static.openfoodfacts.org/images/products/085/454/100/0117/front.8.400.jpg', 'Fondant dérable biologique', '325 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Original Organic Lager', 4, 1, 'https://static.openfoodfacts.org/images/products/085/531/500/0319/front_en.10.400.jpg', 'Organic bier', '473 ml', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Dal Palak', 3, 1, 'https://static.openfoodfacts.org/images/products/085/535/000/6215/front_en.3.400.jpg', 'Lentils and Spinach', '1', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Zing Bar Peanut Butter Chocolate Chip', 5, 1, 'https://static.openfoodfacts.org/images/products/085/553/100/2043/front_en.7.400.jpg', 'Nutritional bar with peanut butter and chocolate chip', '1.76 OZ., 50g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Bear Naked - Fruit and Nutty Goodie Bag', 1, 1, 'https://static.openfoodfacts.org/images/products/085/641/600/0017/front_en.5.400.jpg', 'Breakfast Granola', '12oz', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Barnana', 2, 1, 'https://static.openfoodfacts.org/images/products/085/768/200/3009/front_en.9.400.jpg', 'Dried Bananas', '305 oz', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Tea lemonade - Marley Mellow mood lite', 3, 1, 'https://static.openfoodfacts.org/images/products/085/774/100/2189/front_en.3.400.jpg', 'Tea lemonade', '16 FL OZ (473 ml)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Green tea with honey', 3, 1, 'https://static.openfoodfacts.org/images/products/085/774/100/2349/front.5.400.jpg', 'Thé vert au miel', '500 ml', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Chocolate shop wine', 1, 1, 'https://static.openfoodfacts.org/images/products/085/784/610/2920/front_en.8.400.jpg', 'Wine', '750 ml', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Carolina Sauce ', 3, 1, 'https://static.openfoodfacts.org/images/products/085/818/300/5028/front_en.8.400.jpg', 'BBQ Sauce ', '16 fl oz', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('ilc', 5, 1, 'https://static.openfoodfacts.org/images/products/085/863/900/0218/front_en.14.400.jpg', 'Bottled water', '0.5 L', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Citrus Chia Power Snacks', 1, 1, 'https://static.openfoodfacts.org/images/products/085/884/700/0017/front_en.3.400.jpg', 'energy bar', '', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Goji Powder', 4, 1, 'https://static.openfoodfacts.org/images/products/085/884/700/0635/front_en.3.400.jpg', 'Himalayan Superfruit', '8 oz ', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Sky Valley Organic Ginger Brew', 2, 1, 'https://static.openfoodfacts.org/images/products/085/886/700/5214/front_en.14.400.jpg', 'Ginger Brew', '12 fl oz', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Hi - protein Pancake & Baking Mix', 5, 1, 'https://static.openfoodfacts.org/images/products/085/907/700/3175/front_en.3.400.jpg', 'pancake mix', '14 servings', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Lemon Ginger', 5, 1, 'https://static.openfoodfacts.org/images/products/085/970/200/3099/front_en.8.400.jpg', 'Cold-pressed coconut oil', '397 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Banana Bread', 5, 1, 'https://static.openfoodfacts.org/images/products/085/988/800/0066/front_en.3.400.jpg', 'bar', '1 bar', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('neat breakfast mix', 2, 1, 'https://static.openfoodfacts.org/images/products/086/162/000/0036/front_en.3.400.jpg', 'neat breakfast mix', '5.5 oz', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('SARAY Premium FOUL MUDAMMAS Fava Beans', 2, 1, 'https://static.openfoodfacts.org/images/products/086/987/500/0405/front.8.400.jpg', 'فول مدمس', '397 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Lemon Puff', 3, 1, 'https://static.openfoodfacts.org/images/products/087/071/900/0208/front.4.400.jpg', 'Traditional puff pastry biscuits sandwiched with a light lemon flavoured cream filling', '200 g (15 biscuits)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Cheddar Cheese Slices', 3, 1, 'https://static.openfoodfacts.org/images/products/087/145/900/0220/front_en.6.400.jpg', 'Vegan Cheese', '220 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Cheddar Style Shreds', 5, 1, 'https://static.openfoodfacts.org/images/products/087/145/900/1029/front_en.3.400.jpg', 'cheddar cheese substitute', '227 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Very Berry Fruits Rouge Organic White Tea', 4, 1, 'https://static.openfoodfacts.org/images/products/087/156/100/1627/front_en.11.400.jpg', 'Berry Tea', '24 bags', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Thé Vert Bio', 2, 1, 'https://static.openfoodfacts.org/images/products/087/156/100/4611/front.5.400.jpg', 'Thé Vert Bio', '24 sachets de 2 grammes', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Big Tree Farms TruRa Drinking Chocolate', 5, 1, 'https://static.openfoodfacts.org/images/products/087/320/410/4443/front_en.3.400.jpg', 'Drinking Chocolate', '340 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Big Tree Farms TruRa Cacao Nibs', 3, 1, 'https://static.openfoodfacts.org/images/products/087/320/410/4733/front_en.10.400.jpg', 'Raw Cacao Nibs', '340 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Plain Double Whipped Shmear', 4, 1, 'https://static.openfoodfacts.org/images/products/087/534/300/0013/front_en.12.400.jpg', 'Plain Whipped Cream Cheese Spread', 'Net Wt 6 oz (170g)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Green & Blacks Organic Butterscotch Milk Chocolate 37% Cocoa', 5, 1, 'https://static.openfoodfacts.org/images/products/08772350/front_en.5.400.jpg', 'Milk Chocolate with Butterscotch ', '100g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Hangtime Pinot Noir', 2, 1, 'https://static.openfoodfacts.org/images/products/087/739/700/1329/front.9.400.jpg', 'Pinot noir', '750 ML', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Darjeeling Tea', 4, 1, 'https://static.openfoodfacts.org/images/products/08774440/front_en.3.400.jpg', 'Tea', '250 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Blue Moon', 2, 1, 'https://static.openfoodfacts.org/images/products/08787337/front_en.3.400.jpg', 'Belgian White', '12 fl oz', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Milkita', 4, 1, 'https://static.openfoodfacts.org/images/products/088/209/522/2679/front_en.10.400.jpg', 'Melon milk candy with calcium', '90 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Coco Pure Premium', 2, 1, 'https://static.openfoodfacts.org/images/products/088/439/400/0552/front_en.21.400.jpg', 'Bebida de coco tierno y trocitos de nata de coco', '1.5 L', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('COCO PURE PREMIUM PIÑA', 2, 1, 'https://static.openfoodfacts.org/images/products/088/439/400/1290/front.3.400.jpg', 'Bebida a base de coco sabor piña', '500 ml', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Honey Almond Granola', 5, 1, 'https://static.openfoodfacts.org/images/products/088/462/310/0343/front_en.7.400.jpg', 'Granola with honey and almonds', '11.2 oz', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('GREAT GRAINS', 5, 1, 'https://static.openfoodfacts.org/images/products/088/491/210/2102/front_en.13.400.jpg', 'HOJUELAS TOSTADAS DE CEREAL MULTIGRANO CON MORAS AZULES Y ALMENDRAS', '382 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('GREAT GRAINS', 3, 1, 'https://static.openfoodfacts.org/images/products/088/491/212/6115/front_en.8.400.jpg', 'HOJUELAS TOSTADAS DE CEREAL MULTIGRANO CON MORAS AZULES Y ALMENDRAS', '453 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('HONEY BUNCHES OF OATS PECAN & MAPLE BROWN SUGAR', 5, 1, 'https://static.openfoodfacts.org/images/products/088/491/225/9363/front_en.8.400.jpg', 'HOJUELAS DE CEREAL MULTIGRANO SABOR A MAPLE CON NUECES', '411 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Mrs. Fields', 1, 1, 'https://static.openfoodfacts.org/images/products/088/600/250/0324/front_en.7.400.jpg', 'Galletas con chispas de Chocolate amargo', '226.8 G', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('HoHos', 5, 1, 'https://static.openfoodfacts.org/images/products/088/810/911/0062/front_en.6.400.jpg', 'Chocolate Cakes Rolled with Creamy Filling', '10 OZ (284g)', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Twinkies', 1, 1, 'https://static.openfoodfacts.org/images/products/088/810/911/0109/front_en.8.400.jpg', 'Golden sponge cake with cream filling', '385 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Nama Yaki-Soba (生 焼そば)', 2, 1, 'https://static.openfoodfacts.org/images/products/088/829/234/0017/front_en.11.400.jpg', 'Stir fry noodles with seasoning sauce base', '480 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Quest Bar Chocolate Chip Cookie Dough Protein Bar', 1, 1, 'https://static.openfoodfacts.org/images/products/088/884/900/1170/front_en.3.400.jpg', 'High protein bar with sweeteners', '60 g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('GoGo Squeez Apple Apple', 3, 1, 'https://static.openfoodfacts.org/images/products/089/000/000/1004/front_en.6.400.jpg', 'Applesauce', '3.2 oz (90 g)', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Syndicate', 2, 1, 'https://static.openfoodfacts.org/images/products/089/054/555/5154/front_en.8.400.jpg', 'Czech Lager', '.5l', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Authentic French Cheese&Cream Broche', 5, 1, 'https://static.openfoodfacts.org/images/products/089/107/100/1078/front_en.7.400.jpg', 'Broche Bread with Cheese', '400 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Baked Fries Cheddar', 3, 1, 'https://static.openfoodfacts.org/images/products/089/180/300/1741/front_en.8.400.jpg', 'Potato & Corn snacks', '4.5 oz', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Red Truck', 1, 1, 'https://static.openfoodfacts.org/images/products/089/285/090/0056/front_en.9.400.jpg', 'pinot noir', '750ml', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Lamb Seekh Kebab', 3, 1, 'https://static.openfoodfacts.org/images/products/089/310/100/1041/front_en.5.400.jpg', 'Lamb Seekh Kebab', '10 oz.', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Popped Corn Chips Sea Salt', 2, 1, 'https://static.openfoodfacts.org/images/products/089/359/400/2105/front_en.4.400.jpg', 'Popped Corn Chips Sea Salt', '5 Oz / 140 g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Greek Yogurt Blueberry on the bottom', 1, 1, 'https://static.openfoodfacts.org/images/products/089/470/001/0052/front_en.7.400.jpg', 'Greek Yogurt', '150g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Chobani Greek Yogurt Raspberry', 5, 1, 'https://static.openfoodfacts.org/images/products/089/470/001/0120/front_en.3.400.jpg', 'Greek Yogurt', '150 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Chobani Greek Yogurt', 2, 1, 'https://static.openfoodfacts.org/images/products/089/470/001/0137/front_en.3.400.jpg', 'Greek Yogurt', '32 OZ', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Chobani Greek Yogurt Pomegranate', 1, 1, 'https://static.openfoodfacts.org/images/products/089/470/001/0151/front_en.6.400.jpg', 'Greek Yogurt', '150g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Chobani Greek Yogurt Black Cherry', 2, 1, 'https://static.openfoodfacts.org/images/products/089/470/001/0168/front_en.3.400.jpg', 'Greek Yogurt', '5.3 OZ (150g)', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Chobani Greek Yogurt Strawberry on the bottom', 4, 1, 'https://static.openfoodfacts.org/images/products/089/470/001/0335/front_en.7.400.jpg', 'Greek Yogurt', '150g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Dr. Zevia Zero Calorie Soda', 1, 1, 'https://static.openfoodfacts.org/images/products/089/477/300/1155/front_en.7.400.jpg', 'Dr. Zevia Soda', '12 fl oz', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Organic Dark Chocolate 60% ', 5, 1, 'https://static.openfoodfacts.org/images/products/089/502/900/0014/front.4.400.jpg', 'chocolat noir biologique 60% cacao', '85g', '',
      '{3}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Siggis Orange & Ginger 0% Milk-fat Icelandic Style Skyr', 5, 1, 'https://static.openfoodfacts.org/images/products/089/824/800/1022/front_en.10.400.jpg', 'Orange & Ginger 0% Milk-fat Icelandic Style Skyr', '5.3 oz. (150 g)', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Vanilla Icelandic style Skyr', 1, 1, 'https://static.openfoodfacts.org/images/products/089/824/800/1077/front_en.5.400.jpg', 'Vanilla strained non-fat yogurt', '5.3 oz, 150 g', '',
      '{1}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Mini Sour JELLY BEANS', 5, 1, 'https://static.openfoodfacts.org/images/products/0992695/front.3.400.jpg', 'bonbons gelifiés', '100g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Mini Fruity JELLY BEANS', 5, 1, 'https://static.openfoodfacts.org/images/products/0992732/front.3.400.jpg', 'bonbons gelifiés', '100g', '',
      '{2}');
  INSERT INTO product
    (name, score, manufacturerId, img, information, quantity,
    barcode, certifications)
  VALUES('Pop Corn', 3, 1, 'https://static.openfoodfacts.org/images/products/099/360/534/7529/front.5.400.jpg', 'Pop corn', '250 g', '',
      '{2}');
