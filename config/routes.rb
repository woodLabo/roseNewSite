Rails.application.routes.draw do
  root to: 'mains#index'
  devise_for :users
  devise_scope :user do
    get "admin" => "devise/sessions#new"
  end

  #root to: "home#index"
  get "what" => "mains#what"
  resources :news 
  resources :schedules do
    collection do
      get "reserve" => "schedules#reserve"
    end
  end
  resources :discographies
  resources :items do
    collection do 
      get "contact" => "items#contact"
    end
  end
  resources :contacts do
    collection do
      post "ticket_conf" => "contacts#ticket_conf"
      post "ticket_thanks" => "contacts#ticket_thanks"
      get "main_contact" => "contacts#main_contact"
      post "conf" => "contacts#conf"
      post "thanks" => "contacts#thanks"
    end
  end
  resources :clans
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
