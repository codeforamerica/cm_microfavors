Rails.application.routes.draw do
  root to: 'jobseekers#index'
  get '/resume-feedback', to: 'jobseekers#resume-feedback'
  get '/common-questions', to: 'jobseekers#common-questions'
  get '/am-i-qualified', to: 'jobseekers#am-i-qualified'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
