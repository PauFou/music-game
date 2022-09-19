Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"
  get "choice", to: "pages#choice"
  get "classic", to: "pages#classic"
  resource :playlist, only: [:index, :show, :update, :destroy]
end
