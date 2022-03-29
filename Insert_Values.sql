-- Inserting data into Shop

INSERT INTO Shop
VALUES  ('Popular', 23),
        ('Challenger', 89),
        ('Sephora', 10000),
        ('Uniqlo', 488),
        ('Ikea', 700),
        ('Apple', 8),
        ('Giant', 454),
        ('Tech Fit', 66),
        ('Cetaphil', 23),
        ('Nescafe', 10),
        ('Creative', 5),
        ('Fly Buy', 2),
        ('Word Wide Wishes', 3),
        ('Authentic Shoppe', 2),
        ('Cybershop', 1),
        ('Silver Creek', 2),
        ('Abundance Sold Here', 2),
        ('Widehaven', 7),
        ('Directmart', 1),
        ('Choose and Track', 22),
        ('Samsung', 11),
        ('Quail Hollow', 46);

-- Inserting data into Product

INSERT INTO Product
VALUES  ('White Eraser', 'Faber-Castell', 1.90, 'Stationery'),
        ('Black pen', 'Zebra', 2.90, 'Stationary'),
        ('Blue pen', 'Zebra', 2.90, 'Stationary'),
        ('Red pen', 'Zebra', 2.90, 'Stationary'),
        ('Database textbook', 'Pearson', 39.00, 'Books'),
        ('Color pencils', 'Faber-Castell', 15.90, 'Stationary'), 
        ('iPhone XR', 'Apple', 1299, 'Electronics'),
        ('Headphones', 'JBL', 1000, 'Electronics'),
        ('Monitor', 'DELL', 2100, 'Electronics'),
        ('Gaming mouse', 'Razer', 159, 'Electronics'),
        ('Gaming keyboard', 'Razer', 189, 'Electronics'),
        ('Hair curler', 'Dyson', 599, 'Electronics'),
        ('Gaming chair', 'Secret Lab', 580, 'Furniture'), 
        ('Loose powder', 'Chanel', 79.90, 'Makeup'),
        ('CC Cream', 'IT Cosmetic', 83.90, 'Makeup'),
        ('Foundation', 'Mabelline', 24, 'Makeup'),
        ('Mascara', 'Mabelline', 11.50, 'Makeup'),
        ('Blush', 'NARS', 53.90, 'Makeup'),
        ('Daisy', 'Marc Jacob', 76, 'Perfume'),
        ('FEMME', 'ZARA', 19.99, 'Perfume'),
        ('Airism Mask', 'Uniqlo', 9.90, 'Clothing'),
        ('Tote bag', 'Uniqlo', 12.99, 'Accessories'),
        ('V-neck shirt', 'Uniqlo', 15, 'Clothing'),
        ('Crew neck shirt', 'Uniqlo', 19, 'Clothing'),
        ('Dress', 'Uniqlo', 23, 'Clothing'),
        ('Sweater', 'Uniqlo', 15.99, 'Clothing'),
        ('Shoes', 'Uniqlo', 19.90, 'Clothing'), 
        ('Jacket', 'Uniqlo', 25, 'Clothing'), 
        ('Chair', 'Ikea', 23.90, 'Furniture'),
        ('Table', 'Ikea', 33.90, 'Furniture'),
        ('Soft toy', 'Ikea', 12, 'Toys'),
        ('Sofa', 'Ikea', 399, 'Furniture'),
        ('Bedsheet', 'Ikea', 30, 'Household'),
        ('Pillow', 'Ikea', 50, 'Household'),
        ('Cabinet', 'Ikea', 55.90, 'Furniture'),
        ('iPhone X', 'Apple', 1100, 'Phone'),
        ('iPhone 11', 'Apple', 1200, 'Phone'),
        ('iPhone 13', 'Apple', 1299, 'Phone'),
        ('iPhone 13 Pro', 'Apple', 1399, 'Phone'),
        ('iPad Air', 'Apple', 1500, 'Tablet'),
        ('MacBook', 'Apple', 1800, 'Laptop'),
        ('Airpods Pro', 'Apple', 539, 'Headphones'),
        ('Bread', 'Gardenia', 3.99, 'Food'),
        ('Toilet paper', 'Softy', 12.90, 'Toiletries'),
        ('Shampoo', 'Dove', 16.90, 'Toiletries'),
        ('Pork belly', 'ABC Butchery', 13.90, 'Food'),
        ('Wagyu Beef', 'ABC Butchery', 25.90, 'Food'),
        ('Tom yum cup noodles', 'Nissin', 2.90, 'Food'), 
        ('Galaxy S11', 'Samsung', 1533, 'Phone'),
        ('Galaxy S12', 'Samsung',1888, 'Phone'),
        ('12-Inch Curve Television', 'LG', 999.9,'Television'),
        ('3.5mm Audio Jack', 'Audio Technical', 59, 'Accessories'),
        ('Tempered Glass Screen Protector', 'Spigen', 66.6, 'Accessories'),
        ('iPhone X Mobile Cover', 'Castify', 19.9, 'Accessories');

-- Inserting data into ProductInShop

INSERT INTO ProductInShop
VALUES  ('ABC001','Apple','iPhone X','Apple','0001', 1100, 100, 4.4, 231),
        ('DEF002','Apple','iPhone 11','Apple','0002', 1200, 100, 4.1, 200),
        ('GHI003','Apple','iPhone 13','Apple','0003', 1299, 100, 4.0, 122), 
        ('JKL004','Apple','iPhone 13 Pro','Apple','0004', 1399, 100, 3.7, 140),
        ('MNO005','Apple','Airpods Pro','Apple','0005', 539, 60, 4.5, 166),
        ('QRS006','Apple','iPad Air','Apple','0006', 1500, 120, 4.4, 100),
        ('TUV007','Apple','MacBook','Apple','0007', 1800, 130, 3.8, 113),
        ('XYZ008','Apple','iPhone XR','Apple','0008', 1299, 111, 3.9, 123),
        ('ARC001', 'Fly Buy', 'iPhone X', 'Apple','0001', 1099, 800, 4.2, 5),
        ('ARC002', 'Fly Buy', 'iPhone XR', 'Apple','0002', 1199, 950, 3.4, 11),
        ('APP001', 'Word Wide Wishes', 'Galaxy S11', 'Samsung', '0001', 50, 600, 4.5, 9),
        ('APP002', 'Word Wide Wishes', 'Galaxy S12', 'Samsung', '0002', 100, 750, 4.4, 39),
        ('APP003', 'Word Wide Wishes', 'iPhone X Mobile Cover', 'Castify', '0003', 40, 30,  NULL, 0),
        ('APM001', 'Authentic Shoppe', '12-Inch Curve Television', 'LG', '0001', 35, 396,  NULL, 0),
        ('APM002', 'Authentic Shoppe', 'iPhone X', 'Apple',' 0002', 100, 820, 3.7, 2),
        ('AFR011', 'Cybershop', 'Tempered Glass Screen Protector', 'Spigen', '0001', 50, 20,  NULL, 0),
        ('JYX666', 'Silver Creek', 'iPad Air', 'Apple', '0001', 100, 1200, 4.5, 1),
        ('JYX888', 'Silver Creek', 'Airpods Pro', 'Apple', '0002', 100, 600, 4.7, 3),
        ('MUY012', 'Abundance Sold Here', '3.5mm Audio Jack', 'Audio Technical', '0001', 100, 10, NULL, 0),
        ('MUY016', 'Abundance Sold Here', '12-Inch Curve Television', 'LG', '0002', 100, 420, 4.9, 1),
        ('MUA112', 'Widehaven', '12-Inch Curve Television', 'LG', '0001', 50, 350,  NULL, 0),
        ('MCK010', 'Directmart', 'iPhone X Mobile Cover', 'Castify', '0001', 100, 2, 5, 1),
        ('MCM001', 'Choose And Track', 'Galaxy S11', 'Samsung', '0001', 100, 650, 4.3, 17),
        ('MCM002', 'Choose And Track', '12-Inch Curve Television', 'LG', '0002', 70, 450, 3.4, 2),
        ('MQM001', 'Quail Hollow', 'Tempered Glass Screen Protector', 'Spigen', '0001', 20, 20, 5, 1),
        ('MQM011', 'Quail Hollow', 'iPad Air', 'Apple', '0002', 80, 1400,  NULL, 0),
        ('MCQ050', 'Abundance Sold Here','iPhone X', 'Apple', '0001', 300, 50, 4.1, 17),
        ('PPP001', 'Choose And Track','iPhone X', 'Apple', '0003', 250, 100,  NULL, 0),
        ('PDD250', 'Directmart','iPhone X', 'Apple', '0001', 400, 10, 3.5, 19);


-- Inserting data into Users

INSERT INTO Users
VALUES  ('1001', 'iamzczc'),
        ('1101', 'Angela123'),
        ('1102', '91Alpha'),
        ('1003', 'Blue_Sky'),
        ('1004', 'DanceMonkey'),
        ('1005', 'defeatfate'),
        ('1006', '00Biker'),
        ('1007', '7-Senses'),
        ('1108', 'Silver10Dragon'),
        ('1109', 'OliverPaterson1'),
        ('1110', 'Dancer_Cassie'),
        ('1111', 'Anna_Marie2009'),
        ('1112', 'Blade9'),
        ('1013', 'PoppyFlowers'),
        ('1014', 'HaperGonzalez2121'),
        ('1015', '662Finn'),
        ('1016', 'Nicolleeeeeee'),
        ('1017', 'Lorena_Rios_78'),
        ('1018', 'IdaJonesRosalind'),
        ('1019', '120Jazzzzmin'),
        ('1020','Beyonce Carver'),
        ('1030','Estelle Cross'),
        ('1201','Aamir Harmon'),
        ('1012','Jodi Burch'),
        ('1200','Kinga Miller'),
        ('1010','Jimmy Butler'),
        ('1105','Padraig Stephenson'),
        ('1100','Amaya Abott'),
        ('1039','Giannis Johnson'),
        ('1198','Peterson Cumberbatch'),
        ('1202', 'Teejay Mcfarlane'),
        ('1203', 'Norman Pruitt'),
        ('1204', 'Falak Baldwin'),
        ('1205', 'Hubert Medina'),
        ('1206', 'Liberty Buckley'),
        ('1207', 'Tazmin Hopkins'),
        ('1208', 'Fatma Bernal'),
        ('1209', 'Rafe Byrne'),
        ('1210', 'Ricky Rich'),
        ('1211', 'Madison Macleod'),
        ('1212', 'Zaara Molina'),
        ('1213', 'Emrys Bowes'),
        ('1214', 'Shona Whittle'),
        ('1215', 'Kaidan Salter'),
        ('1216', 'Betsy Sears'),
        ('1217', 'Charli Dawe'),
        ('1218', 'Jorgie Cotton'),
        ('1219', 'Charlotte Gomez'),
        ('1220', 'Keith Petty'),
        ('1221', 'Piers Quintana'),
        ('1222', 'Norma Fenton'),
        ('1223', 'Graeme Devlin'),
        ('1224', 'Edward Harding'),
        ('1225', 'Greyson Talley'),
        ('1226', 'Ty Head'),
        ('1227', 'Tracey Carter'),
        ('1228', 'Niamh Montes'),
        ('1229', 'Clarissa Fisher'),
        ('1230', 'Izabella Glover'),
        ('1231', 'Jackson Esparza'),
        ('1232', 'Montel Wallis'),
        ('1233', 'Kaira Cash'),
        ('1234', 'Anand Leigh'),
        ('1235', 'Sarah-Louise Hodson'),
        ('1236', 'Mohammod Kennedy'),
        ('1237', 'Natalia Partridge'),
        ('1238', 'Kieron Fischer'),
        ('1239', 'Kiri Crowther'),
        ('1240', 'Ciara Woodward'),
        ('1241', 'Rhianna Proctor'),
        ('1242', 'Todd Conner'),
        ('1243', 'Danielle Drew'),
        ('1244', 'Amelia-Mae Woodard'),
        ('1245', 'Cobie Hebert'),
        ('1246', 'Tegan Zamora'),
        ('1247', 'Elouise Dalby'),
        ('1248', 'Ronaldo Avila'),
        ('1249', 'Afsana Santos'),
        ('1250', 'Kaylan Humphreys'),
        ('1251', 'Karis Armitage'),
        ('1252', 'Ameena Moore'),
        ('1253', 'Giorgio Reid'),
        ('1254', 'Lorelei Hartman'),
        ('1255', 'Jennifer Thomson'),
        ('1256', 'Faiza Campbell'),
        ('1257', 'Sahara Curry'),
        ('1258', 'Allan Jarvis'),
        ('1259', 'Humayra Contreras'),
        ('1260', 'Renesmee Reynolds'),
        ('1261', 'Briana Knight'),
        ('1262', 'Winnie Rawlings'),
        ('1263', 'Jessie Barnes'),
        ('1264', 'Kishan Cairns'),
        ('1265', 'Adam Hassan'),
        ('1266', 'Anna-Marie Iles'),
        ('1267', 'Whitney Stafford'),
        ('1268', 'Blade Li'),
        ('1269', 'Manraj Esquivel'),
        ('1270', 'Poppy-Mae Massey'),
        ('1271', 'Onur Chester'),
        ('1272', 'Max Cameron'),
        ('1273', 'Yuvraj Hough'),
        ('1274', 'Chantelle Macdonald'),
        ('1275', 'Harper Gonzalez'),
        ('1276', 'Finn Ramirez'),
        ('1277', 'Tulisa Almond'),
        ('1278', 'Neelam Snyder'),
        ('1279', 'Otis Yoder'),
        ('1280', 'Maxim Rutledge'),
        ('1281', 'Jakob Harvey'),
        ('1282', 'Daniyal Mosley'),
        ('1283', 'Hamzah Curran'),
        ('1284', 'Finnian Blackburn'),
        ('1285', 'Rylee Madden'),
        ('1286', 'Nicolle Regan'),
        ('1287', 'Lenny Cisneros'),
        ('1288', 'Aiyla Sherman'),
        ('1289', 'Mallory Keller'),
        ('1290', 'Lorena Rios'),
        ('1291', 'Rosalind Nicholls'),
        ('1292', 'Ashraf Santiago'),
        ('1293', 'Dannielle Lawson'),
        ('1294', 'Lily-Ann Maddox'),
        ('1295', 'Harris Schneider'),
        ('1296', 'Noel Estes'),
        ('1297', 'Ida Jones'),
        ('1298', 'Ayaan Carrillo'),
        ('1299', 'Miya Cortez'),
        ('1300', 'Bertram Davies'),
        ('1301', 'Shanaya Higgs'),
        ('1302', 'Jazmin Calvert');

-- Inserting data into Employee 

INSERT INTO Employee
VALUES  ('0001', 'Megan', 7000),
        ('0002', 'Jeremy', 4500),
        ('0003', 'Li Ying', 5080),
        ('0004', 'Beyonce', 3500),
        ('0005', 'Estelle', 3030),
        ('0006', 'Aamir', 2300),
        ('0007', 'Kinga', 1700),
        ('0008', 'Jimmy', 1500),
        ('0009', 'Padraig', 2700),
        ('0010', 'Amaya', 5500),
        ('0011', 'Peterson', 4550),
        ('0012', 'Norman', 2500),
        ('0013', 'Graema', 6500),
        ('0014', 'Greyson', 3390),
        ('0015', 'Tracey', 2570),
        ('0016', 'Natalia', 2000),
        ('0017', 'Montel', 5990),
        ('0018', 'Kieron', 3210),
        ('0019', 'Ciara', 1290),
        ('0020', 'Mohammod', 1590),
        ('0021', 'Glover', 2100),
        ('0022', 'Harding', 2990),
        ('0023', 'Montes', 5780),
        ('0024', 'Danielle', 3490),
        ('0025','Jan Logan', 3500),
        ('0026','Joni Holman', 5500),
        ('0027','Anya Partridge', 8300),
        ('0028','Mohammed Cowan', 2500),
        ('0029','Sanjeev Erickson', 2000),
        ('0030','Paul Logan', 7000),
        ('0031','Zoya Kent', 12000),
        ('0032','Hana Singleton', 10000),
        ('0033','Yolanda Waller', 11000),
        ('0034','Lola-Mae Church', 1500);

-- Inserting data into PriceHistory

INSERT INTO PriceHistory
VALUES  ('ABC001', 1100, '2021-01-01'),
        ('ARC002', 1333, '2021-03-31'),
        ('MUY012', 283, '2020-12-04'), 
        ('MCM002', 81, '2020-05-15'), 
        ('DEF002', 1277, '2019-11-13'), 
        ('AFR011', 364, '2019-02-26'), 
        ('APP001', 574, '2021-07-06'), 
        ('MQM001', 216, '2020-01-26'), 
        ('PDD250', 290, '2021-09-03'), 
        ('MCM002', 740, '2021-09-23'), 
        ('QRS006', 1696, '2020-09-27'), 
        ('MUY016', 707, '2019-04-29'), 
        ('APP001', 154, '2020-08-27'), 
        ('JKL004', 1304, '2019-05-16'), 
        ('MCM001', 794, '2020-09-29'), 
        ('MUY012', 257, '2020-04-05'), 
        ('PDD250', 159, '2019-11-20'), 
        ('APM001', 199, '2019-08-11'), 
        ('AFR011', 400, '2020-01-24'), 
        ('ARC002', 1120, '2020-11-14'),
        ('MQM001', 344, '2019-06-22'), 
        ('MQM011', 1699, '2020-06-16'), 
        ('ABC001', 772, '2021-01-27'), 
        ('MQM001', 471, '2019-04-22'), 
        ('ARC002', 1212, '2020-06-02'), 
        ('GHI003', 1184, '2019-07-25'), 
        ('MCM002', 269, '2021-11-09'), 
        ('DEF002', 890, '2020-05-11'), 
        ('MUA112', 109, '2019-06-04'), 
        ('AFR011', 349, '2021-10-09'), 
        ('JKL004', 1791, '2019-12-05'), 
        ('ABC001', 873, '2021-09-18');


-- Inserting data into Orders

INSERT INTO Orders
VALUES  ('7XMT90', '1001', 1200, '32 Nanyang Crescent, Singapore 637658', '2020-02-04 12:00:10'), 
        ('LZR52T', '1010', 128.8, 'Orchard Road,#03-48,Singapore 632759', '2020-01-23 23:39:20'), 
        ('KA8YA1', '1100', 3065.2, 'Jurong West,#10-1234, Singapore 647292', '2019-01-18 16:27:56'), 
        ('8JLCGT', '1201', 374.7, 'Nanyang Heights, Jurong East, Singapore 637658', '2020-02-14 00:49:12'), 
        ('GLDF1W', '1012', 2233.6, 'Pasir Ris,#06-111 Singapore 666777', '2020-05-26 15:09:01'), 
        ('ARMY37', '1202', 1577.1, 'Rock Creek Street Utica, NY', '2020-06-21 18:31:33'), 
        ('RTNU8H', '1204', 813.4, '475 Mill Rd. South El Monte, CA 91733', '2020-08-04 10:01:34'), 
        ('LGOKM2', '1206', 1394.6, '9926 Baker St. Dayton, OH 45420', '2020-03-03 20:11:03'), 
        ('LPQAV8', '1208', 2238.7, '464 Glen Eagles Ave. Kokomo, IND 46901', '2020-08-08 07:39:39'), 
        ('Q7TUEY', '1210', 478.7, '375 10th Street Palos Verdes Peninsula, CA 90274', '2020-07-24 10:59:13'), 
        ('CDLSIT', '1212', 1493.0, '7762 West Dunbar St. Millville, NJ 08332', '2020-07-01 08:21:12'), 
        ('CDG5NA', '1214', 2602.3, '115 East Greystone Rd. Leland, NC 28451', '2020-07-03 08:35:33'), 
        ('HX8EWH', '1216', 381.1, 'Huntley, IL 60142 7403 Charles Street', '2020-04-12 01:22:22'), 
        ('9DG3CO', '1218', 530.7, '54 Manchester Circle2 Rapid City, SD 57701', '2020-07-14 12:01:56'), 
        ('WG82LC', '1220', 1765.7, '8741 Bridge Drive Florence, SC 29501', '2020-08-09 19:41:23'), 
        ('WZJTSS', '1223', 3754.8, 'Pelham, AL 35124 8701 W. Green Hill Street', '2020-08-10 13:54:23'), 
        ('AP4TZK', '1225', 2335.1, 'Riverview, FL 33569 68 Smoky Hollow Street', '2020-08-17 01:10:45'), 
        ('07DGM1', '1227', 2070.9, '75 Clay Court Maineville, OH 45039', '2020-07-10 09:40:34'), 
        ('T64POQ', '1229', 1230.2, 'Williamstown, NJ 08094 423 East Race St.', '2020-07-09 01:10:45'), 
        ('4YG4TR', '1231', 1802.3, '504 Linda Ave. Rockaway, NJ 07866', '2020-02-14 06:48:22'), 
        ('NN2DCN', '1234', 1261.1, '9326 Thompson Street Colorado Springs, CO 80911', '2020-08-17 01:10:32'), 
        ('YCUHBR', '1236', 3170.3, '511 Marlborough Dr. Palm City, FL 34990', '2020-08-02 20:55:34'), 
        ('JO19G6', '1238', 2425.7, '11 53rd Street Groton, CT 06340', '2020-08-22 02:54:53'), 
        ('GPY0C9', '1242', 55.8, 'Windermere, FL 34786 7848 Hilldale Lane', '2020-06-14 17:11:34'), 
        ('42SNUM', '1244', 970.6, '664 Deerfield St. Scarsdale, NY 10583', '2020-08-09 06:07:56'), 
        ('RTKTIK', '1248', 2439.0, '7754 Hill Field St. Stratford, CT 06614', '2020-01-07 05:25:12'), 
        ('LF8KQC', '1250', 580.8, '35 Crescent St. Holbrook, NY 11741', '2020-04-10 23:53:34'), 
        ('TTHRNY', '1254', 2468.1, '9101 Ocean Drive West Roxbury, MA 02132', '2020-08-05 04:17:45'), 
        ('90ZXCT', '1256', 1447.3, '9529 Leeton Ridge Dr. Cockeysville, MD 21030', '2020-08-02 19:33:56'), 
        ('IBZ0LZ', '1259', 1356.1, '935 Rockland Lane Plattsburgh, NY 12901', '2020-05-10 04:17:32'), 
        ('9KINM3', '1262', 3471.8, '7144 S. Wayne Street Boca Raton, FL 33428', '2020-05-12 05:44:34'), 
        ('5R6T3Q', '1265', 348.5, '19 San Juan Ave. Bethlehem, PA 18015', '2020-08-01 19:11:12'), 
        ('BD41SH', '1267', 2740.1, '85 Bow Ridge Ave. Randallstown, MD 21133', '2020-08-02 21:11:39'), 
        ('7DZYP5', '1270', 3954.9, '488 Old Monroe Ave. Neenah, WI 54956', '2020-08-01 11:13:23'), 
        ('VNWCA6', '1274', 2070.7, '7086 Shipley St. Snohomish, WA 98290', '2020-08-03 13:27:34'), 
        ('7L4HE4', '1276', 2621.6, '9802 John Ave. Delray Beach, FL 33445', '2020-06-07 21:33:23'),
        ('S6874S', '1281', 850, '241 Lakewood St. New Bern, NC 28560', '2020-05-22 16:19:34'), 
        ('IVX072', '1284', 1130.4, '72 Beacon St. Hopewell, VA 23860', '2020-06-12 04:57:34'), 
        ('L6NWHH', '1289', 83.8, '44 Fairfield Dr. Mesa, AZ 85203', '2020-04-07 15:49:23'), 
        ('I2V867', '1293', 2928.6, '8111 Bald Hill Drive Santa Clara, CA 95050', '2020-01-26 13:44:23'), 
        ('WWSTH7', '1297', 3429.7, '838 Rock Creek Road Mansfield, MA 02048', '2020-01-28 13:44:45'), 
        ('ESAT5W', '1301', 3500.9, '847 Pennington St. Wyoming, MI 49509', '2020-04-26 23:34:53'), 
        ('GA3QC3', '1010', 1271.6, 'Orchard Road,#03-48,Singapore 632759', '2020-01-23 23:39:20'), 
        ('P57E11', '1201', 782.2, 'Nanyang Heights, Jurong East, Singapore 637658', '2020-02-14 00:49:12'), 
        ('MLNI3B', '1202', 363.9, 'Rock Creek Street Utica, NY', '2020-06-21 18:31:33'), 
        ('9M05BB', '1206', 672.7, '9926 Baker St. Dayton, OH 45420', '2020-03-03 20:11:03'), 
        ('B47LEV', '1210', 2236.1, '375 10th Street Palos Verdes Peninsula, CA 90274', '2020-07-24 10:59:13'),
         ('I7FTX1', '1214', 2773.5, '115 East Greystone Rd. Leland, NC 28451', '2020-07-03 08:35:33'), 
         ('FD5I2J', '1218', 100.0, '54 Manchester Circle2 Rapid City, SD 57701', '2020-07-14 12:01:56'), 
         ('1OP1TT', '1223', 801.3, 'Pelham, AL 35124 8701 W. Green Hill Street', '2020-08-10 13:54:23'), 
         ('JA7E2I', '1227', 3847.4, '75 Clay Court Maineville, OH 45039', '2020-07-10 09:40:34'), 
         ('RKI9TP', '1231', 3802.5, '504 Linda Ave. Rockaway, NJ 07866', '2020-02-14 06:48:22'), 
         ('L11P2D', '1236', 185.2, '511 Marlborough Dr. Palm City, FL 34990', '2020-08-02 20:55:34'), 
         ('CJZ3O5', '1242', 904.2, 'Windermere, FL 34786 7848 Hilldale Lane', '2020-06-14 17:11:34'), 
         ('9TSMNR', '1248', 237.1, '7754 Hill Field St. Stratford, CT 06614', '2020-01-07 05:25:12'), 
         ('HHFH2C', '1254', 1970.2, '9101 Ocean Drive West Roxbury, MA 02132', '2020-08-05 04:17:45'), 
         ('ZH7HB3', '1259', 2636.9, '935 Rockland Lane Plattsburgh, NY 12901', '2020-05-10 04:17:32'), 
         ('YQL6U0', '1265', 2803.3, '19 San Juan Ave. Bethlehem, PA 18015', '2020-08-01 19:11:12'), 
         ('UCR6HE', '1270', 1411.5, '488 Old Monroe Ave. Neenah, WI 54956', '2020-08-01 11:13:23'), 
         ('G351ZE', '1276', 1349.5, '9802 John Ave. Delray Beach, FL 33445', '2020-06-07 21:33:23'), 
         ('XDZ3SM', '1284', 3616.8, '72 Beacon St. Hopewell, VA 23860', '2020-06-12 04:57:34'), 
         ('9WEMNB', '1293', 2065.2, '8111 Bald Hill Drive Santa Clara, CA 95050', '2020-01-26 13:44:23'), 
         ('BIB2YK', '1301', 1276.9, '847 Pennington St. Wyoming, MI 49509', '2020-04-26 23:34:53'), 
         ('0VXTOE', '1201', 101.0, 'Nanyang Heights, Jurong East, Singapore 637658', '2020-02-14 00:49:12'), 
         ('TOXOZN', '1206', 37.6, '9926 Baker St. Dayton, OH 45420', '2020-03-03 20:11:03'),
        ('2ZTG8I', '1214', 1912.2, '115 East Greystone Rd. Leland, NC 28451', '2020-07-03 08:35:33'), 
        ('U0P4DX', '1223', 238.9, 'Pelham, AL 35124 8701 W. Green Hill Street', '2020-08-10 13:54:23'), 
        ('IUDGPT', '1231', 2392.6, '504 Linda Ave. Rockaway, NJ 07866', '2020-02-14 06:48:22'), 
        ('S9X8G7', '1242', 581.1, 'Windermere, FL 34786 7848 Hilldale Lane', '2020-06-14 17:11:34'), 
        ('XA57SQ', '1254', 769.8, '9101 Ocean Drive West Roxbury, MA 02132', '2020-08-05 04:17:45'), 
        ('IC153D', '1265', 643.0, '19 San Juan Ave. Bethlehem, PA 18+015', '2020-08-01 19:11:12'), 
        ('K7M67B', '1276', 3036.9, '9802 John Ave. Delray Beach, FL 33445', '2020-06-07 21:33:23'), 
        ('6C0592', '1293', 3338.5, '8111 Bald Hill Drive Santa Clara, CA 95050', '2020-01-26 13:44:23'), 
        ('OQNOTD', '1201', 1092.2, 'Nanyang Heights, Jurong East, Singapore 637658', '2020-02-14 00:49:12'), 
        ('G82D9D', '1214', 1720.0, '115 East Greystone Rd. Leland, NC 28451', '2020-07-03 08:35:33'), 
        ('GQJR3S', '1231', 385.8, '504 Linda Ave. Rockaway, NJ 07866', '2020-02-14 06:48:22'), 
        ('9UI0XR', '1254', 351.0, '9101 Ocean Drive West Roxbury, MA 02132', '2020-08-05 04:17:45'), 
        ('U4QN6E', '1276', 3781.7, '9802 John Ave. Delray Beach, FL 33445', '2020-06-07 21:33:23'), 
        ('1P4LCE', '1201', 2950.1, 'Nanyang Heights, Jurong East, Singapore 637658', '2020-02-14 00:49:12'), 
        ('OZWMW1', '1231', 1152.3, '504 Linda Ave. Rockaway, NJ 07866', '2020-02-14 06:48:22'), 
        ('2RW4TK', '1276', 1416.0, '9802 John Ave. Delray Beach, FL 33445', '2020-06-07 21:33:23'), 
        ('0X05FP', '1231', 3309.6, '504 Linda Ave. Rockaway, NJ 07866', '2020-02-14 06:48:22'), 
        ('EEOZ69', '1231', 3468.9, '504 Linda Ave. Rockaway, NJ 07866', '2020-02-14 06:48:22');
        

-- Inserting data into OrderItem

INSERT INTO OrderItem
VALUES  ('ABC001','7XMT90', 1, 1100, 1, 'delivered', '2020-02-15  00:11:37', '2020-02-19 05:11:37')
        ('MUY016', 'S6874S', 1, 420, 2, 'delivered', '2020-05-22 19:19:34', '2020-05-24 16:19:34'), 
        ('MCQ050', 'JO19G6', 1, 50, 2, 'shipped', '2020-08-23 02:54:53', NULL), 
        ('DEF002', 'GPY0C9', 1, 1200, 3, 'shipped', '2020-06-14 17:11:34', NULL), 
        ('APP003', '7L4HE4', 1, 30, 2, 'delivered', '2020-06-07 23:33:23', '2020-06-10 21:33:23'), 
        ('JKL004', 'U4QN6E', 1, 1399, 5, 'being processed', NULL, NULL), 
        ('JYX666', 'FD5I2J', 1, 1200, 1, 'being processed', NULL, NULL), 
        ('ARC002', 'IC153D', 1, 950, 3, 'shipped', '2020-08-04 19:11:12', NULL), 
        ('APP001', '7L4HE4', 1, 600, 3, 'delivered', '2020-06-08 21:33:23', '2020-06-09 21:33:23'), 
        ('MCK010', 'YQL6U0', 1, 25, 2, 'delivered', '2020-08-02 19:11:12', '2020-08-04 19:11:12'), 
        ('JYX888', '0X05FP', 1, 600, 5, 'being processed', NULL, NULL), 
        ('ARC002', '0X05FP', 1, 950, 4, 'being processed', NULL, NULL), 
        ('MCQ050', 'NN2DCN', 1, 50, 1, 'being processed', NULL, NULL), 
        ('AFR011', 'VNWCA6', 1, 20, 4, 'delivered', '2020-08-03 22:27:34', '2020-08-04 13:27:34'), 
        ('PDD250', 'CJZ3O5', 1, 10, 3, 'being processed', NULL, NULL),
        ('QRS006', 'IC153D', 1, 1500, 2, 'being processed', NULL, NULL), 
        ('ABC001', 'CJZ3O5', 1, 1100, 1, 'being processed', NULL, NULL), 
        ('AFR011', 'CJZ3O5', 1, 20, 1, 'being processed', NULL, NULL), 
        ('JYX666', 'CDG5NA', 1, 1200, 5, 'shipped', '2020-07-03 09:35:33', NULL), 
        ('MCK010', 'U4QN6E', 1, 25, 2, 'being processed', NULL, NULL), 
        ('MCQ050', 'GPY0C9', 1, 50, 3, 'delivered', '2020-06-14 18:11:34', '2020-06-19 17:11:34');


--
-- Table structure for table `Review`
--

INSERT INTO Review
VALUES  ('A0M001', '1001', 4.4, '7XMT90', 1, 'Well-designed and sleek in design', '2020-02-19 11:00:32')
        ('T0BQ0B', '1281', 2.9, 'S6874S', 1, 'Delivery is slightly late', '2020-05-25 16:19:34'), 
        ('9DWZJS', '1238', 4.4, 'JO19G6', 1, 'Great Product', '2020-08-25 02:54:53'), 
        ('APTUGT', '1242', 5.0, 'GPY0C9', 1, 'Great Product!', '2020-06-15 17:11:34'), 
        ('LXA9AW', '1276', 2.3, '7L4HE4', 1, 'Seller is rude', '2020-06-09 21:33:23'), 
        ('742Z1I', '1276', 4.8, 'U4QN6E', 1, 'Great Product', '2020-06-09 21:33:23'), 
        ('NLZNJI', '1218', 2.9, 'FD5I2J', 1, 'Seller is rude', '2020-07-18 12:01:56'), 
        ('010XWN', '1265', 2.5, 'IC153D', 1, 'Seller is rude', '2020-08-07 19:11:12'), 
        ('6J7D7W', '1276', 3.0, '7L4HE4', 1, 'Seller is rude', '2020-06-00 21:33:23'), 
        ('HV34F8', '1265', 3.6, 'YQL6U0', 1, 'Delivery is on time', '2020-08-07 19:11:12'),
        ('0YUGAP', '1231', 3.5, '0X05FP', 1, 'Seller is good', '2020-02-18 06:48:22'), 
        ('47CMJ5', '1231', 4.7, '0X05FP', 1, 'Seller is friendly', '2020-02-18 06:48:22'), 
        ('7JZ9LN', '1234', 2.1, 'NN2DCN', 1, 'Seller is rude', '2020-08-21 01:10:32'), 
        ('OONGIE', '1274', 3.4, 'VNWCA6', 1, 'Seller is good', '2020-08-08 13:27:34'), 
        ('Q618G5', '1242', 3.7, 'CJZ3O5', 1, 'Delivery is on time', '2020-06-18 17:11:34'), 
        ('PD85DO', '1265', 1.5, 'IC153D', 1, 'Seller is rude', '2020-08-06 19:11:12'), 
        ('YSLQUC', '1242', 3.8, 'CJZ3O5', 1, 'Seller is rude', '2020-06-19 17:11:34'), 
        ('OFOX1T', '1242', 4.6, 'CJZ3O5', 1, 'Great Product', '2020-06-19 17:11:34'), 
        ('3ANGI9', '1214', 2.8, 'CDG5NA', 1, 'Delivery is slightly late', '2020-07-08 08:35:33'), 
        ('PDU0U5', '1276', 4.3, 'U4QN6E', 1, 'Seller is friendly', '2020-06-08 21:33:23'), 
        ('GLYLEO', '1242', 4.4, 'GPY0C9', 1, 'Seller is friendly', '2020-06-19 17:11:34');

        
-- Inserting data into Complaint

INSERT INTO Complaint
VALUES  ('0001', NULL, '0004','pending', '2021-02-12 11:09:12', NULL, NULL),
        ('0001', '0017', '1004', 'being handled', '2019-11-13 14:04:21', '2019-11-14 17:04:21', NULL),
        ('0003', '0017', '1015', 'addressed', '2020-10-20 12:02:12.', '2020-10-23 08:02:12', '2020-10-25 23:04:21'),
        ('0004', '0017', '1016', 'addressed', '2019-11-13 14:04:21', '2019-11-17 17:04:21', '2019-11-18 15:04:21'),
        ('0007', '0003', '1017', 'addressed', '2019-12-13 14:04:21', '2019-12-13 17:04:21', '2019-12-17 15:04:21'),
        ('0008', '0003', '1015', 'addressed', '2021-08-09 04:22:08','2021-08-10 04:22:08', '2021-08-12 04:22:08'),
        ('0009', '0003', '1004', 'being handled', '2019-10-13 14:04:21', '2019-10-14 17:04:21', NULL),
        ('0012', '0003', '1244', 'addressed', '2020-07-13 08:35:15', '2020-07-14 08:35:15', '2020-07-15 08:35:15'),
        ('0015', '0013', '1238', 'addressed', '2020-01-28 06:26:48', '2020-01-28 08:26:48', '2020-01-28 09:26:48'),
        ('0002', '0012', '1238', 'addressed', '2020-10-15 16:12:23','2020-10-16 16:12:23', '2020-10-16 19:12:23'),
        ('0005', '0013', '1249', 'addressed', '2020-06-22 08:21:27', '2020-06-22 10:21:27', '2020-06-23 08:21:27'),
        ('0006', '0013', '1004', 'addressed', '2020-01-05 06:35:32', '2020-01-06 06:35:32' ,'2020-01-07 08:35:32'),
        ('0010', '0017', '1215', 'addressed','2020-03-07 20:11:03', '2020-03-08 08:11:03', '2020-03-10 15:11:03'),
        ('0011', '0002', '1202', 'addressed', '2020-07-20 12:01:48', '2020-07-21 12:01:48', '2020-07-24 12:01:48'),
        ('0013', '0002', '1004', 'addressed','2021-01-13 14:04:21', '2021-01-13 17:04:21','2021-02-19 14:20:28'),
        ('0014', NULL, '1213', 'penidng', '2021-01-13 14:04:21', NULL, NULL),
        ('0016', NULL, '1016', 'pending', '2021-02-19 14:20:28', NULL, NULL);

-- Inserting data into ProductComplaint

INSERT INTO ProductComplaint   
VALUES  ('0001', 'ABC001'),
        ('0003', 'DEF002'),
        ('0004', 'GHI003'), 
        ('0007', 'JKL004'),
        ('0008', 'MNO005'),
        ('0009', 'QRS006'),
        ('0012', 'TUV007'),
        ('0015', 'XYZ008');

-- Inserting data into ShopComplaint

INSERT INTO ShopComplaint
VALUES  ('0002', 'Apple'),
        ('0005', 'Uniqlo'),
        ('0006', 'Sephora'),
        ('0010', 'Giant'),
        ('0011', 'Giant'),
        ('0013', 'Sephora'),
        ('0014', 'Ikea'),
        ('0016', 'Challenger');

