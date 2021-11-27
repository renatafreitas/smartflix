# frozen_string_literal: true

require 'sidekiq-scheduler'

class CreateMovieWorker
  include Sidekiq::Worker

  sidekiq_options queue: :movies, retry: false

  def create_new_movie(**args)
    Movie.create!(args)
  end

  def create_random_movie
    create_new_movie(
        title: ApiCall.random_movie.parsed_response["Title"]
    )
  end

  def create_by_movie_title(title)
    create_new_movie(
        title: ApiCall.get_movie(title).parsed_response["Title"]
    )
  end

  def create_fake_movie
    create_new_movie(title: Faker::Movie.title)
  end
end
