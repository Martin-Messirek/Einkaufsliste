CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE shopping_lists (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    owner_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (owner_id) REFERENCES users(id) ON DELETE CASCADE
);

CREATE TABLE list_members (
    user_id INT NOT NULL,
    list_id INT NOT NULL,
    role VARCHAR(20) DEFAULT 'editor', 
    PRIMARY KEY (user_id, list_id),
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (list_id) REFERENCES shopping_lists(id) ON DELETE CASCADE
);

CREATE TABLE items (
    id INT AUTO_INCREMENT PRIMARY KEY,
    list_id INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    quantity VARCHAR(50) DEFAULT '1', 
    is_checked BOOLEAN DEFAULT FALSE,
    added_by INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (list_id) REFERENCES shopping_lists(id) ON DELETE CASCADE,
    FOREIGN KEY (added_by) REFERENCES users(id) ON DELETE SET NULL
);

-- Nutzer anlegen
INSERT INTO users (username, email, password_hash) VALUES
('anna_schmidt', 'anna@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
('max_mustermann', 'max@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
('sarah_wagner', 'sarah@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi');

-- Einkaufslisten erstellen (Anna und Max erstellen jeweils eine Liste)
INSERT INTO shopping_lists (title, owner_id) VALUES
('Wocheneinkauf WG', 1),
('Geburtstagsparty', 2);

-- Nutzer zu den Listen hinzufügen (Berechtigungen / Teilen)
INSERT INTO list_members (user_id, list_id, role) VALUES
(1, 1, 'owner'),   -- Anna ist Besitzerin der WG-Liste
(2, 1, 'editor'),  -- Max ist Bearbeiter der WG-Liste
(3, 1, 'viewer'),  -- Sarah kann die WG-Liste nur sehen
(2, 2, 'owner'),   -- Max ist Besitzer der Party-Liste
(1, 2, 'editor');  -- Anna ist Bearbeiterin der Party-Liste

-- Artikel zu den Listen hinzufügen
INSERT INTO items (list_id, name, quantity, is_checked, added_by) VALUES
(1, 'Milch (1,5%)', '2 Liter', TRUE, 1),
(1, 'Haferflocken', '1 Packung', FALSE, 2),
(1, 'Äpfel', '1 kg', FALSE, 1),
(1, 'Kaffee', '500g', TRUE, 3),
(2, 'Chips', '3 Tüten', FALSE, 2),
(2, 'Cola', '6 Flaschen', FALSE, 2),
(2, 'Servietten', '1 Packung', TRUE, 1);