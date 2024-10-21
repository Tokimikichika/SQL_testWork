CREATE TABLE Orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    client_id INT NOT NULL,
    order_date DATE NOT NULL,
    FOREIGN KEY (client_id) REFERENCES Clients(id)
);