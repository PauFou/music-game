Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"
  get "choice", to: "pages#choice"
  resource :playlist, only: [:show, :update, :destroy]
  resource :sudoku, only: [:show, :update, :destroy]
end
