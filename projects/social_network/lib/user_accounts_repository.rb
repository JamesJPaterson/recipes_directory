require_relative './user_accounts'


class User_accountsRepository

    # Selecting all records
    # No arguments
    def all
      # Executes the SQL query:
      

      user_account = []
      # Executes the SQL query:
      sql = 'SELECT id, username, email_address FROM user_accounts;'
      result = DatabaseConnection.exec_params(sql, [])

      # Print out each record from the result set .
      result.each do |record|
        user = UserAccount.new

        user.id = record['id']
        user.username = record['username']
        user.email_address = record['email_address']
        
      
        user_accounts << user_account

    
      end
      return user_accounts
    end
  
      # Returns an array of Album objects.
  
    # Gets a single record by its ID
    # One argument: the id (number)
    # Executes the SQL query:
      


    # def find(id)
    #   sql = 'SELECT id, username, email_address FROM user_accounts; WHERE id = 1;'
    #   params = [id]
    #   result = DatabaseConnection.exec_params(sql, params)
    #   user = UserAccount.new
    #   user.username = result[0]['username']
    #   user.email_address = result[0]['email_address']
        
    #   return user.id + " " user.username + " " + user.email_address

    # end

    # def create(user_account)
    #     sql = 'INSERT INTO user_accounts (username, email_address) VALUES ('{user_account.username}', '{user_account.email_address}');'
    #     params = user_account
    #     result = DatabaseConnection.exec_params(sql, params)
    #     user = UserAccount.new


    # end
  
      # Returns a single Student object.
end
  
  
#     
  
#     def delete(id)
#       DELETE FROM user_accounts WHERE id = '#{id}';
#   end
# end