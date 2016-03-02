Rails.application.routes.draw do

  devise_for :users

  root                 'static_pages#home'
  get     'help'    => 'static_pages#help', as: 'help'
  get     'about'   => 'static_pages#about', as: 'about'
  get     'contact' => 'static_pages#contact', as: 'contact'

  resources :categories do
    resources :goals
  end


  resources :goals, only: :index

  resources :ingredients
  resources :products

end
