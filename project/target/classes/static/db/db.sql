CREATE TABLE recipe (
    id INT AUTO_INCREMENT,
    name_recipe VARCHAR(100),
    description TEXT(10000),
    text_recipe TEXT(10000),
    complexity_id INT(2),
    cooking_time INT(3),
    kcal INT(5),
    logo_small VARCHAR(100),
    logo_big VARCHAR(100),
    protein INT(3),
    fats INT(3),
    carbohydrates INT(3),
    type_recipe_id INT(2),
    PRIMARY KEY (id)
);

CREATE TABLE ingredient (
    id INT AUTO_INCREMENT,
    name_ingredient VARCHAR(100),
    type_ingredient VARCHAR(50),
    PRIMARY KEY (id)
);

CREATE TABLE type_ingredient (
    id INT AUTO_INCREMENT,
    name_type_ingredient VARCHAR(50),
    PRIMARY KEY (id)
);

CREATE TABLE type_recipe (
    id INT AUTO_INCREMENT,
    name_type_recipe VARCHAR(50),
    PRIMARY KEY (id)
);

CREATE TABLE complexity (
    id INT AUTO_INCREMENT,
    name_complexity VARCHAR(50),
    PRIMARY KEY (id)
);

CREATE TABLE recipe__ingredient (
    recipe_id INT,
    ingredient_id INT
);

CREATE TABLE recipe__type_ingredient (
    recipe_id INT,
    type_ingredient_id INT
);

ALTER TABLE recipe ADD FOREIGN KEY (complexity) REFERENCES complexity(id);
ALTER TABLE recipe ADD FOREIGN KEY (type_recipe) REFERENCES type_recipe(id);
ALTER TABLE recipe__ingredient ADD FOREIGN KEY (recipe) REFERENCES recipe(id);
ALTER TABLE recipe__ingredient ADD FOREIGN KEY (ingredient) REFERENCES ingredient(id);
ALTER TABLE recipe__type_ingredient ADD FOREIGN KEY (recipe) REFERENCES recipe(id);
ALTER TABLE recipe__type_ingredient ADD FOREIGN KEY (type_ingredient) REFERENCES type_ingredient(id);

INSERT INTO recipe VALUES (
    NULL,
    'Борщ із сметаною', 
    'Це чотка страва',
    'Засипаємо все у воду і готово',
    NULL,
    130
    55,
    '',
    '',
    16,
    17,
    19,
    NULL
);

INSERT INTO recipe VALUES (
    NULL,
    'Макарони', 
    'Спасєніє студєнтов',
    'Все ізі',
    NULL,
    30,
    33,
    '',
    '',
    19,
    27,
    29,
    NULL
);

INSERT INTO complexity VALUE (Null,'Легко');
INSERT INTO complexity VALUE (Null,'Середнє');
INSERT INTO complexity VALUE (Null,'Важко');
INSERT INTO complexity VALUE (Null,'Шеф-кухар');

INSERT INTO type_recipe VALUE (Null,'Перша страва');
INSERT INTO type_recipe VALUE (Null,'Друга страва');
INSERT INTO type_recipe VALUE (Null,'Десерти');
INSERT INTO type_recipe VALUE (Null,'Напої');
INSERT INTO type_recipe VALUE (Null,'Соуси');
INSERT INTO type_recipe VALUE (Null,'Закуски');
INSERT INTO type_recipe VALUE (Null,'Консервація');










CREATE TABLE COMPANY (
    CID NUMBER(3) PRIMARY KEY,
    Name varchar2(50) NOT NULL,
    Country varchar2(30) NOT NULL,
    NumOfPlanes NUMBER(3),
    CHECK (NumOfPlanes >= 1 AND NumOfPlanes <= 200),
    CONSTRAINT UC_COMPANY UNIQUE (Name, Country, NumOfPlanes)
);
CREATE TABLE AIRPORT (
    APID NUMBER(3) PRIMARY KEY,
    Name varchar2(50) NOT NULL,
    COUNTRY varchar2(30) NOT NULL,
    Zone NUMBER(7,2),
    CHECK (Zone >= 0),
    CONSTRAINT UC_COMPANY UNIQUE (Name, COUNTRY)
);
CREATE TABLE FLIGHT (
    CompID NUMBER(3),
);
ALTER TABLE FLIGHT ADD FOREIGN KEY (CompID) REFERENCES COMPANY(CID);