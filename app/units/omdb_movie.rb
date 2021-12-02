#add logic DB or call api here

require './lib/apis/omdb/api_call.rb'

class OmdbMovie

  def self.find_movie_or_call_it(title)
    db_find_movie(title) || api_find_movie(title)
  end

  def self.db_find_movie(title)
    Movie.find_by(title: title)
  end

  def self.api_find_movie(title)
    CreateMovieWorker.new.create_by_movie_title(title)
  end

  def self.create_fake_movie
    CreateMovieWorker.new.create_fake_movie
  end
end
