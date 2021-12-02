# frozen_string_literal: true

require 'rails_helper'

RSpec.describe OmdbMovie do

  subject { described_class }

  # let(:fake_movie) { class_double(Faker::Movie) }
  let(:movie) { Movie.create(title: 'Fake Movie') }

  it '#db_find_movie' do
    # binding.pry
    expect(subject.db_find_movie(title: movie.title)). to eq(movie)
  end
  #
  # it '#create_random_movie' do
  #   expect{ subject.create_random_movie }. to change(Movie, :count).by(1)
  # end

  it '#create_fake_movie', :aggregate_failures do
    expect{ subject.create_fake_movie }. to change(Movie, :count).by(1)
    # expect(CreateMovieWorker.new).to receive(:create_fake_movie)
  end
end
