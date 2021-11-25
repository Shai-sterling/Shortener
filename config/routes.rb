Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html




  root "links#new"
  
  resources :links

  get "/:short_url", to: "links#send_to_website", as: "send_to_website"





end
