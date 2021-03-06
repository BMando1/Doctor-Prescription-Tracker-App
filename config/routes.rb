Rails.application.routes.draw do
  get 'drugs/index'
  get 'drugs/new'
  get 'drugs/create'
  get 'drugs/show'
  get 'drugs/edit'
  get 'drugs/update'
  get 'drugs/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # doctors routes =>

  # get 'doctors', to: 'doctors#index', as: 'doctors'
  # post 'doctors', to: 'doctors#create'
  # get 'doctors/new', to: 'doctors#new', as: 'new_doctor'
  # get 'doctors/:id', to: 'doctors#show', as: 'doctor'
  # get 'doctors/:id/edit', to: 'doctors#edit', as: 'edit_doctor'
  # patch 'doctors/:id', to: 'doctors#update'
  # delete 'doctors/:id', to: 'doctors#destroy'

  resources :doctors do
    resources :prescriptions do
      resources :drugs
    end
  end

  root to: "doctors#index"

end