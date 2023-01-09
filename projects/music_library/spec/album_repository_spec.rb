require 'album_repository'
require 'album'
  
  RSpec.describe AlbumRepository do
    def reset_albums_table
      seed_sql = File.read('spec/seeds_albums.sql')
      connection = PG.connect({ host: '127.0.0.1', dbname: 'music_library_test' })
      connection.exec(seed_sql)
    end
  
  
    before(:each) do 
      reset_albums_table
    end

  
  it 'returns the album details' do
    repo = AlbumRepository.new
    albums = repo.all
    # expect(albums.length).to eq(2)
    expect(albums.first.title).to eq 'American Teen'
    expect(albums.first.release_year).to eq '2017'
    expect(albums.first.artist_id).to eq '1'
  end

  it 'returns American teen as a single album' do
    repo = AlbumRepository.new
  
    
    #expect(result.title).to eq 'American Teen'
    expect(repo.find(1)).to eq '1 American Teen'
    #expect(albums.release_year).to eq '2017'
  end


    # (your tests will go here).
end