Rails.application.routes.draw do
  root 'pages#home'

  get 'motherboard' => 'mbcpus#index', as: :motherboard
  get 'acts' => 'pages#acts', as: :acts

  resources :mbcpus
  resources :memories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
