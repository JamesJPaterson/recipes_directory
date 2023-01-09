require_relative './album'

class AlbumRepository

    # def length

    # end
    # Selecting all records
    # No arguments
    def all

      albums = []
      # Executes the SQL query:
      sql = 'SELECT id, title, release_year, artist_id FROM albums;'
      result = DatabaseConnection.exec_params(sql, [])

      # Print out each record from the result set .
      result.each do |record|
        album = Album.new

        album.id = record['id']
        album.title = record['title']
        album.release_year = record['release_year']
        album.artist_id = record['artist_id']
      
        albums << album

    
      end
      return albums
    end
      
    def find(id)
        
      sql = 'SELECT id, title, release_year FROM albums WHERE id = $1;'
      params = [id]
      result = DatabaseConnection.exec_params(sql, params)
      album = Album.new
      album.id = result[0]['id']
      album.title = result[0]['title']
      album.release_year = result[0]['release_year']
      return album.id + " " + album.title
    end
  end