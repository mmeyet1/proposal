Rails3BootstrapDeviseCancan::Application.routes.draw do
  resources :proposals
  
  authenticated :user do
    root :to => 'home#main'
  end
  root :to => "home#main"
  devise_for :users
  resources :users
  
  match "tos", :to => "home#tos"
  match "cp", :to => "home#cp"
  match "primer", :to => "home#primer"
  
  get "home/main"
end