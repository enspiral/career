Rails.application.routes.draw do




  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'home/about'
  get 'home/policy'

  resources :careers do
    collection do
      get 'ruby'

      get 'ruby_f'

      get 'postgress'

      get 'postgress_f'

      get 'director'

      get 'director_f'

      get 'sme'

      get 'sme_f'

      get 'consumer'

      get 'consumer_f'

      get 'cv'
    end
  end

  root 'home#index'

  resources :feedbacks
  resources :sends

end
