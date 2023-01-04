require "sinatra"

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get '/' do
    "Hello World"
  end

  get '/movie' do 
    movies = Movie.all 
    movies.to_json
  end

  get '/movie/:id' do
    movies = Movie.find(params[:id])
    movies.to_json
  end

  post '/movie' do
    movies =Movie.create(title:params[:title],genre:params[:genre],director:params[:director],year:params[:year])
    movies.to_json
  end

 get '/theater' do
  theaters = Theater.all
  theaters.to_json
end

delete '/rating/id' do 
  ratings = Ratings.find(params[id])
  ratings.destroy
  ratings.to_json
end

end


