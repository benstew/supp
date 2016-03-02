Rails.application.routes.draw do

  devise_for :users
  root                 'static_pages#home'
  get     'help'    => 'static_pages#help'
  get     'about'   => 'static_pages#about'
  get     'contact' => 'static_pages#contact'

  resources :categories do
    resources :goals
  end


  resources :goals, only: :index

  resources :ingredients
  resources :products

end
