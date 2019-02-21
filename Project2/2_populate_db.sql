
INSERT INTO Artist
VALUES ('John', '03/22/1946', '05/22/2005', 'Famous for his artistic stlye.', 'Italy');

INSERT INTO Artist
VALUES ('Perry', '08/13/1922', '05/22/2005', 'Famous for scary art.', 'France');

INSERT INTO Artist
VALUES ('Sherlock', '01/21/1925', '05/22/2005', 'Known for famous painting, "Time"', 'England');

INSERT INTO Artist
VALUES ('Shannon', '11/08/1966', '', 'Famous for her obscure art.', 'America');


INSERT INTO Art_object
VALUES ('05', '1988', 'Wander', 'A loenly painting of a soldier.', 'John');

INSERT INTO Art_object
VALUES ('03', '1972', 'Forever', 'A picture that never ends.', 'Perry');

INSERT INTO Art_object
VALUES ('08', '1968', 'Think', 'A sculpture of a thinking man.', 'John');

INSERT INTO Art_object
VALUES ('02', '1958', 'Serenity', 'A sculpture of animals.', 'Sherlock');

INSERT INTO Art_object
VALUES ('04', '2000', 'Sand', 'A painting of the ocean', 'Shannon');


INSERT INTO Painting
VALUES ('05', 'Paper', 'Industrial', '09/15/1988');

INSERT INTO Others
VALUES ('03', 'Drawing', 'Modern');

INSERT INTO Sculpture
VALUES ('08', 'Marble', '1000', '8.7');

INSERT INTO Sculpture
VALUES ('02', 'Stone', '787', '5.2');

INSERT INTO Painting
VALUES ('04', 'Canvas', 'Modern', '06/12/2000');


INSERT INTO Exhibition
VALUES ('E1', '02/22/2005', '03/01/2005');

INSERT INTO Exhibition
VALUES ('E2', '10/02/2008', '11/01/2008');


INSERT INTO Shown_at
VALUES ('05', 'E1');

INSERT INTO Shown_at
VALUES ('03', 'E2');

INSERT INTO Shown_at
VALUES ('08', 'E2');

INSERT INTO Shown_at
VALUES ('02', 'E1');

INSERT INTO Shown_at
VALUES ('04', 'E1');
