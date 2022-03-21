Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'doctors', to: 'doctors#index', as: 'doctors'
  post 'doctors', to: 'doctors#create'
  get 'doctors/new', to: 'doctors#new', as: 'new_doctor'
  get 'doctors/:id', to: 'doctors#show', as: 'doctor'
  get 'doctors/:id/edit', to: 'doctors#edit', as: 'edit_doctor'
  patch 'doctors/:id', to: 'doctors#update'
  delete 'doctors/:id', to: 'doctors#destroy'

end
