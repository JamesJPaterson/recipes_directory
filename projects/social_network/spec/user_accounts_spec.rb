require 'user_accounts_repository'
require 'user_accounts'
  
  RSpec.describe UserAccount do
    def reset_user_accounts_table
      seed_sql = File.read('spec/seeds_user_accounts.sql')
      connection = PG.connect({ host: '127.0.0.1', dbname: 'social_network_test' })
      connection.exec(seed_sql)
    end
  
  
    before(:each) do 
      reset_user_accounts_table
    end

  
  it 'returns the user_account details' do
    repo = UserAccountRepository.new
    users = repo.all
    # expect(albums.length).to eq(2)
    expect(users.first.username).to eq 'James'
    expect(users.first.email_address).to eq 'James@gmail.com'
  end

#   it 'returns American teen as a single album' do
#     repo = AlbumRepository.new
  
    
#     #expect(result.title).to eq 'American Teen'
#     expect(repo.find(1)).to eq '1 American Teen'
#     #expect(albums.release_year).to eq '2017'
#   end


#     # (your tests will go here).
end