# frozen_string_literal: true

require 'sidekiq/web'

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  mount Sidekiq::Web => '/sidekiq'
  root to: 'movies#index'
  get '/movies', to: 'movies#index'
  resources :movies, only: %i[index show], param: :title
end
