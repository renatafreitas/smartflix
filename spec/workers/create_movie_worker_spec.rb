require 'rails_helper'
require 'sidekiq/testing'
Sidekiq::Testing.fake!

RSpec.describe CreateMovieWorker do
  subject { described_class.new }

  let(:fake_movie) { class_double(Faker::Movie) }

  it '#create_new_movie' do
    # binding.pry
    expect{ subject.create_new_movie(title: 'Grinch') }. to change(Movie, :count).by(1)
  end

  it '#create_random_movie' do
    expect{ subject.create_random_movie }. to change(Movie, :count).by(1)
  end

  it '#create_fake_movie', :aggregate_failures do
    expect{ subject.create_fake_movie }. to change(Movie, :count).by(1)
    expect(fake_movie).to receive(:title)
  end
end
