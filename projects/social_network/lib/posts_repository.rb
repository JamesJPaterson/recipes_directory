require_relative './posts'

class PostsRepository

    # Selecting all records
    # No arguments
    def all
      # Executes the SQL query:
      Post = []
      # Executes the SQL query:
      sql = 'SELECT id, title, content, user_accounts_id FROM posts;'
      result = DatabaseConnection.exec_params(sql, [])

      # Print out each record from the result set .
      result.each do |record|
        post = Post.new

        post.id = record['id']
        post.title = record['title']
        post.content = record['content']
        post.user_accounts_id = record['user_accounts_id']
        
      
        posts << post

    
      end
      return posts
  
      # Returns an array of Album objects.
    end
  
    # Gets a single record by its ID
    # One argument: the id (number)
    def find(id)
      # Executes the SQL query:
      
      
      sql = 'SELECT id, title, content, user_accounts_id FROM posts; WHERE id = 1;'
      params = [id]
      result = DatabaseConnection.exec_params(sql, params)
      post = Post.new
      post.id = result[0['id']]
      post.title = result[0]['title']
      post.content = result[0]['content']
      post.user_accounts_id = result[0['user_accounts_id']]
        
      return post.id + " " post.title + " " + post.content + " " + post.user_accounts_id
      # Returns a single Student object.
    end
  
  
#     def create(post)
#       INSERT INTO posts (title, content, user_accounts_id) VALUES ('#{post.title', '#{post.content}', '#{post.user_accounts_id}');
#     end
  
#     def delete(id)
#       DELETE FROM posts WHERE id = '#{id}';
#   end
end