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
