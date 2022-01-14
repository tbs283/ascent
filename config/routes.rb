Rails.application.routes.draw do
  devise_for :customers
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    namespace :admin do
    get 'top' => 'admin/homes#top'
    resources :subjects, only: [:show] do
      resources :question_one, only: [:create]
      resources :question_two, only: [:create]
    end
  end
#   devise_for :admins, controllers: {
#   sessions: 'admins/sessions',
#   passwords: 'admins/passwords',
#   registrations: 'admins/registrations'
#   }


  # public routing
  get 'top' => 'public/homes#top'
  get 'about' => 'public/homes#about'
  resources :subjects, only: [:show] do
    resources :tests, only: [:new, :create, :edit, :update, :show, :destroy] do
      resources :results, only: [:new, :create, :edit, :update, :show, :destroy]
    end
  end
#   devise_for :publics, controllers: {
#   sessions:      'publics/sessions',
#   passwords:     'publics/passwords',
#   registrations: 'publics/registrations'
#   }
end
