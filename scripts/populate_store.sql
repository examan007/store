INSERT INTO users (name, email) VALUES ('Blake Edwards', 'blakey@neolation.com');
INSERT INTO users (name, email) VALUES ('Samantha Smith', 'ssmith@neolation.com');
INSERT INTO users (name, email) VALUES ('Edgar Williams', 'edwill@neolation.com');
INSERT INTO items (name, price, description, quantityinstock) VALUES
    ('Alpha widget', 4.99, 'Part used for assembly.', 22);
INSERT INTO items (name, price, description, quantityinstock) VALUES
    ('Beta widget', 4.53, 'Part used for assembly.', 32);
INSERT INTO items (name, price, description, quantityinstock) VALUES
    ('Kappa widget', 11.87, 'Part used for assembly.', 1);
INSERT INTO items (name, price, description, quantityinstock) VALUES
    ('Gamma widget', 5.99, 'Part used for assembly.', 100);
INSERT INTO categories (name) VALUES ('Category 1');
INSERT INTO categories (name, parent) VALUES ('Category 2', 'Category 1');
INSERT INTO categories (name, parent) VALUES ('Category 3', 'Category 1');
INSERT INTO categories (name) VALUES ('Category 4');
INSERT INTO categories (name, parent) VALUES ('Category 5', 'Category 4');
INSERT INTO categories (name, parent) VALUES ('Category 6', 'Category 4');
INSERT INTO categories (name) VALUES ('Category 7');
INSERT INTO categories (name, parent) VALUES ('Category 8', 'Category 3');
INSERT INTO categories (name) VALUES ('Assemblies');
INSERT INTO categories (name) VALUES ('Packages');
INSERT INTO categories (name) VALUES ('Utility');
INSERT INTO categories (name, parent) VALUES ('CAT0', 'Packages');
INSERT INTO categories (name, parent) VALUES ('CAT1', 'Packages');
INSERT INTO categories (name, parent) VALUES ('CAT2', 'Packages');
INSERT INTO itemmap (item, category) VALUES ('Alpha widget', 'Assemblies');
INSERT INTO itemmap (item, category) VALUES ('Alpha widget', 'CAT0');
INSERT INTO itemmap (item, category) VALUES ('Alpha widget', 'CAT1');
INSERT INTO itemmap (item, category) VALUES ('Alpha widget', 'CAT2');
INSERT INTO itemmap (item, category) VALUES ('Beta widget', 'Assemblies');
INSERT INTO itemmap (item, category) VALUES ('Beta widget', 'Utility');
INSERT INTO itemmap (item, category) VALUES ('Kappa widget', 'Assemblies');
INSERT INTO itemmap (item, category) VALUES ('Kappa widget', 'CAT0');
INSERT INTO itemmap (item, category) VALUES ('Gamma widget', 'CAT1');
INSERT INTO itemmap (item, category) VALUES ('Gamma widget', 'Utility');


