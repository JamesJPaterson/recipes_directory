CREATE TABLE user_accounts (
  id SERIAL PRIMARY KEY,
  username text,
  email_address text
);

CREATE TABLE posts (id SERIAL PRIMARY KEY,
  title text,
  content text,
  user_accounts_id int
  );
  