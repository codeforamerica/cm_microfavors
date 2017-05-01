Rails.application.routes.draw do
  root to: 'jobseekers#index'
  get '/resume_feedback', to: 'jobseekers#resume_feedback'
  get '/cover_letter_feedback', to: 'jobseekers#cover_letter_feedback'
  get '/am_i_qualified', to: 'jobseekers#am_i_qualified'
  get '/ask', to: 'jobseekers#ask'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
