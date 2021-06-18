# frozen_string_literal: true

require 'sidekiq-scheduler'

class CreateMovieWorker
  include Sidekiq::Worker

  sidekiq_options queue: :movies, retry: false

  def perform(*args)
    # Movie.create!(title: Faker::Movie.title)
    Movie.create!(title: OmdbMovie.api_random_movie.title)
  end
end
