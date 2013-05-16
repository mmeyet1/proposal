Rails3BootstrapDeviseCancan::Application.routes.draw do
  resources :proposals
  resources :addedtarget
  resources :addedcoi
  resources :addedtargetdetail
  
  authenticated :user do
    root :to => 'home#main'
  end
  root :to => "home#main"
  devise_for :users
  resources :users do 
    resources :proposals
  end
  
  match "tos", :to => "home#tos"
  match "cp", :to => "home#cp"
  match "primer", :to => "home#primer"
  match "archive", :to => "proposals#archive"
  
  get "home/main"
  get "proposals/show"
  post "proposals/show"
  get "proposals/archive"
  post "proposals/archive"
end