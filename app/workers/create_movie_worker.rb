# frozen_string_literal: true
#
class CreateMovieWorker
  include Sidekiq::Worker

  sidekiq_options retry: false, queue: :movies

  def perform(**args)
    Movie.create(title: Faker::Movie.title)
  end
end
