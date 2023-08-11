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
        price INT NOT NULL,
        quantity INT NOT NULL
    );

INSERT INTO
    Books (
        "title",
        "author",
        "published_date",
        "price",
        "quantity"
    )
VALUES (
        'History of Prophet Mohammad (sa)',
        'Robiul Alam',
        '2018/05/22',
        24.99,
        100
    ), (
        'The Art of Programming',
        'Grace Hopper',
        '1990/09/15',
        19.99,
        150
    ), (
        'Innovations in Tech Industry',
        'Elon Musk',
        '2021/03/10',
        29.99,
        75
    ), (
        'The Science of Cosmos',
        'Neil deGrasse Tyson',
        '2008/07/05',
        21.50,
        120
    ), (
        'Cooking Adventures',
        'Julia Child',
        '1985/12/01',
        16.75,
        200
    ), (
        'Beyond the Horizon',
        'Stephen Hawking',
        '1999/11/18',
        28.00,
        90
    ), (
        'Journey to the Unknown',
        'Jules Verne',
        '1873/06/30',
        12.99,
        80
    ), (
        'Modern Poetry Collection',
        'Maya Angelou',
        '2005/02/14',
        18.50,
        110
    ), (
        'The Great War Chronicles',
        'Ernest Hemingway',
        '1922/08/09',
        14.95,
        70
    ), (
        'Wildlife Conservation',
        'Jane Goodall',
        '2013/04/25',
        23.75,
        130
    ), (
        'Fictional Fantasy World',
        'J.K. Rowling',
        '1997/06/26',
        32.50,
        160
    ), (
        'Art Through the Ages',
        'Vincent van Gogh',
        '1889/03/15',
        27.50,
        95
    ), (
        'Economics of Tomorrow',
        'Thomas Piketty',
        '2016/09/03',
        26.99,
        105
    ), (
        'Space Travel Wonders',
        'Elon Musk',
        '2020/11/08',
        34.99,
        70
    ), (
        'Mysteries of Ancient Civilizations',
        'Graham Hancock',
        '2001/07/17',
        22.75,
        115
    ), (
        'Musical Masterpieces',
        'Ludwig van Beethoven',
        '1810/12/05',
        30.00,
        85
    ), (
        'The Mind and Meditation',
        'Deepak Chopra',
        '1995/10/20',
        19.50,
        125
    ), (
        'A World of Colors',
        'Pablo Picasso',
        '1955/04/02',
        25.00,
        180
    ), (
        'Exploring Underwater Realms',
        'Jacques Cousteau',
        '1977/08/12',
        17.25,
        100
    ), (
        'Philosophy of Existence',
        'Jean-Paul Sartre',
        '1943/01/30',
        20.50,
        90
    ), (
        'The Universe Unveiled',
        'Carl Sagan',
        '1994/05/10',
        28.99,
        105
    ), (
        'Culinary Delights',
        'Anthony Bourdain',
        '2002/08/28',
        23.50,
        150
    ), (
        'Time Travel Adventures',
        'H.G. Wells',
        '1895/01/05',
        14.99,
        70
    ), (
        'Coding with Python',
        'Guido van Rossum',
        '2000/03/20',
        19.75,
        120
    ), (
        'Fashion Through the Ages',
        'Coco Chanel',
        '1921/12/15',
        25.00,
        90
    ), (
        'Sustainable Living',
        'Jane Doe',
        '2015/09/08',
        22.50,
        130
    ), (
        'Classic Literature Collection',
        'Leo Tolstoy',
        '1869/07/21',
        32.50,
        160
    ), (
        'The Human Body Explored',
        'Dr. Jane Smith',
        '2010/04/12',
        27.25,
        95
    ), (
        'Financial Freedom',
        'Warren Buffett',
        '2005/06/30',
        24.99,
        110
    ), (
        'Painting Techniques',
        'Bob Ross',
        '1982/11/03',
        18.99,
        85
    ), (
        'Culinary Masterclass',
        'Gordon Ramsay',
        '2008/02/17',
        21.00,
        125
    ), (
        'The Mind of a Genius',
        'Albert Einstein',
        '1925/09/28',
        29.50,
        180
    ), (
        'Under the Sea',
        'Marine Biologist',
        '2019/07/05',
        15.25,
        100
    ), (
        'Philosophical Ponderings',
        'Socrates',
        '2016/01/01',
        20.99,
        90
    ), (
        'Ancient Civilizations',
        'Archaeologist',
        '1975/03/18',
        28.50,
        105
    ), (
        'Adventures in Space',
        'Astronaut',
        '2003/11/02',
        24.75,
        150
    ), (
        'Mindful Meditation',
        'Meditation Guru',
        '2012/09/14',
        17.99,
        70
    ), (
        'World Travel Guide',
        'Wanderlust Explorer',
        '2011/06/30',
        22.00,
        120
    ), (
        'Literary Classics',
        'Jane Austen',
        '1813/01/28',
        19.50,
        90
    ), (
        'The Joy of Painting',
        'Bob Ross',
        '1992/04/06',
        23.25,
        130
    ), (
        'Space Odyssey',
        'Arthur C. Clarke',
        '1968/06/01',
        29.99,
        160
    ), (
        'Healthy Living Handbook',
        'Nutritionist',
        '2006/08/12',
        26.50,
        95
    ), (
        'Music Through Time',
        'Composer',
        '1750/12/17',
        31.00,
        110
    ), (
        'Mind and Body Connection',
        'Yoga Instructor',
        '2009/03/22',
        18.75,
        85
    ), (
        'The Renaissance Era',
        'Art Historian',
        '1500/09/10',
        20.50,
        125
    );

-- delete TABLE

-- DROP TABLE Books;

SELECT * FROM Books;

SELECT * FROM Books WHERE published_date = ' 2010 / 05 / 16 ';

SELECT title FROM Books;

-- how to delete row

DELETE FROM Books WHERE book_id = 7;

-- how to update column

UPDATE Books Set title = ' Daily Lear Dua ' WHERE book_id = 6 ;

UPDATE Books
Set
    published_date = ' 2010 -05 -16 '
WHERE book_id = 2;

-- how to ASC sort data

SELECT * FROM books ORDER BY price ASC;

-- how to DESC sort data

SELECT * FROM books ORDER BY price DESC;

-- get hights price

SELECT * FROM Books ORDER BY price DESC LIMIT 1 ;

-- get third hights price

SELECT * FROM Books ORDER BY price DESC LIMIT 1 OFFSET 2 ;