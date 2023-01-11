TRUNCATE TABLE user_accounts RESTART IDENTITY; -- replace with your own table name.
TRUNCATE TABLE posts RESTART IDENTITY;

-- Below this line there should only be `INSERT` statements.
-- Replace these statements with your own seed data.

INSERT INTO user_accounts (username, email_address) VALUES ('James', 'James@gmail.com');
INSERT INTO user_accounts (username, email_address) VALUES ('Jack', 'Jack@gmail.com');

INSERT INTO posts (title, content, user_accounts_id) VALUES ('My name', 'Is James', '1');
INSERT INTO posts (title, content, user_accounts_id) VALUES ('My age', 'Is 23', '2');