TRUNCATE
    address RESTART IDENTITY CASCADE;
-- TRUNCATE
--     parameter RESTART IDENTITY CASCADE;
TRUNCATE
    product RESTART IDENTITY CASCADE;
TRUNCATE
    product_category RESTART IDENTITY CASCADE;
TRUNCATE
    shop_bucket_item RESTART IDENTITY CASCADE;
TRUNCATE
    shop_order RESTART IDENTITY CASCADE;
TRUNCATE
    shop_order_status RESTART IDENTITY CASCADE;
TRUNCATE
    shop_order_status_list RESTART IDENTITY CASCADE;
TRUNCATE
    stock RESTART IDENTITY CASCADE;
TRUNCATE
    store RESTART IDENTITY CASCADE;
TRUNCATE
    notification RESTART IDENTITY CASCADE;


insert into address (created, updated, city, house, street)
VALUES (NOW(), NOW(), 'Москва', '3', 'Пушкина'),
       (NOW(), NOW(), 'Москва', '12к2', 'Восточное измайлово');

insert into product_category (created, updated, description, name)
VALUES (NOW(), NOW(), 'Пищевые продукты', 'Продукты'),
       (NOW(), NOW(), 'Средства для уборки', 'Бытовая химия'),
       (NOW(), NOW(), 'Ручной, сетевой, аккумуляторный, бензиновый инструмент', 'Инструменты');

insert into product (created, updated, description, name, price, category_id, owner_id)
values (NOW(), NOW(), 'Обычный хлеб', 'Хлеб белый', 123, 1, 'f519e999-3a5d-45ef-811b-1b194e3c6b06'),
       (NOW(), NOW(), 'Необычный хлеб', 'Хлеб бездрожжевой', 200, 1, null),
       (NOW(), NOW(), 'Средство для чистки сантехники', 'Доместос', 1000, 2, null),
       (NOW(), NOW(), 'Средство для мытья посуды', 'Feiry', 500, 2, 'f519e999-3a5d-45ef-811b-1b194e3c6b06'),
       (NOW(), NOW(), 'Большие', 'Пассатижи', 500, 3, 'f519e999-3a5d-45ef-811b-1b194e3c6b06'),
       (NOW(), NOW(), 'Большая сетевая дрель 1000Вт', 'Дрель', 1500, 3, 'f519e999-3a5d-45ef-811b-1b194e3c6b06'),
       (NOW(), NOW(), 'Длинный 0 - 30мм', 'Ключ разводной', 200, 3, null);

insert into store (created, updated, name, address_id, owner_id)
values (NOW(), NOW(), 'Центральный', 1, 'f519e999-3a5d-45ef-811b-1b194e3c6b06'),
       (NOW(), NOW(), 'ТЦ Восточный', 2, 'f519e999-3a5d-45ef-811b-1b194e3c6b06');

insert into stock (created, updated, amount, product_id, store_id)
values (NOW(), NOW(), 100, 1, 1),
       (NOW(), NOW(), 150, 2, 1),
       (NOW(), NOW(), 50, 3, 1),
       (NOW(), NOW(), 70, 4, 1),
       (NOW(), NOW(), 10, 5, 1),
       (NOW(), NOW(), 5, 6, 1),
       (NOW(), NOW(), 15, 7, 1),
       (NOW(), NOW(), 100, 1, 2),
       (NOW(), NOW(), 150, 2, 2),
       (NOW(), NOW(), 50, 3, 2),
       (NOW(), NOW(), 70, 4, 2),
       (NOW(), NOW(), 10, 5, 2),
       (NOW(), NOW(), 5, 6, 2),
       (NOW(), NOW(), 15, 7, 2);