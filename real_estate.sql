CREATE TABLE buyer
(
b_id INT,
b_name VARCHAR(100),
b_info VARCHAR(100),
PRIMARY KEY(b_id)
);

CREATE TABLE seller
(
s_id INT,
s_name VARCHAR(100),
s_info VARCHAR(100),
PRIMARY KEY(s_id)
);

CREATE TABLE estate_agent
(
ea_id INT,
ea_name VARCHAR(100), 
ea_info VARCHAR(100),
PRIMARY KEY(ea_id)
);

CREATE TABLE property
(
p_id INT, 
b_id INT,
s_id INT,
ea_id INT,
p_type VARCHAR(100),
area1 DOUBLE,
price FLOAT,
PRIMARY KEY(p_id),
FOREIGN KEY(b_id) REFERENCES buyer(b_id),
FOREIGN KEY(s_id) REFERENCES seller(s_id),
FOREIGN KEY(ea_id) REFERENCES estate_agent(ea_id) 
);