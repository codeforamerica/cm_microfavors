# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'jobseekers#index'
  get '/ask', to: 'jobseekers#ask'

  resources :resume_evaluations, only: %i[index show new create]
  resources :cover_letter_evaluations, only: %i[index show new create]
  resources :qualification_evaluations, only: %i[index new create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
