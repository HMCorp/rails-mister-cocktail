Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/cocktails', to: 'cocktails#index', as: :cocktails
  # post '/cocktails', to: 'cocktails#create'
  # get '/cocktails/new', to: 'cocktails#new', as: :new_cocktail
  # get '/cocktails/:id/edit', to: 'cocktails#edit'
  # post '/cocktails/:id/doses/new', to: 'doses#create'
  # get '/cocktails/:id/doses/new', to: 'doses#new', as: :doses
  # get '/cocktails/:id', to: 'cocktails#show', as: :show_cocktail
  # patch '/cocktails/:id', to: 'cocktails#update'
  # delete '/cocktails/:id', to: 'cocktails#destroy'

  # get '/ingredients', to: 'ingredients#index'

  resources :cocktails do
    resources :doses, only: [:new, :create, :edit, :destroy]
  end
end
