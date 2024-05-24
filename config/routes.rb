Rails.application.routes.draw do
  root 'activities#index'
  post 'activities/search', to: 'activities#search'
end
