-- ## 1. create DATABASE

CREATE DATABASE practicedb;

-- ## 2. connect database

-- its okay

-- ## 3. create new table

CREATE TABLE
    users(
        user_id INT PRIMARY KEY NOT NULL,
        email VARCHAR(25) NOT NULL,
        password VARCHAR(16) NOT NULL,
        username VARCHAR(20) NOT NULL,
        UNIQUE(user_id, email, username)
    );

-- ## 4. Rename existing table NAME

ALTER TABLE users RENAME TO students;

-- ## 5. Delete existing table

DROP TABLE users;

-- ## 6. insert data on the table

INSERT INTO
    users (
        user_id,
        email,
        password,
        username
    )
VALUES (
        3,
        'user@gmail.com',
        '123456',
        'user3'
    );

-- ## 7. get all users

SELECT * FROM users ;

-- ## 8. get single users

SELECT * FROM users WHERE user_id =3;

-- ## 9. delete single user from users table

DELETE FROM users WHERE user_id = 3;

-- ## 10. add new column in existing TABLE

TRUNCATE TABLE users;

-- ## 10. add new column in existing TABLE

ALTER TABLE users ADD age INT NOT NULL DEFAULT 18 ;

-- ## 11. delete column from TABLE

ALTER Table users DROP COLUMN age;

-- ## 10. add constrains in the TABLE column

ALTER Table users ALTER COLUMN email SET NOT NULL;

-- ## 10. delete contrains in the TABLE column

ALTER Table users ALTER COLUMN email DROP NOT NULL;

/*
 * -- ||---------------Forienkey practice---------------||
 */

-- create department table

CREATE TABLE
    Department (
        deptID SERIAL PRIMARY KEY NOT NULL,
        deptName VARCHAR(50) NOT NULL
    );

INSERT INTO Department VALUES (1, 'IT Department');

SELECT * FROM Department;

DROP TABLE Department;

-- create employee table

CREATE Table
    Employee(
        empID SERIAL PRIMARY KEY NOT NULL,
        empName VARCHAR(50) NOT NULL,
        deparmentID INT NOT NULL,
        CONSTRAINT fk_constraint_department_id FOREIGN KEY (deparmentID) REFERENCES Department(deptID)
    );

INSERT INTO Employee VALUES (1, 'Robiul', 1);

SELECT * FROM Employee;

SELECT * FROM Employee WHERE deparmentid = 1;

SELECT empid,empname,deparmentid FROM Employee WHERE deparmentid = 1;

DROP Table Employee ;

-----------------------------------------------------------------;;

-- update and deletion

CREATE Table
    Books(
        book_id SERIAL PRIMARY KEY NOT NULL,
        title VARCHAR(50) NOT NULL,
        author VARCHAR(50) NOT NULL,
        published_date DATE NOT NULL,
        description VARCHAR(500)
    );

INSERT INTO
    Books (
        "title",
        "author",
        "published_date"
    )
VALUES (
        'Histroy of Prophet Mohammad (sa)',
        'Robiul Alam',
        '2018/05/22'
    );

SELECT * FROM Books;

SELECT * FROM Books WHERE published_date = '2010/05/16';

SELECT title FROM Books;

-- how to delete row

DELETE FROM Books WHERE book_id = 7;

-- how to update column

UPDATE Books Set title = 'Daily Lear Dua' WHERE book_id = 6 ;

UPDATE Books Set published_date = '2010-05-16' WHERE book_id = 2 ;