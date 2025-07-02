-- Ver todos os clientes
SELECT * FROM customers;

-- Produtos com estoque baixo
SELECT * FROM products
WHERE stock_quantity < 30;

-- Atualizar endereço de Carla
UPDATE customers
SET address = 'Av. Central, 123'
WHERE name = 'Carla Mendes';

-- Deletar produtos por nome
DELETE FROM products
WHERE name IN ('Mouse', 'Teclado');

-- Clientes que compraram algo
SELECT name FROM customers
WHERE customer_id IN (
    SELECT customer_id FROM inventory_movements
    WHERE movement_type = 'out'
);
