-- Table 1: Spoken_language_name
Table 1: Spoken_language_name
CREATE TABLE Spoken_language_name (
    Spoken_lang_id INTEGER NOT NULL PRIMARY KEY,
    Spoken_language_name VARCHAR(255)
);

-- Table 2: Genre_name
CREATE TABLE Genre_name (
    Genre_id INTEGER NOT NULL PRIMARY KEY,
    Genre_name VARCHAR(255)
);

-- Table 3: Production_company_name
CREATE TABLE Production_company_name (
    Production_company_id INTEGER NOT NULL PRIMARY KEY,
    Production_company_name VARCHAR(255)
);

-- Table 4: Imdb
CREATE TABLE Imdb (
    Imdb_Id VARCHAR(255) NOT NULL PRIMARY KEY,
    Title VARCHAR(255),
    Vote_avg FLOAT,
    Vote_count INTEGER,
    Adult BOOLEAN,
    Overview TEXT,
    Popularity FLOAT,
	Revenue NUMERIC,
    Budget NUMERIC 
);

-- -- Table 5: Movie
CREATE TABLE Movie (
    ID INTEGER NOT NULL PRIMARY KEY,
    Status VARCHAR(255),
    Release_date DATE,
    Runtime FLOAT,
    Backdrop_path VARCHAR(255),
    Homepage_path VARCHAR(255),
    Imdb_id VARCHAR(255),
    Original_language VARCHAR(255),
    Poster_path VARCHAR(255),
    Tagline VARCHAR(255),
    FOREIGN KEY (Imdb_id) REFERENCES Imdb(Imdb_Id) ON DELETE SET NULL
);

-- Table 6: Spoken_language
CREATE TABLE Spoken_language (
    ID INTEGER NOT NULL,
    Spoken_language_id INTEGER NOT NULL,
	   PRIMARY KEY (ID, Spoken_language_id),
    FOREIGN KEY (Spoken_language_id) REFERENCES Spoken_language_name(Spoken_lang_id) ON DELETE SET NULL
);

-- Table 7: Genre
CREATE TABLE Genre (
    ID INTEGER NOT NULL,
    Genre_id INTEGER NOT NULL,
    PRIMARY KEY (ID, Genre_id),
    FOREIGN KEY (Genre_id) REFERENCES Genre_name(Genre_id) ON DELETE SET NULL
);

-- Table 8: Production_company
CREATE TABLE Production_company (
    ID INTEGER NOT NULL,
    Production_company_id INTEGER NOT NULL,
	   PRIMARY KEY (ID, Production_company_id),
    FOREIGN KEY (Production_company_id) REFERENCES Production_company_name(Production_company_id) ON DELETE SET NULL
);

-- Table 9: Title
CREATE TABLE Title (
    Title VARCHAR(255) NOT NULL PRIMARY KEY,
    Original_title VARCHAR(255)
);

-- Table 10: Production_country_name
CREATE TABLE Production_country_name (
    Production_country_id INTEGER NOT NULL PRIMARY KEY,
    Production_country_name VARCHAR(255)
);

-- Table 11: Production_country
CREATE TABLE Production_country (
    ID INTEGER NOT NULL,
    Production_country_id INTEGER NOT NULL,
	   PRIMARY KEY (ID, Production_country_id),
    FOREIGN KEY (Production_country_id) REFERENCES Production_country_name(Production_country_id) ON DELETE SET NULL
);
