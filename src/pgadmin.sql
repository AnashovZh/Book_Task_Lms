create table shopping_mall
(
    shopping_mall_id serial primary key,
    shopping_name    varchar not null,
    shopping_address varchar(100),
    client           int references clients (client_id)
);

insert into shopping_mall (shopping_name, shopping_address, client)
values ('Asia mall', 'Manas 33', 1);
insert into shopping_mall (shopping_name, shopping_address, client)
values ('Bishkek park ', 'Chui 123', 2);
create table bags
(
    bag_id      serial primary key,
    bag_name    varchar(39),
    bananas     int references bananas (banan_id),
    apples      int references apples (apple_id),
    alchas      int references alchas (alcha_id),
    watermelon  int references watermelon (watermelon_id),
    blueberries int references blueberries (blueberry_id)
);
insert into bags(bag_name, bananas, apples, alchas, watermelon, blueberries)
values ('kap', 1, 2, 3, 2, 1);
insert into bags(bag_name, bananas, apples, alchas, watermelon, blueberries)
values ('sumka', 1, 1, 2, 1, 1);

create table clients
(
    client_id    serial primary key,
    client_name  varchar(20),
    money_s      int check ( money_s between 0 and 100000),
    bag_s_client int references bags (bag_id)
);
insert into clients(client_name, money_s, bag_s_client)
values ('Baktulan', 2000, 2);
insert into clients (client_name, money_s, bag_s_client)
values ('Zhakshylyk', 10000, 3);
insert into clients (client_name, money_s, bag_s_client)
values ('Naryn', 450, 3);

create table bananas
(
    banan_id   serial primary key,
    banan_name varchar(32),
    quantity   int check ( bananas.quantity between 0 and 10)
);
insert into bananas(banan_name, quantity)
values ('banana', 8);
insert into bananas (banan_name, quantity)
values ('banan', 3);
create table apples
(
    apple_id       serial primary key,
    apple_name     varchar(20),
    apple_quantity int check (apple_quantity between 0 and 10)
);
insert into apples(apple_name, apple_quantity)
values ('alma', 4);
insert into apples(apple_name, apple_quantity)
values ('apple', 6);
create table watermelon
(
    watermelon_id       serial primary key,
    watermelon_name     varchar(34),
    watermelon_quantity int check ( watermelon_quantity between 0 and 40)
);
insert into watermelon(watermelon_name, watermelon_quantity)
values ('arbus', 20);
insert into watermelon(watermelon_name, watermelon_quantity)
values ('watermelon', 39);
create table blueberries
(
    blueberry_id       serial primary key,
    blueberry_name     varchar(23),
    blueberry_quantity int check ( blueberry_quantity between 0 and 100 )
);
insert into blueberries(blueberry_name, blueberry_quantity)
values ('blueberry', 2);
insert into blueberries(blueberry_name, blueberry_quantity)
values ('blue', 3);

create table alchas
(
    alcha_id       serial primary key,
    alcha_quantity int check ( alcha_quantity between 0 and 20 )
);
insert into alchas(alcha_quantity)
values (3);
insert into alchas(alcha_quantity)
values (12);

create table cup
(
    cup_id        serial primary key,
    cup_name      varchar(20),
    inside_of_cup int references coffee (coffee_id),
    inside_of_tea int references tea (tea_id)
);
insert into cup(cup_name, inside_of_cup, inside_of_tea) values ('ordinary cup',1,3);
insert into cup (cup_name, inside_of_cup, inside_of_tea) values ('glass of coffee',2,4);
create table coffee
(
    coffee_id   serial primary key,
    coffee_name varchar,
    quantity_gr int
);
insert into coffee(coffee_name, quantity_gr) values('Java',100);
insert into coffee(coffee_name,quantity_gr)values ('Arabika',120);

create table tea
(
    tea_id      serial primary key,
    tea_name    varchar,
    quantity_gr int check ( quantity_gr between 0 and 100)
);
insert into tea(tea_name, quantity_gr) values ('Seilon',13),('Beta',40),('Pakistan',30);