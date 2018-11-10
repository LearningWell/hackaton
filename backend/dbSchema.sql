DROP TABLE IF EXISTS product;
DROP TABLE IF EXISTS manufacturer;
DROP TABLE IF EXISTS certification;

CREATE TABLE certification
(
  certificationId SERIAL PRIMARY KEY,
  name varchar(80) NOT NULL,
  img varchar(80) NOT NULL,
  information text NOT NULL
);

CREATE TABLE manufacturer
(
  manufacturerId SERIAL PRIMARY KEY,
  name varchar(80) NOT NULL
);

CREATE TABLE product
(
  productId SERIAL PRIMARY KEY,
  name varchar(80) NOT NULL,
  score int NOT NULL,
  img text,
  information varchar(200),
  quantity text,
  barcode varchar(80),
  manufacturerId int references manufacturer(manufacturerId),
  certifications int
  []
);

  INSERT INTO manufacturer
    (name)
  VALUES('LearningWell'),
    ('MachineFood'),
    ('StarMeat Inc');

  INSERT INTO product
    (name, score, manufacturerId, img, certifications)
  VALUES('Mjölk', 1, (SELECT manufacturerId
      FROM manufacturer
      WHERE manufacturer.name='LearningWell'), '/products/images/mjolk.jpg', '{}'),
    ('Köttfärs', 2, (SELECT manufacturerId
      FROM manufacturer
      WHERE manufacturer.name='MachineFood'), '/products/images/kott.jpg', '{}'),
    ('Godis', 3, (SELECT manufacturerId
      FROM manufacturer
      WHERE manufacturer.name='StarMeat Inc'), '/products/images/godis.jpg', '{}');


  INSERT INTO certification
    (name, img, information)
  VALUES
    ('Krav', 'certifications/images/krav.jpg', 'KRAV-märket visar att en vara är producerad på ekologisk grund med extra höga krav på djuromsorg, hälsa, socialt ansvar och klimatpåverkan. Den produkt som bär KRAV-märket uppfyller KRAVs regler, det kontrolleras minst en gång varje år. KRAV är ekologiskt, och mer därtill – det betyder att djuren lever ett bra liv, grödorna odlas miljövänligt utan naturfrämmande kemiska bekämpningsmedel eller konstgödsel, att bonden får en sjystare arbetsmiljö, att maten inte innehåller konstiga tillsatser eller har producerats med GMO. I jämförelse med EUs minimiregler för ekologisk produktion, den EU-ekologiska märkningen, eller EU-eko, så har KRAV mer långtgående regler för till exempel djuromsorg. KRAV har även regler för klimat och social hänsyn. Det har inte EU-eko. KRAV-märket finns på mat från hela världen – det räcker inte med var maten kommer ifrån, det handlar också om hur den är producerad. På så sätt kan du göra skillnad för djur, miljö och människa i både när och fjärran.'),
    ('Marine Stewardship Council', 'certifications/images/mcs.jpg', 'Hållbart fångad Miljömärket visar att fisken kommer från ett yrkesfiske som klarat MSC:s miljöstandard. Oberoende experter har kontrollerat att fisket sker på ett livskraftigt bestånd och fångats med minimal påverkan på havsmiljön. Alla certifierade fisken kontrolleras årligen. Certifieringen vilar på en vetenskaplig grund. Spårbar fram till din tallrik Den MSC-certifierade fisken hålls isär från den icke certifierade ända från fångst tills miljömärket sätts på förpackning eller meny. Alla som handhar fisken kontrolleras årligen av oberoende experter. Pålitlig märkning Regelbundna DNA-tester har visat att MSC-certifierad sjömat är korrekt märkt. Så du kan lita på att en förpackning eller meny som anger att den innehåller MSC-certifierad sjömat verkligen gör det. Trovärdig världen över I över 20 år har vi arbetat tillsammans med forskare, yrkesfisken och sjömatsproducenter för att utveckla vår miljöstandard och främja hållbart fiske. MSC är den enda certifiering och miljömärkning för vildfångad sjömat som uppfyller krav på bästa praxis ställda av både FN:s livsmedels- och jordbruksorganisation (FAO) och ISEAL, den globala medlemsorganisationen för hållbarhetsstandarder. I mars 2017, blev MSC den första globala certifieringen av sjömat att erkännas för sin trovärdighet och stringens av Global Sustainable Seafood Initiative (GSSI). '),
    ('Äkta vara', 'certifications/images/aktavara.png', 'Syftet med Ä-märket är att hjälpa konsumenter som söker genuina och oförfalskade livsmedel. Därför tillåts inte tillsatser, fejkade aromer och industriella ingredienser i märkta produkter. Dessutom ska produkterna vara ärliga. Tillsatser I vanliga livsmedel tillåts cirka 330 olika livsmedelstillsatser, som är definierade av EU. Dessa tillåts inte i Ä-märkta produkter, med undantag för fruktpektin och bakpulver i vissa produkter. Aromer En stor del av de aromer som används i olika livsmedelsprodukter är framställda på konstgjord väg eller från helt andra råvaror än de som de ska ge smaken av. I Ä-märkta produkter tillåts bara aromer där smaken har extraherats ur den äkta varan. I en vaniljglass ska vaniljsmaken till exempel komma från just vanilj. Industriella ingredienser Detta är olika ingredienser som ofta liknar tillsatser, men som inte är definierade som sådana av EU. Det handlar till exempel om jästextrakt, bambufibrer och glukos-fruktossirap. De produkter som Äkta vara bedömer vara industriella ingredienser tillåts inte i Ä-märkta produkter. Ärlig information Vilseledande produkter ska, enligt myndigheterna, inte vara tillåtet. Men dels efterlevs inte alltid reglerna och dels lämnar lagstiftningen på flera punkter över ett alltför stort ansvar på konsumenten att se till så att man inte blir lurad. En renkorv får till exempel innehålla hur lite ren som helst och en äppelcider får innehålla så lite som 15 procent äpple. För Ä-märket gäller därför strängare regler, än de som lagen föreskriver. Produktens namn och bild ska överensstämma med det som konsumenten förväntar sig och halten av karaktärsgivande ingredienser ska vara hög. Vilka produkter kan märkas? Märkningen omfattar endast förädlade produkter, eftersom det är där tillsatser, aromer och industriella ingredienser används. Råvaror som morötter, kött eller äpplen kan därför inte märkas.');
