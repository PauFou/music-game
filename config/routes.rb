Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"
  get "choice", to: "pages#choice"
  resources :playlist
  resources :sudoku
end
