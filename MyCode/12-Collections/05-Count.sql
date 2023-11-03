CREATE OR REPLACE TYPE volunteer_list_ar IS TABLE OF VARCHAR2 (100);
/

DECLARE
   volunteer_list   volunteer_list_ar := volunteer_list_ar ('Steven');

   PROCEDURE assign_tasks (list_in IN volunteer_list_ar)
   IS
   BEGIN
      NULL;
   END;
BEGIN
   IF volunteer_list.COUNT > 0 THEN
		DBMS_OUTPUT.put_line('Count > 0');
      assign_tasks (volunteer_list);
	 ELSE
		DBMS_OUTPUT.put_line('Count = 0');
   END IF;
END;
/