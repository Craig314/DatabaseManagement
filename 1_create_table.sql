
CREATE TABLE Artist
( name VARCHAR(10) NOT NULL,
  date_born VARCHAR (10) NOT NULL,
  date_died VARCHAR (10),
  description VARCHAR (40),
  country_of_origin VARCHAR (20),
  PRIMARY KEY (name));

CREATE TABLE Art_object
( id_no INTEGER NOT NULL,
  year INTEGER,
  title VARCHAR (10),
  description VARCHAR (40),
  artist_name VARCHAR (20),
  PRIMARY KEY (id_no),
  FOREIGN KEY (artist_name) REFERENCES Artist (name));

CREATE TABLE Others
( id_no INTEGER NOT NULL,
  type VARCHAR (10),
  style VARCHAR (10),
  PRIMARY KEY (id_no),
  FOREIGN KEY (id_no) REFERENCES Art_object (id_no));

CREATE TABLE Painting
( id_no INTEGER NOT NULL,
  type VARCHAR (10),
  style VARCHAR (10),
  drawn_on VARCHAR (10),
  PRIMARY KEY (id_no),
  FOREIGN KEY (id_no) REFERENCES Art_object (id_no));

CREATE TABLE Sculpture
( id_no INTEGER NOT NULL,
  material VARCHAR (10),
  weight INTEGER,
  height INTEGER,
  PRIMARY KEY (id_no),
  FOREIGN KEY (id_no) REFERENCES Art_object (id_no));

CREATE TABLE Exhibition
( name VARCHAR (60) NOT NULL,
  start_date VARCHAR (10),
  end_date VARCHAR (10),
  PRIMARY KEY (name));

CREATE TABLE Shown_at
( art INTEGER NOT NULL,
  exhibition_name VARCHAR (60) NOT NULL,
  PRIMARY KEY (art, exhibition_name),
  FOREIGN KEY (art) REFERENCES Art_object (id_no),
  FOREIGN KEY (exhibition_name) REFERENCES Exhibition (name));

Create view Others_view as
Select a.id_no, a.year, a.title, a.description, o.type, o.style, a.artist_name
From Art_object a, Others o
Where a.id_no = o.id_no;

Create view Painting_view as
Select   a.id_no, a.year, a.title, a.description, p.type, p.style, p.drawn_on, a.artist_name
From Art_object a, Painting p
Where a.id_no=p.id_no;

Create view Sculpture_view as
Select  a.id_no, a.year, a.title, a.description, s.material, s.weight, s.height, a.artist_name
From Art_object a, Sculpture s
Where a.id_no = s.id_no;
