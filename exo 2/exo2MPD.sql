CREATE TABLE medecin (
    id_medecin INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(255) NOT NULL
);

CREATE TABLE malade (
    id_malade INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(255) NOT NULL
);

CREATE TABLE consultation (
    id_consultation INT PRIMARY KEY AUTO_INCREMENT,
    date_consultation DATE NOT NULL,
    prix DECIMAL(10,2) NOT NULL,
    id_malade INT NOT NULL,
    id_medecin INT NOT NULL,
    FOREIGN KEY (id_malade) REFERENCES malade(id_malade),
    FOREIGN KEY (id_medecin) REFERENCES medecin(id_medecin)
);

CREATE TABLE symptome (
    id_symptome INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(255) NOT NULL
);

CREATE TABLE maladie (
    id_maladie INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(255) NOT NULL
);

CREATE TABLE consultation_symptome (
    id_consultation INT NOT NULL,
    id_symptome INT NOT NULL,
    PRIMARY KEY (id_consultation, id_symptome),
    FOREIGN KEY (id_consultation) REFERENCES consultation(id_consultation),
    FOREIGN KEY (id_symptome) REFERENCES symptome(id_symptome)
);

CREATE TABLE consultation_maladie (
    id_consultation INT NOT NULL,
    id_maladie INT NOT NULL,
    PRIMARY KEY (id_consultation, id_maladie),
    FOREIGN KEY (id_consultation) REFERENCES consultation(id_consultation),
    FOREIGN KEY (id_maladie) REFERENCES maladie(id_maladie)
);
