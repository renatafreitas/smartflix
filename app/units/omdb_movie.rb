#add logic DB or call api here

require './lib/apis/omdb/api_call.rb'

class OmdbMovie

  def initialize
    api_random_movie
  end

  def self.api_random_movie
    ApiCall.random_movie
  end
end
