// 🧱 1. CREATE TABLE – Define a New Table
// sql
// Copy
// Edit
// CREATE TABLE users (
//   id INT PRIMARY KEY,
//   name VARCHAR(100),
//   age INT,
//   email VARCHAR(100)
// );
// INT: Integer number

// VARCHAR(n): String with max length n

// PRIMARY KEY: Unique identifier for each row

// 📥 2. INSERT INTO – Add Data to Table
// sql
// Copy
// Edit
// INSERT INTO users (id, name, age, email)
// VALUES (1, 'Alice', 25, 'alice@example.com');
// You can insert multiple rows:

// sql
// Copy
// Edit
// INSERT INTO users (id, name, age, email)
// VALUES 
// (2, 'Bob', 30, 'bob@example.com'),
// (3, 'Charlie', 22, 'charlie@example.com');
// 📤 3. SELECT – Retrieve Data
// sql
// Copy
// Edit
// -- Select specific columns
// SELECT name, email FROM users;

// -- Select all columns
// SELECT * FROM users;
// 🔍 4. WHERE – Filter Records
// sql
// Copy
// Edit
// SELECT * FROM users
// WHERE age > 24;
// You can use =, !=, >, <, <=, >=, LIKE, IN, BETWEEN

// ✏️ 5. UPDATE – Change Data
// sql
// Copy
// Edit
// UPDATE users
// SET email = 'newalice@example.com'
// WHERE name = 'Alice';
// 🗑️ 6. DELETE – Remove Data
// sql
// Copy
// Edit
// DELETE FROM users
// WHERE id = 3;
// 📚 7. ORDER BY – Sort Data
// sql
// Copy
// Edit
// SELECT * FROM users
// ORDER BY age DESC;  -- or ASC
// 👥 8. GROUP BY – Group Data with Aggregates
// sql
// Copy
// Edit
// SELECT age, COUNT(*) FROM users
// GROUP BY age;
// ✅ 9. DISTINCT – Remove Duplicates
// sql
// Copy
// Edit
// SELECT DISTINCT age FROM users;
// 🎯 10. LIKE – Pattern Matching
// sql
// Copy
// Edit
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
// Example:
// sql
// Copy
// Edit
// CREATE TABLE orders (
//   order_id INT,
//   user_id INT,
//   product VARCHAR(100)
// );
// sql
// Copy
// Edit
// -- Get users and their orders
// SELECT users.name, orders.product
// FROM users
// INNER JOIN orders ON users.id = orders.user_id;
// 🛠️ Bonus: DROP TABLE (Delete a Table)
// sql
// Copy
// Edit
// DROP TABLE users;