-- Table poste
CREATE TABLE poste (
  numpost INT AUTO_INCREMENT PRIMARY KEY,
  designPost VARCHAR(50)
);

-- Table nivcomp
CREATE TABLE nivcomp (
  codeniv INT PRIMARY KEY,
  designNiv VARCHAR(50)
);

-- Table competences
CREATE TABLE competences (
  idcomp INT AUTO_INCREMENT PRIMARY KEY,
  intcomp VARCHAR(50),
  codeniv INT,
  FOREIGN KEY (codeniv) REFERENCES nivcomp(codeniv)
);

-- Table salarié
CREATE TABLE salarié (
  numsal INT AUTO_INCREMENT PRIMARY KEY,
  prnomsal VARCHAR(50),
  nomsal VARCHAR(50),
  genresal VARCHAR(10),
  DateEmb DATE,
  DateNais DATE,
  numpost INT,
  FOREIGN KEY (numpost) REFERENCES poste(numpost)
);

-- Table associative posseder
CREATE TABLE posseder (
  numsal INT,
  idcomp INT,
  PRIMARY KEY (numsal, idcomp),
  FOREIGN KEY (numsal) REFERENCES salarié(numsal),
  FOREIGN KEY (idcomp) REFERENCES competences(idcomp)
);


INSERT INTO salarié (nomsal, prnomsal, genresal, DateEmb, DateNais) VALUES
('Kabongo', 'Dieudonné', 'M', '2021-01-10', '1992-02-20'),
('Kabuya', 'Arielle', 'F', '2021-02-15', '1993-03-21'),
('Mumba', 'Jean-Claude', 'M', '2021-03-12', '1994-04-22'),
('Lufulu', 'Rosalie', 'F', '2021-04-18', '1995-05-23'),
('Kambale', 'Fabrice', 'M', '2021-05-20', '1990-06-24'),
('Mukala', 'Patience', 'F', '2021-06-22', '1991-07-25'),
('Mvumbi', 'Patrick', 'M', '2021-07-25', '1992-08-26'),
('Kasongo', 'Mireille', 'F', '2021-08-30', '1993-09-27'),
('Mbuyi', 'Roger', 'M', '2021-09-14', '1989-10-28'),
('Luboya', 'Esther', 'F', '2021-10-01', '1994-11-29'),
('Nkulu', 'Serge', 'M', '2022-01-05', '1995-12-05'),
('Mputu', 'Sylvie', 'F', '2022-02-11', '1996-01-06'),
('Kitenge', 'Alphonse', 'M', '2022-03-17', '1997-02-07'),
('Bokali', 'Rachel', 'F', '2022-04-21', '1998-03-08'),
('Mbanda', 'Jean', 'M', '2022-05-25', '1990-04-09'),
('Kazadi', 'Thérèse', 'F', '2022-06-29', '1991-05-10'),
('Ngoy', 'David', 'M', '2022-07-30', '1992-06-11'),
('Ndombasi', 'Christelle', 'F', '2022-08-31', '1993-07-12'),
('Luyindula', 'Bruno', 'M', '2022-09-15', '1994-08-13'),
('Kisombe', 'Aline', 'F', '2022-10-19', '1995-09-14'),
('Kashama', 'Emmanuel', 'M', '2022-11-20', '1988-10-15'),
('Nzala', 'Diane', 'F', '2022-12-22', '1989-11-16'),
('Makabu', 'Olivier', 'M', '2023-01-08', '1990-12-17'),
('Nzembo', 'Arlette', 'F', '2023-02-14', '1991-01-18'),
('Tshitenge', 'Hervé', 'M', '2023-03-19', '1992-02-19'),
('Mokoli', 'Clarisse', 'F', '2023-04-23', '1993-03-20'),
('Kasham', 'Joel', 'M', '2023-05-27', '1994-04-21'),
('Mbenza', 'Viviane', 'F', '2023-06-30', '1995-05-22'),
('Kalombo', 'Michel', 'M', '2023-07-14', '1996-06-23'),
('Mawete', 'Josiane', 'F', '2023-08-18', '1997-07-24'),
('Kalonji', 'Jean-Pierre', 'M', '2023-09-20', '1998-08-25'),
('Sakala', 'Marie', 'F', '2023-10-22', '1999-09-26'),
('Mbayi', 'Patrick', 'M', '2023-11-25', '1987-10-27'),
('Kibadi', 'Solange', 'F', '2023-12-28', '1988-11-28'),
('Muleke', 'François', 'M', '2024-01-05', '1989-12-29'),
('Tshibangu', 'Aude', 'F', '2024-02-10', '1990-01-30'),
('Mbuyangu', 'Eric', 'M', '2024-03-15', '1991-02-14'),
('Kialunda', 'Joséphine', 'F', '2024-04-18', '1992-03-16'),
('Kabuya', 'Gaston', 'M', '2024-05-20', '1993-04-17'),
('Lukoki', 'Flore', 'F', '2024-06-22', '1994-05-18'),
('Ndaye', 'René', 'M', '2024-07-25', '1995-06-19'),
('Mpiana', 'Monique', 'F', '2024-08-29', '1996-07-20'),
('Kassongo', 'Christian', 'M', '2024-09-30', '1997-08-21'),
('Nzanzu', 'Blandine', 'F', '2024-10-15', '1998-09-22'),
('Mufuka', 'Alexandre', 'M', '2024-11-18', '1999-10-23'),
('Mokonda', 'Bernadette', 'F', '2024-12-20', '1990-11-24'),
('Mambimbi', 'Guy', 'M', '2020-01-07', '1991-12-25'),
('Kibonge', 'Fidèle', 'F', '2020-02-11', '1992-01-26'),
('Mokete', 'Alain', 'M', '2020-03-14', '1993-02-27'),
('Mufwankolo', 'Jeannine', 'F', '2020-04-18', '1994-03-28'),
('Kawaya', 'Benoît', 'M', '2020-05-21', '1995-04-29'),
('Muzata', 'Gaëlle', 'F', '2020-06-24', '1996-05-30'),
('Kakoma', 'Hilaire', 'M', '2020-07-26', '1997-06-01'),
('Masumu', 'Inès', 'F', '2020-08-29', '1998-07-02'),
('Boketshu', 'Samuel', 'M', '2020-09-30', '1999-08-03'),
('Kitenge', 'Adeline', 'F', '2020-10-15', '1990-09-04'),
('Mbuyi', 'Eugène', 'M', '2020-11-18', '1991-10-05'),
('Kabeya', 'Félicité', 'F', '2020-12-20', '1992-11-06'),
('Nzinga', 'Papy', 'M', '2021-01-22', '1993-12-07'),
('Tshibangu', 'Lydia', 'F', '2021-02-25', '1994-01-08'),
('Ilunga', 'Jean-Bosco', 'M', '2021-03-28', '1995-02-09'),
('Mutombo', 'Marianne', 'F', '2021-04-30', '1996-03-10'),
('Kanku', 'Jérôme', 'M', '2021-05-12', '1997-04-11'),
('Makiese', 'Rosette', 'F', '2021-06-15', '1998-05-12'),
('Ndala', 'Aimé', 'M', '2021-07-18', '1999-06-13'),
('Mpoyi', 'Jeanne', 'F', '2021-08-20', '1990-07-14'),
('Mulamba', 'Cédric', 'M', '2021-09-22', '1991-08-15'),
('Mputu', 'Suzanne', 'F', '2021-10-25', '1992-09-16'),
('Katembo', 'Fabrice', 'M', '2021-11-27', '1993-10-17'),
('Kashama', 'Berthe', 'F', '2021-12-30', '1994-11-18'),
('Kambale', 'Roland', 'M', '2022-01-03', '1995-12-19'),
('Mokolo', 'Rachel', 'F', '2022-02-06', '1996-01-20'),
('Mawangu', 'Herman', 'M', '2022-03-09', '1997-02-21'),
('Kalala', 'Eulalie', 'F', '2022-04-11', '1998-03-22'),
('Mbemba', 'Gérard', 'M', '2022-05-14', '1999-04-23'),
('Lumbala', 'Agnès', 'F', '2022-06-17', '1990-05-24'),
('Kasham', 'Pascal', 'M', '2022-07-19', '1991-06-25'),
('Kabasele', 'Floriane', 'F', '2022-08-21', '1992-07-26'),
('Mubiala', 'Denis', 'M', '2022-09-24', '1993-08-27'),
('Mboyo', 'Louise', 'F', '2022-10-27', '1994-09-28');
