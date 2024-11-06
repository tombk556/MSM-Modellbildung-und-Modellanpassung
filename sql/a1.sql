-- A1.2

-- Tabelle: Geografie
CREATE TABLE Geografie (
    Land_ID VARCHAR(2) PRIMARY KEY,
    Bundesland VARCHAR(25),
    Region VARCHAR(25),
    Staat VARCHAR(25)
);

-- Tabelle: MitarbeiterShop
CREATE TABLE MitarbeiterShop (
    Mitarbeiter_ID VARCHAR(2) PRIMARY KEY,
    Name VARCHAR(25)
);

-- Tabelle: Produktkategorie
CREATE TABLE Produktkategorie (
    Kategorie_ID VARCHAR(2) PRIMARY KEY,
    Kategorie VARCHAR(25),
    Kategorie_Manager VARCHAR(25)
);

-- Tabelle: Produktsubkategorie
CREATE TABLE Produktsubkategorie (
    Subkategorie_ID VARCHAR(3) PRIMARY KEY,
    Subkategorie VARCHAR(25),
    Subkategorie_Manager VARCHAR(25),
    Kategorie_ID VARCHAR(2),
    FOREIGN KEY (Kategorie_ID) REFERENCES Produktkategorie(Kategorie_ID)
);

-- Tabelle: Produkt
CREATE TABLE Produkt (
    Produkt_ID VARCHAR(4) PRIMARY KEY,
    Markenname VARCHAR(25),
    Produktname VARCHAR(40),
    Preis MONEY,
    Subkategorie_ID VARCHAR(3),
    FOREIGN KEY (Subkategorie_ID) REFERENCES Produktsubkategorie(Subkategorie_ID)
);

-- Tabelle: Zeit
CREATE TABLE Zeit (
    Mon_ID VARCHAR(6) PRIMARY KEY,
    Monatsname VARCHAR(20),
    Q_ID VARCHAR(6),
    Quartal VARCHAR(10),
    Jahr VARCHAR(4)
);

-- Tabelle: Umsatzdaten
CREATE TABLE Umsatzdaten (
    Mon_ID VARCHAR(6),
    Land_ID VARCHAR(2),
    Produkt_ID VARCHAR(4),
    Mitarbeiter_ID VARCHAR(2),
    Umsatzbetrag MONEY,
    Umsatzmenge INTEGER,
    PRIMARY KEY (Mon_ID, Land_ID, Produkt_ID, Mitarbeiter_ID),
    FOREIGN KEY (Mon_ID) REFERENCES Zeit(Mon_ID),
    FOREIGN KEY (Land_ID) REFERENCES Geografie(Land_ID),
    FOREIGN KEY (Produkt_ID) REFERENCES Produkt(Produkt_ID),
    FOREIGN KEY (Mitarbeiter_ID) REFERENCES MitarbeiterShop(Mitarbeiter_ID)
);


-- A1.3
-- Geografie
INSERT INTO Geografie VALUES( '01', 'Sachsen' , 'Ost' , 'Deutschland' );
INSERT INTO Geografie VALUES( '02', 'Bayern' , 'Süd' , 'Deutschland' );
INSERT INTO Geografie VALUES( '03', 'Saarland' , 'West' , 'Deutschland' );
INSERT INTO Geografie VALUES( '04', 'Nordrhein-Westfalen' , 'West' , 'Deutschland' );
INSERT INTO Geografie VALUES( '05', 'Baden-Württemberg' , 'Süd' , 'Deutschland' );
INSERT INTO Geografie VALUES( '06', 'Rheinland-Pfalz' , 'West' , 'Deutschland' );
INSERT INTO Geografie VALUES( '07', 'Niedersachsen' , 'West' , 'Deutschland' );
INSERT INTO Geografie VALUES( '08', 'Schleswig-Holstein' , 'Nord' , 'Deutschland' );
INSERT INTO Geografie VALUES( '09', 'Hamburg' , 'Nord' , 'Deutschland' );
INSERT INTO Geografie VALUES( '10', 'Bremen' , 'Nord' , 'Deutschland' );
INSERT INTO Geografie VALUES( '11', 'Mecklenburg-Vorpommern' , 'Nord' , 'Deutschland' );
INSERT INTO Geografie VALUES( '12', 'Brandenburg' , 'Ost' , 'Deutschland' );
INSERT INTO Geografie VALUES( '13', 'Berlin' , 'Ost' , 'Deutschland' );
INSERT INTO Geografie VALUES( '14', 'Sachsen-Anhalt' , 'Ost' , 'Deutschland' );
INSERT INTO Geografie VALUES( '15', 'Thüringen' , 'Ost' , 'Deutschland' );
INSERT INTO Geografie VALUES( '16', 'Hessen' , 'West' , 'Deutschland' );
INSERT INTO Geografie VALUES( '17', 'Valais' , 'Süd' , 'Schweiz' );
INSERT INTO Geografie VALUES( '18', 'Ticino' , 'Süd' , 'Schweiz' );
INSERT INTO Geografie VALUES( '19', 'Graubünden' , 'Ost' , 'Schweiz' );
INSERT INTO Geografie VALUES( '20', 'Geneva' , 'Süd' , 'Schweiz' );
INSERT INTO Geografie VALUES( '21', 'Vaud' , 'West' , 'Schweiz' );
INSERT INTO Geografie VALUES( '22', 'Fribourg' , 'West' , 'Schweiz' );
INSERT INTO Geografie VALUES( '23', 'Bern' , 'West' , 'Schweiz' );
INSERT INTO Geografie VALUES( '24', 'Neuchâtel' , 'West' , 'Schweiz' );
INSERT INTO Geografie VALUES( '25', 'Jura' , 'Nord' , 'Schweiz' );
INSERT INTO Geografie VALUES( '26', 'Basel' , 'Nord' , 'Schweiz' );
INSERT INTO Geografie VALUES( '27', 'Solothurn' , 'Nord' , 'Schweiz' );
INSERT INTO Geografie VALUES( '28', 'Aargau' , 'Nord' , 'Schweiz' );
INSERT INTO Geografie VALUES( '29', 'Schaffhausen' , 'Nord' , 'Schweiz' );
INSERT INTO Geografie VALUES( '30', 'Zürich' , 'Nord' , 'Schweiz' );
INSERT INTO Geografie VALUES( '31', 'Luzern' , 'West' , 'Schweiz' );
INSERT INTO Geografie VALUES( '32', 'Unterwalden' , 'West' , 'Schweiz' );
INSERT INTO Geografie VALUES( '33', 'Appenzell' , 'Ost' , 'Schweiz' );
INSERT INTO Geografie VALUES( '34', 'Sankt Gallen' , 'Ost' , 'Schweiz' );
INSERT INTO Geografie VALUES( '35', 'Zug' , 'Ost' , 'Schweiz' );
INSERT INTO Geografie VALUES( '36', 'Schwyz' , 'Ost' , 'Schweiz' );
INSERT INTO Geografie VALUES( '37', 'Glarus' , 'Ost' , 'Schweiz' );
INSERT INTO Geografie VALUES( '38', 'Uri' , 'Ost' , 'Schweiz' );
INSERT INTO Geografie VALUES( '39', 'Vorarlberg' , 'Österreich' , 'Österreich' );
INSERT INTO Geografie VALUES( '40', 'Tirol' , 'Österreich' , 'Österreich' );
INSERT INTO Geografie VALUES( '41', 'Salzburg' , 'Österreich' , 'Österreich' );
INSERT INTO Geografie VALUES( '42', 'Oberösterreich' , 'Österreich' , 'Österreich' );
INSERT INTO Geografie VALUES( '43', 'Niederösterreich' , 'Österreich' , 'Österreich' );
INSERT INTO Geografie VALUES( '44', 'Burgenland' , 'Österreich' , 'Österreich' );
INSERT INTO Geografie VALUES( '45', 'Steiermark' , 'Österreich' , 'Österreich' );
INSERT INTO Geografie VALUES( '46', 'Kärnten' , 'Österreich' , 'Österreich' );

-- MitarbeiterShop
INSERT INTO MitarbeiterShop VALUES('01' , 'Sybille Neubert'); 
INSERT INTO MitarbeiterShop VALUES('02' , NULL); 
INSERT INTO MitarbeiterShop VALUES('03' , 'Maja Günther'); 
INSERT INTO MitarbeiterShop VALUES('04' , 'Bärbel Blumberg'); 
INSERT INTO MitarbeiterShop VALUES('05' , 'Jonas Müller'); 
INSERT INTO MitarbeiterShop VALUES('06' , 'Rebecca Kunze'); 
INSERT INTO MitarbeiterShop VALUES('08' , 'Horst Lehmann'); 
INSERT INTO MitarbeiterShop VALUES('09' , 'Ralf Förster'); 
INSERT INTO MitarbeiterShop VALUES('10' , 'Heidemarie Flügel'); 
INSERT INTO MitarbeiterShop VALUES('11' , 'Lucie Heinrich'); 
INSERT INTO MitarbeiterShop VALUES('12' , 'Gudrun Dammeier'); 
INSERT INTO MitarbeiterShop VALUES('14' , 'Heinrich Gans'); 
INSERT INTO MitarbeiterShop VALUES('16' , 'Lutz Öresund'); 
INSERT INTO MitarbeiterShop VALUES('17' , 'Sven Klaus'); 
INSERT INTO MitarbeiterShop VALUES('18' , 'Jens Meier'); 
INSERT INTO MitarbeiterShop VALUES('20' , 'Dorit Gille'); 

-- Produktkategorie
INSERT INTO Produktkategorie VALUES('01' , 'Backwaren' , NULL );
INSERT INTO Produktkategorie VALUES('02' , 'Frischwaren' , 'Horst Lehmann' );
INSERT INTO Produktkategorie VALUES('03' , 'Veggie' , 'Maja Günther' );

-- Produktsubkategorie
INSERT INTO Produktsubkategorie VALUES('001' , 'Bagels', 'Heidemarie Flügel' , '01' );
INSERT INTO Produktsubkategorie VALUES('002' , 'Käse', 'Ralf Förster' , '02' );
INSERT INTO Produktsubkategorie VALUES('003' , 'Hülsenfrüchte', 'Bärbel Blumberg' , '03' );
INSERT INTO Produktsubkategorie VALUES('004' , 'Sojaprodukte', 'Jonas Müller' , '03' );
INSERT INTO Produktsubkategorie VALUES('005' , 'Gemüse', 'Lucie Heinrich' , '03' );
INSERT INTO Produktsubkategorie VALUES('006' , 'Obst', 'Rebecca Kunze' , '03' );
INSERT INTO Produktsubkategorie VALUES('007' , 'Nüsse und Ölsamen', 'Jens Meier' , '03' );
INSERT INTO Produktsubkategorie VALUES('008' , 'pflanzliche Milch', 'Gudrun Dammeier' , '02' );
INSERT INTO Produktsubkategorie VALUES('009' , 'Muffins', 'Lutz Öresund' , '01' );
INSERT INTO Produktsubkategorie VALUES('010' , 'Brot', 'Heinrich Gans' , '01' );
INSERT INTO Produktsubkategorie VALUES('011' , 'Sauerrahm', 'Sven Klaus' , '02' );
INSERT INTO Produktsubkategorie VALUES('012' , 'Joghurt', 'Dorit Gille' , '02' );

-- Produkt
INSERT INTO Produkt VALUES('1001' , 'German' ,  'Leinsamen' ,CAST(REPLACE('2,45',  ',', '.') AS MONEY), '007' );
INSERT INTO Produkt VALUES('1002' , 'German' ,  'Äpfel' ,CAST(REPLACE('1,2',  ',', '.') AS MONEY), '006' );
INSERT INTO Produkt VALUES('1003' , 'German' ,  'Aubergine' ,CAST(REPLACE('3',  ',', '.') AS MONEY), '005' );
INSERT INTO Produkt VALUES('1004' , 'German' ,  'Blumenkohl' ,CAST(REPLACE('2,05',  ',', '.') AS MONEY), '005' );
INSERT INTO Produkt VALUES('1005' , 'German' ,  'Brokkoli' ,CAST(REPLACE('1,1',  ',', '.') AS MONEY), '005' );
INSERT INTO Produkt VALUES('1006' , 'German' ,  'grüne Linsen' ,CAST(REPLACE('0,26',  ',', '.') AS MONEY), '003' );
INSERT INTO Produkt VALUES('1007' , 'German' ,  'Berglinsen' ,CAST(REPLACE('1,48',  ',', '.') AS MONEY), '003' );
INSERT INTO Produkt VALUES('1008' , 'German' ,  'rote Linsen' ,CAST(REPLACE('3,05',  ',', '.') AS MONEY), '003' );
INSERT INTO Produkt VALUES('1009' , 'German' ,  'Kichererbsen' ,CAST(REPLACE('2,49',  ',', '.') AS MONEY), '003' );
INSERT INTO Produkt VALUES('1010' , 'German' ,  'Räuchertofu' ,CAST(REPLACE('2,04',  ',', '.') AS MONEY), '004' );
INSERT INTO Produkt VALUES('1011' , 'German' ,  'Wallnüsse' ,CAST(REPLACE('2,15',  ',', '.') AS MONEY), '007' );
INSERT INTO Produkt VALUES('1012' , 'German' ,  'Birnen' ,CAST(REPLACE('0,97',  ',', '.') AS MONEY), '006' );
INSERT INTO Produkt VALUES('1013' , 'German' ,  'Pinienkerne' ,CAST(REPLACE('2,21',  ',', '.') AS MONEY), '007' );
INSERT INTO Produkt VALUES('1101' , 'Selfcooking' ,  'Wallnüsse' ,CAST(REPLACE('1,4',  ',', '.') AS MONEY), '007' );
INSERT INTO Produkt VALUES('1102' , 'Selfcooking' ,  'Äpfel' ,CAST(REPLACE('0,79',  ',', '.') AS MONEY), '006' );
INSERT INTO Produkt VALUES('1103' , 'Selfcooking' ,  'Aubergine' ,CAST(REPLACE('1,15',  ',', '.') AS MONEY), '005' );
INSERT INTO Produkt VALUES('1104' , 'Selfcooking' ,  'Blumenkohl' ,CAST(REPLACE('0,86',  ',', '.') AS MONEY), '005' );
INSERT INTO Produkt VALUES('1105' , 'Selfcooking' ,  'Brokkoli' ,CAST(REPLACE('2,29',  ',', '.') AS MONEY), '005' );
INSERT INTO Produkt VALUES('1106' , 'Selfcooking' ,  'grüne Linsen' ,CAST(REPLACE('1,68',  ',', '.') AS MONEY), '003' );
INSERT INTO Produkt VALUES('1107' , 'Selfcooking' ,  'Berglinsen' ,CAST(REPLACE('0,66',  ',', '.') AS MONEY), '003' );
INSERT INTO Produkt VALUES('1108' , 'Selfcooking' ,  'rote Linsen' ,CAST(REPLACE('2,51',  ',', '.') AS MONEY), '003' );
INSERT INTO Produkt VALUES('1109' , 'Selfcooking' ,  'Kichererbsen' ,CAST(REPLACE('1,23',  ',', '.') AS MONEY), '003' );
INSERT INTO Produkt VALUES('1110' , 'Selfcooking' ,  'Räuchertofu' ,CAST(REPLACE('1,02',  ',', '.') AS MONEY), '004' );
INSERT INTO Produkt VALUES('1111' , 'Selfcooking' ,  'Pinienkerne' ,CAST(REPLACE('1,47',  ',', '.') AS MONEY), '007' );
INSERT INTO Produkt VALUES('1112' , 'Selfcooking' ,  'Birnen' ,CAST(REPLACE('1,31',  ',', '.') AS MONEY), '006' );
INSERT INTO Produkt VALUES('1113' , 'Selfcooking' ,  'Leinsamen' ,CAST(REPLACE('1,14',  ',', '.') AS MONEY), '007' );
INSERT INTO Produkt VALUES('1201' , 'Biomühle' ,  'Dinkelbrot' ,CAST(REPLACE('1,36',  ',', '.') AS MONEY), '010' );
INSERT INTO Produkt VALUES('1202' , 'Biomühle' ,  'Vollkornbrot' ,CAST(REPLACE('1,65',  ',', '.') AS MONEY), '010' );
INSERT INTO Produkt VALUES('1203' , 'Biomühle' ,  'Heidelbeermuffins' ,CAST(REPLACE('1,96',  ',', '.') AS MONEY), '009' );
INSERT INTO Produkt VALUES('1204' , 'Biomühle' ,  'Bagels' ,CAST(REPLACE('1,09',  ',', '.') AS MONEY), '001' );
INSERT INTO Produkt VALUES('1205' , 'Biomühle' ,  'Schokomuffins' ,CAST(REPLACE('1,58',  ',', '.') AS MONEY), '009' );
INSERT INTO Produkt VALUES('1206' , 'Biomühle' ,  'Preiselbeermuffins' ,CAST(REPLACE('1,5',  ',', '.') AS MONEY), '009' );
INSERT INTO Produkt VALUES('1207' , 'Biomühle' ,  'Roggenbrot' ,CAST(REPLACE('3,49',  ',', '.') AS MONEY), '010' );
INSERT INTO Produkt VALUES('1208' , 'Biomühle' ,  'Pumpernickel' ,CAST(REPLACE('2,01',  ',', '.') AS MONEY), '010' );
INSERT INTO Produkt VALUES('1209' , 'Biomühle' ,  'engl. Muffins' ,CAST(REPLACE('1,42',  ',', '.') AS MONEY), '009' );
INSERT INTO Produkt VALUES('1301' , 'Carmens' ,  'Heidelbeerjoghurt' ,CAST(REPLACE('2,58',  ',', '.') AS MONEY), '012' );
INSERT INTO Produkt VALUES('1302' , 'Carmens' ,  'Reisdrink' ,CAST(REPLACE('0,85',  ',', '.') AS MONEY), '008' );
INSERT INTO Produkt VALUES('1303' , 'Carmens' ,  'Dinkeldrink' ,CAST(REPLACE('1,03',  ',', '.') AS MONEY), '008' );
INSERT INTO Produkt VALUES('1304' , 'Carmens' ,  'Mandelmilch' ,CAST(REPLACE('0,6',  ',', '.') AS MONEY), '008' );
INSERT INTO Produkt VALUES('1305' , 'Carmens' ,  'Cheddar, mild' ,CAST(REPLACE('1,74',  ',', '.') AS MONEY), '002' );
INSERT INTO Produkt VALUES('1306' , 'Carmens' ,  'Sojamilch' ,CAST(REPLACE('1,02',  ',', '.') AS MONEY), '008' );
INSERT INTO Produkt VALUES('1307' , 'Carmens' ,  'Naturjoghurt' ,CAST(REPLACE('1,61',  ',', '.') AS MONEY), '012' );
INSERT INTO Produkt VALUES('1308' , 'Carmens' ,  'Hafermilch' ,CAST(REPLACE('3,05',  ',', '.') AS MONEY), '008' );
INSERT INTO Produkt VALUES('1309' , 'Carmens' ,  'Creme fraiche' ,CAST(REPLACE('0,52',  ',', '.') AS MONEY), '011' );
INSERT INTO Produkt VALUES('1310' , 'Carmens' ,  'Creme legere' ,CAST(REPLACE('2,22',  ',', '.') AS MONEY), '011' );
INSERT INTO Produkt VALUES('1311' , 'Carmens' ,  'Leerdammer' ,CAST(REPLACE('0,71',  ',', '.') AS MONEY), '002' );
INSERT INTO Produkt VALUES('1312' , 'Carmens' ,  'Münster Käse' ,CAST(REPLACE('0,5',  ',', '.') AS MONEY), '002' );
INSERT INTO Produkt VALUES('1313' , 'Carmens' ,  'Cheddar, scharf' ,CAST(REPLACE('1,35',  ',', '.') AS MONEY), '002' );
INSERT INTO Produkt VALUES('1314' , 'Carmens' ,  'Appenzeller' ,CAST(REPLACE('1,64',  ',', '.') AS MONEY), '002' );
INSERT INTO Produkt VALUES('1315' , 'Carmens' ,  'Old Amsterdam' ,CAST(REPLACE('0,78',  ',', '.') AS MONEY), '002' );
INSERT INTO Produkt VALUES('1316' , 'Carmens' ,  'Havarti Käse' ,CAST(REPLACE('3,39',  ',', '.') AS MONEY), '002' );
INSERT INTO Produkt VALUES('1317' , 'Carmens' ,  'Leerdammer charactere' ,CAST(REPLACE('1,83',  ',', '.') AS MONEY), '002' );
INSERT INTO Produkt VALUES('1318' , 'Carmens' ,  'Leerdammer lite' ,CAST(REPLACE('3,55',  ',', '.') AS MONEY), '002' );
INSERT INTO Produkt VALUES('1401' , 'Ich Darf' ,  'Blumenkohl' ,CAST(REPLACE('1,13',  ',', '.') AS MONEY), '005' );
INSERT INTO Produkt VALUES('1402' , 'Ich Darf' ,  'Aubergine' ,CAST(REPLACE('1,81',  ',', '.') AS MONEY), '005' );
INSERT INTO Produkt VALUES('1403' , 'Ich Darf' ,  'Birnen' ,CAST(REPLACE('1,22',  ',', '.') AS MONEY), '006' );
INSERT INTO Produkt VALUES('1404' , 'Ich Darf' ,  'Brokkoli' ,CAST(REPLACE('0,9',  ',', '.') AS MONEY), '005' );
INSERT INTO Produkt VALUES('1405' , 'Ich Darf' ,  'Seidentofu' ,CAST(REPLACE('2,34',  ',', '.') AS MONEY), '004' );
INSERT INTO Produkt VALUES('1406' , 'Ich Darf' ,  'Äpfel' ,CAST(REPLACE('2,68',  ',', '.') AS MONEY), '006' );
INSERT INTO Produkt VALUES('1407' , 'Ich Darf' ,  'Leinsamen' ,CAST(REPLACE('1,46',  ',', '.') AS MONEY), '007' );
INSERT INTO Produkt VALUES('1408' , 'Ich Darf' ,  'Berglinsen' ,CAST(REPLACE('2,39',  ',', '.') AS MONEY), '003' );
INSERT INTO Produkt VALUES('1409' , 'Ich Darf' ,  'rote Linsen' ,CAST(REPLACE('1,79',  ',', '.') AS MONEY), '003' );
INSERT INTO Produkt VALUES('1410' , 'Ich Darf' ,  'Kichererbsen' ,CAST(REPLACE('2,3',  ',', '.') AS MONEY), '003' );
INSERT INTO Produkt VALUES('1411' , 'Ich Darf' ,  'Wallnüsse' ,CAST(REPLACE('1,37',  ',', '.') AS MONEY), '007' );
INSERT INTO Produkt VALUES('1412' , 'Ich Darf' ,  'Pinienkerne' ,CAST(REPLACE('0,53',  ',', '.') AS MONEY), '007' );
INSERT INTO Produkt VALUES('1413' , 'Ich Darf' ,  'grüne Linsen' ,CAST(REPLACE('1,31',  ',', '.') AS MONEY), '003' );
INSERT INTO Produkt VALUES('1501' , 'Bioweide' ,  'Old Amsterdam' ,CAST(REPLACE('0,96',  ',', '.') AS MONEY), '002' );
INSERT INTO Produkt VALUES('1502' , 'Bioweide' ,  'Appenzeller' ,CAST(REPLACE('0,41',  ',', '.') AS MONEY), '002' );
INSERT INTO Produkt VALUES('1503' , 'Bioweide' ,  'Cheddar, scharf' ,CAST(REPLACE('0,99',  ',', '.') AS MONEY), '002' );
INSERT INTO Produkt VALUES('1504' , 'Bioweide' ,  'Cheddar, mild' ,CAST(REPLACE('0,62',  ',', '.') AS MONEY), '002' );
INSERT INTO Produkt VALUES('1505' , 'Bioweide' ,  'Havarti Käse' ,CAST(REPLACE('2,55',  ',', '.') AS MONEY), '002' );
INSERT INTO Produkt VALUES('1506' , 'Bioweide' ,  'Mandelmilch' ,CAST(REPLACE('0,41',  ',', '.') AS MONEY), '008' );
INSERT INTO Produkt VALUES('1507' , 'Bioweide' ,  'Leerdammer' ,CAST(REPLACE('1,8',  ',', '.') AS MONEY), '002' );
INSERT INTO Produkt VALUES('1508' , 'Bioweide' ,  'Dinkeldrink' ,CAST(REPLACE('2,16',  ',', '.') AS MONEY), '008' );
INSERT INTO Produkt VALUES('1509' , 'Bioweide' ,  'Reisdrink' ,CAST(REPLACE('1,03',  ',', '.') AS MONEY), '008' );
INSERT INTO Produkt VALUES('1510' , 'Bioweide' ,  'Hafermilch' ,CAST(REPLACE('2,53',  ',', '.') AS MONEY), '008' );
INSERT INTO Produkt VALUES('1511' , 'Bioweide' ,  'Leerdammer charactere' ,CAST(REPLACE('1,11',  ',', '.') AS MONEY), '002' );
INSERT INTO Produkt VALUES('1512' , 'Bioweide' ,  'Münster Käse' ,CAST(REPLACE('1,43',  ',', '.') AS MONEY), '002' );
INSERT INTO Produkt VALUES('1513' , 'Bioweide' ,  'Creme fraiche' ,CAST(REPLACE('1,85',  ',', '.') AS MONEY), '011' );
INSERT INTO Produkt VALUES('1514' , 'Bioweide' ,  'Creme legere' ,CAST(REPLACE('1,41',  ',', '.') AS MONEY), '011' );
INSERT INTO Produkt VALUES('1515' , 'Bioweide' ,  'Sojamilch' ,CAST(REPLACE('2,93',  ',', '.') AS MONEY), '008' );
INSERT INTO Produkt VALUES('1516' , 'Bioweide' ,  'Naturjoghurt' ,CAST(REPLACE('2,97',  ',', '.') AS MONEY), '012' );
INSERT INTO Produkt VALUES('1517' , 'Bioweide' ,  'Heidelbeerjoghurt' ,CAST(REPLACE('3,12',  ',', '.') AS MONEY), '012' );
INSERT INTO Produkt VALUES('1518' , 'Bioweide' ,  'Leerdammer lite' ,CAST(REPLACE('1,65',  ',', '.') AS MONEY), '002' );
INSERT INTO Produkt VALUES('1601' , 'Regiomühle' ,  'Vollkornbrot' ,CAST(REPLACE('1,3',  ',', '.') AS MONEY), '010' );
INSERT INTO Produkt VALUES('1602' , 'Regiomühle' ,  'Dinkelbrot' ,CAST(REPLACE('0,75',  ',', '.') AS MONEY), '010' );
INSERT INTO Produkt VALUES('1603' , 'Regiomühle' ,  'Pumpernickel' ,CAST(REPLACE('2,69',  ',', '.') AS MONEY), '010' );
INSERT INTO Produkt VALUES('1604' , 'Regiomühle' ,  'engl. Muffins' ,CAST(REPLACE('1,23',  ',', '.') AS MONEY), '009' );
INSERT INTO Produkt VALUES('1605' , 'Regiomühle' ,  'Preiselbeermuffins' ,CAST(REPLACE('1,38',  ',', '.') AS MONEY), '009' );
INSERT INTO Produkt VALUES('1606' , 'Regiomühle' ,  'Schokomuffins' ,CAST(REPLACE('0,59',  ',', '.') AS MONEY), '009' );
INSERT INTO Produkt VALUES('1607' , 'Regiomühle' ,  'Roggenbrot' ,CAST(REPLACE('1,53',  ',', '.') AS MONEY), '010' );
INSERT INTO Produkt VALUES('1608' , 'Regiomühle' ,  'Bagels' ,CAST(REPLACE('2,58',  ',', '.') AS MONEY), '001' );
INSERT INTO Produkt VALUES('1609' , 'Regiomühle' ,  'Heidelbeermuffins' ,CAST(REPLACE('0,61',  ',', '.') AS MONEY), '009' );
INSERT INTO Produkt VALUES('1701' , 'Black Toast' ,  'engl. Muffins' ,CAST(REPLACE('0,96',  ',', '.') AS MONEY), '009' );
INSERT INTO Produkt VALUES('1702' , 'Black Toast' ,  'Pumpernickel' ,CAST(REPLACE('0,22',  ',', '.') AS MONEY), '010' );
INSERT INTO Produkt VALUES('1703' , 'Black Toast' ,  'Roggenbrot' ,CAST(REPLACE('0,67',  ',', '.') AS MONEY), '010' );
INSERT INTO Produkt VALUES('1704' , 'Black Toast' ,  'Preiselbeermuffins' ,CAST(REPLACE('2,05',  ',', '.') AS MONEY), '009' );
INSERT INTO Produkt VALUES('1705' , 'Black Toast' ,  'Schokomuffins' ,CAST(REPLACE('1,22',  ',', '.') AS MONEY), '009' );
INSERT INTO Produkt VALUES('1706' , 'Black Toast' ,  'Bagels' ,CAST(REPLACE('1,26',  ',', '.') AS MONEY), '001' );
INSERT INTO Produkt VALUES('1707' , 'Black Toast' ,  'Heidelbeermuffins' ,CAST(REPLACE('2,3',  ',', '.') AS MONEY), '009' );
INSERT INTO Produkt VALUES('1708' , 'Black Toast' ,  'Dinkelbrot' ,CAST(REPLACE('1,69',  ',', '.') AS MONEY), '010' );
INSERT INTO Produkt VALUES('1709' , 'Black Toast' ,  'Vollkornbrot' ,CAST(REPLACE('2,75',  ',', '.') AS MONEY), '010' );
INSERT INTO Produkt VALUES('1801' , 'Freiland' ,  'engl. Muffins' ,CAST(REPLACE('2,21',  ',', '.') AS MONEY), '009' );
INSERT INTO Produkt VALUES('1802' , 'Freiland' ,  'Dinkelbrot' ,CAST(REPLACE('0,73',  ',', '.') AS MONEY), '010' );
INSERT INTO Produkt VALUES('1803' , 'Freiland' ,  'Heidelbeermuffins' ,CAST(REPLACE('2,5',  ',', '.') AS MONEY), '009' );
INSERT INTO Produkt VALUES('1804' , 'Freiland' ,  'Bagels' ,CAST(REPLACE('1,75',  ',', '.') AS MONEY), '001' );
INSERT INTO Produkt VALUES('1805' , 'Freiland' ,  'Schokomuffins' ,CAST(REPLACE('2,6',  ',', '.') AS MONEY), '009' );
INSERT INTO Produkt VALUES('1806' , 'Freiland' ,  'Preiselbeermuffins' ,CAST(REPLACE('2,58',  ',', '.') AS MONEY), '009' );
INSERT INTO Produkt VALUES('1807' , 'Freiland' ,  'Vollkornbrot' ,CAST(REPLACE('3,03',  ',', '.') AS MONEY), '010' );
INSERT INTO Produkt VALUES('1808' , 'Freiland' ,  'Pumpernickel' ,CAST(REPLACE('3,07',  ',', '.') AS MONEY), '010' );
INSERT INTO Produkt VALUES('1809' , 'Freiland' ,  'Roggenbrot' ,CAST(REPLACE('2,31',  ',', '.') AS MONEY), '010' );
INSERT INTO Produkt VALUES('1901' , 'Dresdner' ,  'Leinsamen' ,CAST(REPLACE('1,4',  ',', '.') AS MONEY), '007' );
INSERT INTO Produkt VALUES('1902' , 'Dresdner' ,  'Kichererbsen' ,CAST(REPLACE('1,75',  ',', '.') AS MONEY), '003' );
INSERT INTO Produkt VALUES('1903' , 'Dresdner' ,  'Birnen' ,CAST(REPLACE('2,6',  ',', '.') AS MONEY), '006' );
INSERT INTO Produkt VALUES('1904' , 'Dresdner' ,  'Äpfel' ,CAST(REPLACE('2,35',  ',', '.') AS MONEY), '006' );
INSERT INTO Produkt VALUES('1905' , 'Dresdner' ,  'Aubergine' ,CAST(REPLACE('2,61',  ',', '.') AS MONEY), '005' );
INSERT INTO Produkt VALUES('1906' , 'Dresdner' ,  'Räuchertofu' ,CAST(REPLACE('0,66',  ',', '.') AS MONEY), '004' );
INSERT INTO Produkt VALUES('1907' , 'Dresdner' ,  'Pinienkerne' ,CAST(REPLACE('0,59',  ',', '.') AS MONEY), '007' );
INSERT INTO Produkt VALUES('1908' , 'Dresdner' ,  'Blumenkohl' ,CAST(REPLACE('2,76',  ',', '.') AS MONEY), '005' );
INSERT INTO Produkt VALUES('1909' , 'Dresdner' ,  'Brokkoli' ,CAST(REPLACE('2,07',  ',', '.') AS MONEY), '005' );
INSERT INTO Produkt VALUES('1910' , 'Dresdner' ,  'grüne Linsen' ,CAST(REPLACE('1,72',  ',', '.') AS MONEY), '003' );
INSERT INTO Produkt VALUES('1911' , 'Dresdner' ,  'Berglinsen' ,CAST(REPLACE('1,54',  ',', '.') AS MONEY), '003' );
INSERT INTO Produkt VALUES('1912' , 'Dresdner' ,  'rote Linsen' ,CAST(REPLACE('0,46',  ',', '.') AS MONEY), '003' );
INSERT INTO Produkt VALUES('1913' , 'Dresdner' ,  'Wallnüsse' ,CAST(REPLACE('3,66',  ',', '.') AS MONEY), '007' );
INSERT INTO Produkt VALUES('2001' , 'Veggieland' ,  'Leinsamen' ,CAST(REPLACE('2,68',  ',', '.') AS MONEY), '007' );
INSERT INTO Produkt VALUES('2002' , 'Veggieland' ,  'rote Linsen' ,CAST(REPLACE('1,83',  ',', '.') AS MONEY), '003' );
INSERT INTO Produkt VALUES('2003' , 'Veggieland' ,  'Pinienkerne' ,CAST(REPLACE('1,69',  ',', '.') AS MONEY), '007' );
INSERT INTO Produkt VALUES('2004' , 'Veggieland' ,  'Wallnüsse' ,CAST(REPLACE('3,68',  ',', '.') AS MONEY), '007' );
INSERT INTO Produkt VALUES('2005' , 'Veggieland' ,  'Kichererbsen' ,CAST(REPLACE('2,34',  ',', '.') AS MONEY), '003' );
INSERT INTO Produkt VALUES('2006' , 'Veggieland' ,  'Berglinsen' ,CAST(REPLACE('1,26',  ',', '.') AS MONEY), '003' );
INSERT INTO Produkt VALUES('2007' , 'Veggieland' ,  'grüne Linsen' ,CAST(REPLACE('1,52',  ',', '.') AS MONEY), '003' );
INSERT INTO Produkt VALUES('2008' , 'Veggieland' ,  'Brokkoli' ,CAST(REPLACE('2,35',  ',', '.') AS MONEY), '005' );
INSERT INTO Produkt VALUES('2009' , 'Veggieland' ,  'Blumenkohl' ,CAST(REPLACE('1,32',  ',', '.') AS MONEY), '005' );
INSERT INTO Produkt VALUES('2010' , 'Veggieland' ,  'Aubergine' ,CAST(REPLACE('3,38',  ',', '.') AS MONEY), '005' );
INSERT INTO Produkt VALUES('2011' , 'Veggieland' ,  'Äpfel' ,CAST(REPLACE('1,78',  ',', '.') AS MONEY), '006' );
INSERT INTO Produkt VALUES('2012' , 'Veggieland' ,  'Birnen' ,CAST(REPLACE('1,29',  ',', '.') AS MONEY), '006' );
INSERT INTO Produkt VALUES('2013' , 'Veggieland' ,  'Seidentofu' ,CAST(REPLACE('2,37',  ',', '.') AS MONEY), '004' );
INSERT INTO Produkt VALUES('2101' , 'Bergwiese' ,  'Appenzeller' ,CAST(REPLACE('2,24',  ',', '.') AS MONEY), '002' );
INSERT INTO Produkt VALUES('2102' , 'Bergwiese' ,  'Hafermilch' ,CAST(REPLACE('0,95',  ',', '.') AS MONEY), '008' );
INSERT INTO Produkt VALUES('2103' , 'Bergwiese' ,  'Heidelbeerjoghurt' ,CAST(REPLACE('0,38',  ',', '.') AS MONEY), '012' );
INSERT INTO Produkt VALUES('2104' , 'Bergwiese' ,  'Havarti Käse' ,CAST(REPLACE('3,07',  ',', '.') AS MONEY), '002' );
INSERT INTO Produkt VALUES('2105' , 'Bergwiese' ,  'Sojamilch' ,CAST(REPLACE('0,54',  ',', '.') AS MONEY), '008' );
INSERT INTO Produkt VALUES('2106' , 'Bergwiese' ,  'Creme legere' ,CAST(REPLACE('0,67',  ',', '.') AS MONEY), '011' );
INSERT INTO Produkt VALUES('2107' , 'Bergwiese' ,  'Reisdrink' ,CAST(REPLACE('1,38',  ',', '.') AS MONEY), '008' );
INSERT INTO Produkt VALUES('2108' , 'Bergwiese' ,  'Dinkeldrink' ,CAST(REPLACE('1,25',  ',', '.') AS MONEY), '008' );
INSERT INTO Produkt VALUES('2109' , 'Bergwiese' ,  'Mandelmilch' ,CAST(REPLACE('3,75',  ',', '.') AS MONEY), '008' );
INSERT INTO Produkt VALUES('2110' , 'Bergwiese' ,  'Cheddar, mild' ,CAST(REPLACE('2,96',  ',', '.') AS MONEY), '002' );
INSERT INTO Produkt VALUES('2111' , 'Bergwiese' ,  'Cheddar, scharf' ,CAST(REPLACE('2,79',  ',', '.') AS MONEY), '002' );
INSERT INTO Produkt VALUES('2112' , 'Bergwiese' ,  'Old Amsterdam' ,CAST(REPLACE('2,47',  ',', '.') AS MONEY), '002' );
INSERT INTO Produkt VALUES('2113' , 'Bergwiese' ,  'Leerdammer charactere' ,CAST(REPLACE('2,95',  ',', '.') AS MONEY), '002' );
INSERT INTO Produkt VALUES('2114' , 'Bergwiese' ,  'Leerdammer lite' ,CAST(REPLACE('1,54',  ',', '.') AS MONEY), '002' );
INSERT INTO Produkt VALUES('2115' , 'Bergwiese' ,  'Leerdammer' ,CAST(REPLACE('3,12',  ',', '.') AS MONEY), '002' );
INSERT INTO Produkt VALUES('2116' , 'Bergwiese' ,  'Naturjoghurt' ,CAST(REPLACE('2,06',  ',', '.') AS MONEY), '012' );
INSERT INTO Produkt VALUES('2117' , 'Bergwiese' ,  'Creme fraiche' ,CAST(REPLACE('2,26',  ',', '.') AS MONEY), '011' );
INSERT INTO Produkt VALUES('2118' , 'Bergwiese' ,  'Münster Käse' ,CAST(REPLACE('1,1',  ',', '.') AS MONEY), '002' );
INSERT INTO Produkt VALUES('2201' , 'Biowelt' ,  'Naturjoghurt' ,CAST(REPLACE('3,94',  ',', '.') AS MONEY), '012' );
INSERT INTO Produkt VALUES('2202' , 'Biowelt' ,  'Old Amsterdam' ,CAST(REPLACE('2,6',  ',', '.') AS MONEY), '002' );
INSERT INTO Produkt VALUES('2203' , 'Biowelt' ,  'Leerdammer lite' ,CAST(REPLACE('0,95',  ',', '.') AS MONEY), '002' );
INSERT INTO Produkt VALUES('2204' , 'Biowelt' ,  'Havarti Käse' ,CAST(REPLACE('1,04',  ',', '.') AS MONEY), '002' );
INSERT INTO Produkt VALUES('2205' , 'Biowelt' ,  'Heidelbeerjoghurt' ,CAST(REPLACE('1,82',  ',', '.') AS MONEY), '012' );
INSERT INTO Produkt VALUES('2206' , 'Biowelt' ,  'Appenzeller' ,CAST(REPLACE('0,74',  ',', '.') AS MONEY), '002' );
INSERT INTO Produkt VALUES('2207' , 'Biowelt' ,  'Sojamilch' ,CAST(REPLACE('0,35',  ',', '.') AS MONEY), '008' );
INSERT INTO Produkt VALUES('2208' , 'Biowelt' ,  'Hafermilch' ,CAST(REPLACE('0,89',  ',', '.') AS MONEY), '008' );
INSERT INTO Produkt VALUES('2209' , 'Biowelt' ,  'Reisdrink' ,CAST(REPLACE('2,08',  ',', '.') AS MONEY), '008' );
INSERT INTO Produkt VALUES('2210' , 'Biowelt' ,  'Leerdammer' ,CAST(REPLACE('1,74',  ',', '.') AS MONEY), '002' );
INSERT INTO Produkt VALUES('2211' , 'Biowelt' ,  'Mandelmilch' ,CAST(REPLACE('3,19',  ',', '.') AS MONEY), '008' );
INSERT INTO Produkt VALUES('2212' , 'Biowelt' ,  'Cheddar, mild' ,CAST(REPLACE('3,17',  ',', '.') AS MONEY), '002' );
INSERT INTO Produkt VALUES('2213' , 'Biowelt' ,  'Cheddar, scharf' ,CAST(REPLACE('2,02',  ',', '.') AS MONEY), '002' );
INSERT INTO Produkt VALUES('2214' , 'Biowelt' ,  'Creme legere' ,CAST(REPLACE('0,78',  ',', '.') AS MONEY), '011' );
INSERT INTO Produkt VALUES('2215' , 'Biowelt' ,  'Creme fraiche' ,CAST(REPLACE('2,04',  ',', '.') AS MONEY), '011' );
INSERT INTO Produkt VALUES('2216' , 'Biowelt' ,  'Dinkeldrink' ,CAST(REPLACE('0,9',  ',', '.') AS MONEY), '008' );
INSERT INTO Produkt VALUES('2217' , 'Biowelt' ,  'Leerdammer charactere' ,CAST(REPLACE('1,27',  ',', '.') AS MONEY), '002' );
INSERT INTO Produkt VALUES('2218' , 'Biowelt' ,  'Münster Käse' ,CAST(REPLACE('3,74',  ',', '.') AS MONEY), '002' );
INSERT INTO Produkt VALUES('2301' , 'Regionalvertrieb' ,  'Naturjoghurt' ,CAST(REPLACE('0,62',  ',', '.') AS MONEY), '012' );
INSERT INTO Produkt VALUES('2302' , 'Regionalvertrieb' ,  'Sojamilch' ,CAST(REPLACE('2,58',  ',', '.') AS MONEY), '008' );
INSERT INTO Produkt VALUES('2303' , 'Regionalvertrieb' ,  'Hafermilch' ,CAST(REPLACE('1,18',  ',', '.') AS MONEY), '008' );
INSERT INTO Produkt VALUES('2304' , 'Regionalvertrieb' ,  'Reisdrink' ,CAST(REPLACE('1,78',  ',', '.') AS MONEY), '008' );
INSERT INTO Produkt VALUES('2305' , 'Regionalvertrieb' ,  'Dinkeldrink' ,CAST(REPLACE('0,62',  ',', '.') AS MONEY), '008' );
INSERT INTO Produkt VALUES('2306' , 'Regionalvertrieb' ,  'Cheddar, mild' ,CAST(REPLACE('2,51',  ',', '.') AS MONEY), '002' );
INSERT INTO Produkt VALUES('2307' , 'Regionalvertrieb' ,  'Cheddar, scharf' ,CAST(REPLACE('2,72',  ',', '.') AS MONEY), '002' );
INSERT INTO Produkt VALUES('2308' , 'Regionalvertrieb' ,  'Heidelbeerjoghurt' ,CAST(REPLACE('3,5',  ',', '.') AS MONEY), '012' );
INSERT INTO Produkt VALUES('2309' , 'Regionalvertrieb' ,  'Mandelmilch' ,CAST(REPLACE('0,68',  ',', '.') AS MONEY), '008' );
INSERT INTO Produkt VALUES('2310' , 'Regionalvertrieb' ,  'Old Amsterdam' ,CAST(REPLACE('1,24',  ',', '.') AS MONEY), '002' );
INSERT INTO Produkt VALUES('2311' , 'Regionalvertrieb' ,  'Havarti Käse' ,CAST(REPLACE('3,1',  ',', '.') AS MONEY), '002' );
INSERT INTO Produkt VALUES('2312' , 'Regionalvertrieb' ,  'Leerdammer charactere' ,CAST(REPLACE('3,28',  ',', '.') AS MONEY), '002' );
INSERT INTO Produkt VALUES('2313' , 'Regionalvertrieb' ,  'Leerdammer lite' ,CAST(REPLACE('1,48',  ',', '.') AS MONEY), '002' );
INSERT INTO Produkt VALUES('2314' , 'Regionalvertrieb' ,  'Münster Käse' ,CAST(REPLACE('1,56',  ',', '.') AS MONEY), '002' );
INSERT INTO Produkt VALUES('2315' , 'Regionalvertrieb' ,  'Leerdammer' ,CAST(REPLACE('3,22',  ',', '.') AS MONEY), '002' );
INSERT INTO Produkt VALUES('2316' , 'Regionalvertrieb' ,  'Creme legere' ,CAST(REPLACE('1,93',  ',', '.') AS MONEY), '011' );
INSERT INTO Produkt VALUES('2317' , 'Regionalvertrieb' ,  'Appenzeller' ,CAST(REPLACE('1,58',  ',', '.') AS MONEY), '002' );
INSERT INTO Produkt VALUES('2318' , 'Regionalvertrieb' ,  'Creme fraiche' ,CAST(REPLACE('0,47',  ',', '.') AS MONEY), '011' );
INSERT INTO Produkt VALUES('2401' , 'Sachsenmühle' ,  'Dinkelbrot' ,CAST(REPLACE('0,36',  ',', '.') AS MONEY), '010' );
INSERT INTO Produkt VALUES('2402' , 'Sachsenmühle' ,  'Pumpernickel' ,CAST(REPLACE('0,67',  ',', '.') AS MONEY), '010' );
INSERT INTO Produkt VALUES('2403' , 'Sachsenmühle' ,  'Vollkornbrot' ,CAST(REPLACE('0,65',  ',', '.') AS MONEY), '010' );
INSERT INTO Produkt VALUES('2404' , 'Sachsenmühle' ,  'Roggenbrot' ,CAST(REPLACE('3,57',  ',', '.') AS MONEY), '010' );
INSERT INTO Produkt VALUES('2405' , 'Sachsenmühle' ,  'engl. Muffins' ,CAST(REPLACE('1,5',  ',', '.') AS MONEY), '009' );
INSERT INTO Produkt VALUES('2406' , 'Sachsenmühle' ,  'Preiselbeermuffins' ,CAST(REPLACE('2,45',  ',', '.') AS MONEY), '009' );
INSERT INTO Produkt VALUES('2407' , 'Sachsenmühle' ,  'Bagels' ,CAST(REPLACE('3,2',  ',', '.') AS MONEY), '001' );
INSERT INTO Produkt VALUES('2408' , 'Sachsenmühle' ,  'Heidelbeermuffins' ,CAST(REPLACE('1,1',  ',', '.') AS MONEY), '009' );
INSERT INTO Produkt VALUES('2409' , 'Sachsenmühle' ,  'Schokomuffins' ,CAST(REPLACE('1,57',  ',', '.') AS MONEY), '009' );



-- A1.4 
INSERT INTO Zeit (Mon_ID, Monatsname, Q_ID, Quartal, Jahr) VALUES
('202101', 'Januar', '202101', '1. Quartal', '2021'),
('202102', 'Februar', '202101', '1. Quartal', '2021'),
('202103', 'März', '202101', '1. Quartal', '2021'),
('202104', 'April', '202102', '2. Quartal', '2021'),
('202105', 'Mai', '202102', '2. Quartal', '2021'),
('202106', 'Juni', '202102', '2. Quartal', '2021'),
('202107', 'Juli', '202103', '3. Quartal', '2021'),
('202108', 'August', '202103', '3. Quartal', '2021'),
('202109', 'September', '202103', '3. Quartal', '2021'),
('202110', 'Oktober', '202104', '4. Quartal', '2021'),
('202111', 'November', '202104', '4. Quartal', '2021'),
('202112', 'Dezember', '202104', '4. Quartal', '2021'),
('202201', 'Januar', '202201', '1. Quartal', '2022'),
('202202', 'Februar', '202201', '1. Quartal', '2022'),
('202203', 'März', '202201', '1. Quartal', '2022'),
('202204', 'April', '202202', '2. Quartal', '2022'),
('202205', 'Mai', '202202', '2. Quartal', '2022'),
('202206', 'Juni', '202202', '2. Quartal', '2022'),
('202207', 'Juli', '202203', '3. Quartal', '2022'),
('202208', 'August', '202203', '3. Quartal', '2022'),
('202209', 'September', '202203', '3. Quartal', '2022'),
('202210', 'Oktober', '202204', '4. Quartal', '2022'),
('202211', 'November', '202204', '4. Quartal', '2022'),
('202212', 'Dezember', '202204', '4. Quartal', '2022');


-- A1.5
UPDATE MitarbeiterShop
SET Name = 'Tom Bischopink'
WHERE Mitarbeiter_ID = '02'


UPDATE Produktkategorie
SET Kategorie_Manager = 'Tom Bischopink'
WHERE Kategorie_ID = '01'

ALTER TABLE MitarbeiterShop ADD Manager_ID VARCHAR(2);
ALTER TABLE MitarbeiterShop ADD CONSTRAINT  FK_Manager_ID FOREIGN KEY(Manager_ID) REFERENCES MitarbeiterShop(Mitarbeiter_ID)

UPDATE MitarbeiterShop SET Manager_ID = '02' WHERE Name = 'Heidemarie Flügel';
UPDATE MitarbeiterShop SET Manager_ID = '02' WHERE Name = 'Lutz Öresund';
UPDATE MitarbeiterShop SET Manager_ID = '02' WHERE Name = 'Heinrich Gans';

UPDATE MitarbeiterShop SET Manager_ID = '08' WHERE Name in ('Ralf Förster', 'Gudrun Dammeier', 'Dorit Gille', 'Sven Klaus');

UPDATE MitarbeiterShop SET Manager_ID = '03' WHERE Name in ('Bärbel Blumberg', 'Jonas Müller', 'Lucie Heinrich', 'Rebecca Kunze', 'Jens Meier');

UPDATE MitarbeiterShop SET Manager_ID = '01' WHERE Name in ('Tom Bischopink', 'Horst Lehmann', 'Maja Günther', 'Sybille Neubert');

-- A1.6: siehe Database Diagrams

-- A1.7

-- A1.8
-- a)
CREATE TABLE UmsatzdatenTMP (
    Mon_ID VARCHAR(6),
    Land_ID VARCHAR(2),
    Produkt_ID VARCHAR(4),
    Mitarbeiter_ID VARCHAR(2),
    Umsatzbetrag MONEY,
    Umsatzmenge INTEGER,
    PRIMARY KEY (Mon_ID, Land_ID, Produkt_ID, Mitarbeiter_ID),
    FOREIGN KEY (Mon_ID) REFERENCES Zeit(Mon_ID),
    FOREIGN KEY (Land_ID) REFERENCES Geografie(Land_ID),
    FOREIGN KEY (Produkt_ID) REFERENCES Produkt(Produkt_ID),
    FOREIGN KEY (Mitarbeiter_ID) REFERENCES MitarbeiterShop(Mitarbeiter_ID)
);


CREATE TABLE BelegeTMP (
	Bon_ID VARCHAR(4),
	Fil_ID VARCHAR(5),
	Datum DATETIME,
	Prod_ID VARCHAR(4),
	Preis MONEY,
	Anzahl INTEGER
)

-- b)

BULK INSERT BelegeTMP
FROM 'D:\BI\Belege_2021_1.csv'
WITH (

FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n',
FIRSTROW = 2
)

BULK INSERT BelegeTMP
FROM 'D:\BI\Belege_2021_2.csv'
WITH (

FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n',
FIRSTROW = 2
)

BULK INSERT BelegeTMP
FROM 'D:\BI\Belege_2021_3.csv'
WITH (

FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n',
FIRSTROW = 2
)

BULK INSERT BelegeTMP
FROM 'D:\BI\Belege_2021_4.csv'
WITH (

FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n',
FIRSTROW = 2
)

BULK INSERT BelegeTMP
FROM 'D:\BI\Belege_2022_1.csv'
WITH (

FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n',
FIRSTROW = 2
)

BULK INSERT BelegeTMP
FROM 'D:\BI\Belege_2022_2.csv'
WITH (

FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n',
FIRSTROW = 2
)

BULK INSERT BelegeTMP
FROM 'D:\BI\Belege_2022_3.csv'
WITH (

FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n',
FIRSTROW = 2
)

BULK INSERT BelegeTMP
FROM 'D:\BI\Belege_2022_4.csv'
WITH (

FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n',
FIRSTROW = 2
)



-- Insert in die UmsatzdatenTMP
INSERT INTO UmsatzdatenTMP (Mon_ID, Land_ID, Produkt_ID, Mitarbeiter_ID, Umsatzbetrag, Umsatzmenge)
SELECT 
	CONCAT(DATEPART(YEAR, Datum), RIGHT('0' + CAST(DATEPART(MONTH, Datum) AS VARCHAR), 2)),
	SUBSTRING(Fil_ID, 1, 2),
	Prod_ID,
	'01',
    SUM(Preis * Anzahl),    -- Sum of Umsatzbetrag
    SUM(Anzahl)

FROM BelegeTMP
GROUP BY 
	CONCAT(DATEPART(YEAR, Datum), RIGHT('0' + CAST(DATEPART(MONTH, Datum) AS VARCHAR), 2)),
	SUBSTRING(Fil_ID, 1, 2),
	Prod_ID

-- Update der Produktsubkategorie
ALTER TABLE Produktsubkategorie ADD Manager_ID VARCHAR(2)
UPDATE Produktsubkategorie SET Manager_ID = (SELECT Mitarbeiter_ID FROM MitarbeiterShop m WHERE m.Name = Produktsubkategorie.Subkategorie_Manager)


-- Update der UmsatzdatenTMP (Mitarbeiter_ID)
UPDATE UmsatzdatenTMP SET Mitarbeiter_ID = (
SELECT 
	Produktsubkategorie.Manager_ID

FROM Produktsubkategorie 

JOIN Produkt ON Produktsubkategorie.Subkategorie_ID = Produkt.Subkategorie_ID 
WHERE  Produkt.Produkt_ID = UmsatzdatenTMP.Produkt_ID) -- Korreliert 


SELECT SUM(Umsatzbetrag) FROM UmsatzdatenTMP

-- Die Daten aus UmsatzdatenTMP in die Umsatzdaten insert
INSERT INTO Umsatzdaten
SELECT * FROM UmsatzdatenTMP



