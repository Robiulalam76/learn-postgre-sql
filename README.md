# learn-psql

-- ## 1. create DATABASE

```
CREATE DATABASE practicedb;
```

-- ## 2. connect database

-- its okay

-- ## 3. create new table

```
CREATE TABLE
users(
user_id INT PRIMARY KEY NOT NULL,
email VARCHAR(25) NOT NULL,
password VARCHAR(16) NOT NULL,
username VARCHAR(20) NOT NULL,
UNIQUE(user_id, email, username)
);
```

-- ## 4. Rename existing table NAME

```
ALTER TABLE users RENAME TO students;
```

-- ## 5. Delete existing table

```
DROP TABLE users;
```

-- ## 6. insert data on the table

```json
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
```

-- ## 7. get all users

```
SELECT * FROM users ;
```

-- ## 8. get single users

```
SELECT * FROM users WHERE user_id =3;
```

-- ## 9. delete single user from users table

```
DELETE FROM users WHERE user_id = 3;
```

-- ## 10. add new column in existing TABLE

```
TRUNCATE TABLE users;
```

-- ## 10. add new column in existing TABLE

```
ALTER TABLE users ADD age INT NOT NULL DEFAULT 18 ;
```

-- ## 11. delete column from TABLE

```
ALTER Table users DROP COLUMN age;
```

-- ## 10. add contrains in the TABLE column

```
ALTER Table users ALTER COLUMN email SET NOT NULL;
```

-- ## 10. delete contrains in the TABLE column

```
ALTER Table users ALTER COLUMN email DROP NOT NULL;
```
