TRIGGER:
     It is a special type of stored procedure that is invoked automatically in response to an event. 
     Triggers help us to validate data even before they are inserted or updated.

 TYPES:
     row-level triggers 
     statement-level triggers.

CREATE TRIGGER
   
   BEFORE INSERT 
   
          i)create table  
          ii)trigger
          DELIMITER //  
          mysql> Create Trigger triggername    // create trigger  
          BEFORE INSERT ON employee FOR EACH ROW   // we insert the trigger before enter the values
          BEGIN                                    // trigger start 
          IF NEW.working_hours < 0 THEN SET NEW.working_hours = 0;   // trigger condition if new.working hours(after condition apply new is mantatory) less then 0 set 0
          END IF;  
          END //  
          iii) insert values

 AFTER INSERT:
          
          DELIMITER //  
          mysql> Create Trigger after_insert_details  
         AFTER INSERT ON student_info FOR EACH ROW  
         BEGIN  
         INSERT INTO student_detail VALUES (new.stud_id, new.stud_code,   
         new.stud_name, new.subject, new.marks, new.phone, CURTIME());   //curtime() we not mention in create table  after inserting values curtime will automatically show in tables curtime 
         END //  
