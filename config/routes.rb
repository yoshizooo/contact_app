Rails.application.routes.draw do
devise_for :users, controllers: {
  sessions:      'users/sessions',
  passwords:     'users/passwords',
  registrations: 'users/registrations'
}
  devise_for :admins, controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'admins/registrations'
}

  root to: 'rooms#index'
  resources :rooms, only: [:new, :create, :index, :destroy] do
    resources :messages, only: [:index, :create]do
      resources :user_messages, only: [:index, :create]
      resources :admin_messages, only: [:index, :create]
    end
  end
end
