require 'httparty'
require 'dotenv/load'

class ApiCall
  include HTTParty
  base_uri 'omdbapi.com'
  OMDB_key = ENV["OMDB_API_KEY"].to_s

  def self.random_movie
    get("/?i=tt3896198&apikey=#{OMDB_key}")
  end

  def self.get_movie(title)
    get("/?i=tt3896198&apikey=#{OMDB_key}&t=#{title}")
  end
end

