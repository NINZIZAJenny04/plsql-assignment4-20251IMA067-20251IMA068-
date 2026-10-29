CREATE TABLE inventory_products (
    product_id NUMBER PRIMARY KEY,
    product_name VARCHAR2(100) NOT NULL,
    category VARCHAR2(50),
    quantity_on_hand NUMBER DEFAULT 0 NOT NULL,
    reorder_level NUMBER DEFAULT 5 NOT NULL,
    unit_cost NUMBER(10,2) NOT NULL,

    CONSTRAINT chk_quantity
        CHECK (quantity_on_hand >= 0),

    CONSTRAINT chk_unit_cost
        CHECK (unit_cost >= 0)
);
