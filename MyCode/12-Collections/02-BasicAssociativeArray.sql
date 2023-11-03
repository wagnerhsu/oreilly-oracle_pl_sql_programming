DECLARE
   TYPE list_of_names_t IS TABLE OF person.first_name%TYPE
                              INDEX BY PLS_INTEGER;

   happyfamily   list_of_names_t;
   l_row         PLS_INTEGER;
BEGIN
   happyfamily (2020202020) := 'Eli';
   happyfamily (-15070) := 'Steven';
   happyfamily (-90900) := 'Chris';
   happyfamily (88) := 'Veva';

   l_row := happyfamily.FIRST;

   WHILE (l_row IS NOT NULL)
   LOOP
      DBMS_OUTPUT.put_line (happyfamily (l_row));
      l_row := happyfamily.NEXT (l_row);
   END LOOP;
	 DBMS_OUTPUT.put_line('Delete collection');
	 happyfamily.DELETE;
	 happyfamily(1) := 'test';
	 l_row := happyfamily.FIRST;

   WHILE (l_row IS NOT NULL)
   LOOP
      DBMS_OUTPUT.put_line (happyfamily (l_row));
      l_row := happyfamily.NEXT (l_row);
   END LOOP;
	 IF happyfamily.EXISTS(1) THEN
    DBMS_OUTPUT.PUT_LINE('The value exists in the associative collection.');
  ELSE
    DBMS_OUTPUT.PUT_LINE('The value does not exist in the associative collection.');
  END IF;
	
END;
/