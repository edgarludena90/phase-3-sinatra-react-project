require "sinatra"

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get '/movie' do 
    movies = Movie.all 
    movies.to_json
  end

  get '/movie/:id' do
    movies = Movie.find(params[:id])
    movies.to_json
  end
  
  
  post '/movie' do
   
    movies =Movie.create(
    title:params[:newMovie][:title],
    genre:params[:newMovie][:genre],
    director:params[:newMovie][:director],
    year:params[:newMovie][:year],
    comment:params[:newMovie][:comment])
    movies.to_json
  end

  patch '/movie/:id' do
    movies = Movie.find(params[:id])
    movies.update(
      comment:params[:comment]
    )
    movies.to_json
  end

#   get '/rating' do
#    ratings = Rating.all
#    ratings.to_json
#   end

#  delete '/rating/:id' do 
#     ratings = Rating.find(params[:id])
#     ratings.destroy
#     ratings.to_json
#   end
  delete '/movie/:id' do 
    movies = Movie.find(params[:id])
    movies.destroy
    movies.to_json
  end

end


