Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"
  resource :playlist, only: [:index, :show, :update, :destroy]
  resource :sudoku, only: [:index, :show, :update, :destroy]
end
