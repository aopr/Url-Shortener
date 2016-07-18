Rails.application.routes.draw do
  get 'url/index'
  root 'url#index'

  post 'url/create'

  get 'show/:id' => "url#show"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
