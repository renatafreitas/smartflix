# frozen_string_literal: true

class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    movie = OmdbMovie.find_movie_or_call_it(params[:title])
    render json: movie if movie
  end
end
