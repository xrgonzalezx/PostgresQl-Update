INSERT INTO todos ( title, details, priority, created_at, completed_at )
VALUES
( 'Go over Homework with kids', 'Review the homework and go over mistakes made', 4, '07/09/17', '07/10/17' ),

( 'Complete Resume', 'Finish and update resume to add last job', 5, '07/10/17', '07/11/17' ),

( 'Wash dog', 'Soad and rinse dog', 4, '07/20/17', '07/13/17' ),

( 'Complete Cover Letter', 'Finish cover letter', 3, '07/15/17', NULL ),

( 'Change oil', 'Make appointment with dealership', 6, '06/12/17', '07/21/17' ),

( 'Replace brakes', 'Make appointment with dealership', 9, '07/12/17', NULL ),

( 'Take daughter to dance class', 'Drive my daughter to school', 2, '07/17/17', NULL ),

( 'Take son to soccer practise', NULL, 2, '07/13/17', NULL ),

( 'Practise new code', 'Start to review new language', 5, '07/19/17', NULL ),

( 'Call Doctor', 'Call doctor office to set appointment', 9, '06/22/17', NULL );

-- Write a SELECT statement to find all incomplete todos with priority 3.
SELECT * FROM todos WHERE priority = 3 AND completed_at IS NULL;

-- Write a SELECT statement to find the number of incomplete todos by priority.
SELECT * FROM todos WHERE completed_at IS NULL ORDER BY priority ASC;
-- Write a SELECT statement to find the number of todos by priority created in the last 30 days.
SELECT COUNT(priority) FROM todos WHERE created_at > CURRENT_DATE -30;
-- Write a SELECT statement to find the next todo you should work on. This is the todo with the highest priority that was created first.
SELECT MIN(created_at) FROM todos WHERE priority = 1;
