# Intro to SQL

# What does SQL Standfor ?
1. Standard Query Langua 


# What do we use SQL for? 
1.  This is a way for us to get information from our DATABASE and present it or add on it or delete.

# CRUD
CREATE
READ
UPDATE
DELETE

Let's take a gander at the `music.db` inside of `sqlite3` or SQLite Browser

## Challenges

1. Write the SQL to return all of the rows in the artists table?

```SQL
READ
  SELECT * FROM artists;
```

2. Write the SQL to select the artist with the name "Black Sabbath"

```SQL
READ
 SELECT name FROM artists WHERE name = "Black Sabbath";
 SELECT name FROM artists WHERE name IS "Black Sabbath";
 SELECT * FROM artists WHERE name LIKE "bLaCk SABbath";

```

3. Write the SQL to create a table named 'monopoly' with an autoincrementing ID that's a primary key and a name field of type text

```sql
CREATE

CREATE TABLE monopoly (
    id INTEGER PRIMARY KEY,
    name TEXT
    );

```

4. Write the SQL to alter the fans table to have a artist_id column type integer?

```sql
UPDATE 

ALTER TABLE fans ADD COLUMN artist_id INTEGER;

```

5. Write the SQL to add yourself as a fan of the Black Eyed Peas?

```sql
CREATE(row)

INSERT INTO fans (name, artist_id) VALUES ("Juan",169)

```

UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;

6. How would you update your name in the fans table to be your new name?

 ```sql
-- Updates the name

UPDATE fans SET name = "Kunal" WHERE name = "Juan";


-- Updates the artist_id

UPDATE fans SET artist_id = 40 WHERE artist_id = 169;
 ```

 BONUS
 6a. How do you delete things from a table called fans;
 ```sql
 -- DELETEs the fan where the id matches 3
 DELETE FROM fans WHERE id = "";

 ```

7. Write the SQL to return fans that are not fans of the black eyed peas.

```sql
SELECT * From fans WHERE artist_id != 169;
SELECT * From fans WHERE artist_id IS NOT 169;
SELECT * From fans WHERE artist_id NOT LIKE 169;
```

