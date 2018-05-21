Rails.application.routes.draw do

  get "cocktails/:id/doses", to: "cocktails#index"
  get "cocktails/:id/doses/new", to: "cocktails#new"
  post "cocktails/:id/doses", to: "cocktails#create"
  get "doses/:id", to: "cocktails#show"
  get "doses/:id/edit", to: "doses#edit"
  patch "doses/:id", to: "doses#update"
  delete "doses/:id", to: "doses#destroy"


  resources :cocktails do
    resources :doses, only: [:new, :create]
  end


end

