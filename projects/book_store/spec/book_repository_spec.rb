require 'book_repository'
require 'book'

RSpec.describe BookRepository do
    def reset_books_table
      seed_sql = File.read('spec/seeds_books.sql')
      connection = PG.connect({ host: '127.0.0.1', dbname: 'book_store_test' })
      connection.exec(seed_sql)
    end
  
      before(:each) do 
        reset_books_table
      end
    
      # (your tests will go here).
      it 'returns the details of a book' do
        repo = BookRepository.new
        books = repo.all
        expect(books.first.id).to eq ("1")
        expect(books.first.title).to eq 'Nineteen Eighty-Four'
        expect(books.first.author_name).to eq 'George Orwell'
      end
end
