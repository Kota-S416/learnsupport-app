Rails.application.routes.draw do
  get '/' => 'home#top'
  resources :tasks
  get 'tasks' => 'tasks#index'
  resources :learnlists
  get 'learnlists' => 'learnlists#index'
  resources :timetables
  get 'timetables' => 'timetables#index'
end