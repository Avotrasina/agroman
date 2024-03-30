-- CATEGORIE
INSERT INTO categorie (nom) VALUES
('Epices'), ('Huiles'), ('Fruits');

-- CONTENEUR
INSERT INTO Conteneur (nom, capacite) VALUES
('Congélateur', 1000),
('Réfrigérateur', 500),
('Chambre de stockage', 2000),
('Espace pour Flacons', 2500),

-- PRODUITS
INSERT INTO produits (libelle, photo, unite, vie, idCat, idCont) VALUES
    --categorie EPICE
    ('Vanille', 'vanille.jpg', 150, 360, 1, 2),
    ('Cacao', 'cacao.jpg', 150, 360, 1, 2),
    ('Poivre', 'poivre.jpg', 150, 360, 1, 2),
    ('Vanille', 'vanille.jpg', 150, 360, 1, 2),
    ('Curcuma', 'curcuma.jpg', 150, 360, 1, 2),
    ('Poivre sauvage', 'poivre_sauvage.jpg', 150, 360, 1, 2),
    ('Piment ', 'piment.jpg', 150, 360, 1, 2),

    -- Categorie Huiles
    ('Ravintsara', 'ravintsara.jpg', 6, 450, 2, 4),
    ('Patchouli ', 'patchouli.jpg', 3, 750, 2, 4),
    ('eucalyptus ', 'eucalyptus.jpg', 25, 50, 2, 4),
    ('Huiles essentielles de poivre', 'ravintsara.jpg', 2, 450, 2, 4),
    ('Huiles essentielles de Girofle', 'huiles_essentielles_de_girofle.jpg', 3, 50, 2, 4),
    ('citriodora ', 'citriodora .jpg', 15, 50, 2, 4),

    -- Fruis 
    ('Fraise', 'fraise.jpg', 150, 10, 3, 1),
    ('Banane', 'banane.jpg', 150, 10, 3, 1),
    ('Ltchis', 'litchis.jpg', 150, 10, 3, 1);
