Rails.application.routes.draw do
  root to: 'jobseekers#index'
  get '/resume_feedback', to: 'jobseekers#resume_feedback'
  get '/common_questions', to: 'jobseekers#common_questions'
  get '/am_i_qualified', to: 'jobseekers#am_i_qualified'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
