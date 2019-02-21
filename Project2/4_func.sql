

CREATE FUNCTION No_of_painting_exhibited(exhibition_name VARCHAR(60))
RETURNS INTEGER
BEGIN
	DECLARE no_of_painting INTEGER DEFAULT 0;

	IF exhibition_name = 'E1' THEN
  		SELECT COUNT(*) INTO no_of_painting
   		FROM Art_object a, Exhibition e, Shown_at s
   		WHERE s.art = a.id_no && s.exhibition_name = e.name && e.name = 'E1';
 	END IF;

 	IF exhibition_name = 'E2' THEN
  		SELECT COUNT(*) INTO no_of_painting
   		FROM Art_object a, Exhibition e, Shown_at s
   		WHERE s.art = a.id_no && s.exhibition_name = e.name && e.name = 'E2';
 	END IF;
 	RETURN (no_of_painting);
END;


SELECT e.start_date, e.end_date, No_Of_painting_exhibited('E1')
FROM Exhibition e;
