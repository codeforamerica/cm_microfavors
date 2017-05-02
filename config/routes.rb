Rails.application.routes.draw do
  root to: 'jobseekers#index'
  get '/ask', to: 'jobseekers#ask'

  resources :resume_evaluations, only: %i[index new]
  resources :cover_letter_evaluations, only: %i[index new]
  resources :qualification_evaluations, only: %i[index new]

  post '/upload', to: 'jobseekers#upload'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
