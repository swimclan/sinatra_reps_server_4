require 'bundler'
Bundler.require()

get '/' do
  erb :index
end

get '/home' do
  redirect to ('/')
end

get '/services' do
  erb :services
end

get '/spaceships' do
  erb :spaceships
end

get '/careers' do
  erb :careers
end

get '/about' do
  erb :about
end

get '/api/donors' do
  cross_origin
  donors = []
  50.times do
    donors.push({:name => Faker::Name.name })
  end
  donors.to_json
end

get '/api/spaceships' do
  cross_origin
  [{:name => 'XTR32', :image => 'http://www.thedoctorwhosite.co.uk/wp-images/daleks/dalek-spaceships-1-b.jpg'},
  {:name => 'Tango 11', :image => 'https://projects.vrac.iastate.edu/REU2011/wp-content/uploads/2011/05/razzo2.jpg3b9d601f-3368-4d17-a156-e4bfcf032aa9Larger-300x300.jpg'},
  {:name => 'Finster Mavin 12', :image => 'http://www.gamekb.com/thumbs_v2/01671/1671891-kongregate-air-strike-in-space-new-action-spaceship.jpg'},
  {:name => 'Rankor Medda', :image => 'http://i.ebayimg.com/00/s/NTAwWDUwMA==/z/EScAAMXQlgtS-0I5/$_35.JPG?set_id=2'},
  {:name => 'Killian X', :image => 'http://www.thedoctorwhosite.co.uk/wp-images/daleks/dalek-spaceships-9-c.jpg'},
  {:name => 'F45 Dragon Swooper', :image => 'https://8583b52b4a309671f69d-b436b898353c7dc300b5887446a26466.ssl.cf1.rackcdn.com/4495209_designer-sci-fi-ferrari-spaceship-takes_c5e8c4c7_m.jpg?bg=938DA5'},
  {:name => 'Bearcraft Origin', :image => 'https://lh4.ggpht.com/CaLnKFQAx4niqa9UDPd-R4jevqnE_hkVXpo7lyJYIfHym0TZlYo-7otNCSjp1x9tBnY=w300'}].to_json
end
