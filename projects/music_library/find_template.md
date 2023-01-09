 def find(id)
    # Executes the SQL query:
    # SELECT id, name, cohort_name FROM students WHERE id = $1;

    # Returns a single Student object.
    sql = 'SELECT name, cohort_name FROM students WHERE id = $1;'

    params = [id]

    result = DatabaseConnection.exec_params(sql, params)

    # (The code now needs to convert the result to a
    # Student object and return it)
    end
end

