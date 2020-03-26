Rails.application.routes.draw do
  #custom routes
  get "/tests/:id/problems", to: "tests#problem"
  get "/professions/:id/tests", to: "professions#tests"
  resources :problems
  resources :tests
  resources :professions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
