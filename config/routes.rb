Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'animes#index'
  
  get 'animes/long' => 'animes#long'
  get 'animes/normal' => 'animes#normal'
  get 'animes/short' => 'animes#short'
  resources :animes
  resources :posts
  resources :perfumes
end
