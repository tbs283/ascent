Rails.application.routes.draw do
  namespace :admins do
    resources :subjects, only: [:new, :create, :edit, :update, :show, :destroy]
    resources :questions, only: [:new, :create, :edit, :update, :show, :destroy]
    resources :manyquestions, only: [:new, :create, :edit, :update, :show, :destroy]
  end
  get 'admin/top' => 'admins/homes#top'
  devise_for :admins, controllers: {
  sessions: 'admins/sessions',
  passwords: 'admins/passwords',
  registrations: 'admins/registrations'
  }


  # public routing
  get '/' => 'publics/homes#top'
  get 'about' => 'publics/homes#about'
  scope module: :publics do
    resources :subjects, only: [:show] do
        get 'tests' => 'tests#test'
        resources :tests, only: [:create] do
            resources :results, only: [:create]
        end
    end
  end
end
