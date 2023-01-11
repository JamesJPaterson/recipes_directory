CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  student_name text,
  cohort_id number
);

CREATE TABLE cohort (
  id SERIAL PRIMARY KEY,
  cohort_names text,
  cohort_starting_dates text
);
