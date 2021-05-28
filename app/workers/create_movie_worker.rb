class CreateMovieWorker
  include Sidekiq::Worker

  def perform(:title)
    # Do something
    @title = title
  end
end
