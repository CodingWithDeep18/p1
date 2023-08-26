Rails.application.routes.draw do
  resources :teachers, only: [:index, :show, :create, :update, :destroy]
  

  resources :lectures do
    member do
  
      delete 'delete'
    end
  end
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
end