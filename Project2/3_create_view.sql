/* Craig Hulsebus - CS174 - Assignment 2 - 10/15/2018 */



CREATE VIEW artist_no_of_sculpture AS
SELECT ar.name, COUNT(a.id_no = s.id_no) AS no_of_sculpture
FROM Art_object a, Artist ar, Sculpture s
WHERE (a.id_no = s.id_no && ar.name = a.artist_name)
HAVING no_of_sculpture >= 2;
