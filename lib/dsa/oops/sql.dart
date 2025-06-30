
// CREATE TABLE users (
//   id INT PRIMARY KEY,
//   name VARCHAR(100),
//   age INT,
//   email VARCHAR(100)
// );

// INSERT INTO users (id, name, age, email)
// VALUES (1, 'Alice', 25, 'alice@example.com');


// INSERT INTO users (id, name, age, email)
// VALUES 
// (2, 'Bob', 30, 'bob@example.com'),
// (3, 'Charlie', 22, 'charlie@example.com');
// 📤 3. SELECT – Retrieve Data

// -- Select specific columns
// SELECT name, email FROM users;

// -- Select all columns
// SELECT * FROM users;
// 🔍 4. WHERE – Filter Records

// SELECT * FROM users
// WHERE age > 24;
// You can use =, !=, >, <, <=, >=, LIKE, IN, BETWEEN


// UPDATE users
// SET email = 'newalice@example.com'
// WHERE name = 'Alice';
// 🗑️ 6. DELETE – Remove Data

// DELETE FROM users
// WHERE id = 3;
// 📚 7. ORDER BY – Sort Data

// SELECT * FROM users
// ORDER BY age DESC;  -- or ASC
// 👥 8. GROUP BY – Group Data with Aggregates

// SELECT age, COUNT(*) FROM users
// GROUP BY age;
// ✅ 9. DISTINCT – Remove Duplicates

// SELECT DISTINCT age FROM users;
// 🎯 10. LIKE – Pattern Matching

// SELECT * FROM users
// WHERE email LIKE '%@example.com';
// 🔄 11. BETWEEN, IN – Range and Multiple Values
// sql
// Copy
// Edit
// -- Range
// SELECT * FROM users
// WHERE age BETWEEN 20 AND 30;

// -- Multiple values
// SELECT * FROM users
// WHERE name IN ('Alice', 'Bob');
// 🔗 12. JOIN – Combine Data from Multiple Tables
//
// -- Add a new column
// ALTER TABLE users ADD COLUMN age INTEGER;

// -- Rename the table
// ALTER TABLE users RENAME TO user_data;

// -- Rename a column (SQLite 3.25+)
// ALTER TABLE user_data RENAME COLUMN age TO user_age;
