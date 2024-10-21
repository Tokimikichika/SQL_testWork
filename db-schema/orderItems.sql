CREATE TABLE OrderItems (
    id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT NOT NULL,
    nomenclature_id INT NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(id) ON DELETE CASCADE,
    FOREIGN KEY (nomenclature_id) REFERENCES Nomenclature(id)
);