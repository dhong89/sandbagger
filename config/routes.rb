# Rails.application.routes.draw do
  # devise_for :users
#     get 'welcome/home'
#     get 'welcome/app'
    # namespace :api, defaults: {format: :json} do

    # resources :users, only: [:create, :show]
    # resources :routes, only: [:index, :show, :create, :destroy]
    # resources :workouts, only: [:show, :create, :index, :destroy, :update]
    # resource :session, only: [:create, :destroy, :show]

  # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    # root 'welcome#home'
# end

Rails.application.routes.draw do
  devise_for :users
  get 'welcome/home'
  get '/app', to: 'welcome#app', as: 'app'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#home'
end
