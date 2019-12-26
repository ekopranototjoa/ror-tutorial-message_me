Rails.application.routes.draw do
  root 'chat_room#index'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  post 'messages', to: 'messages#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
