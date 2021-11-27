class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    movie = OmdbMovie.find_movie_or_call_it(params[:title])
    if movie
      render json: movie
    end
  end
  
end
