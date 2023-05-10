Rails.application.routes.draw do
  get 'list/new'
  post 'list'=>'list#create'
  get 'list' =>  'list#index'
  get 'lists/:id' => 'list#show', as: 'list'
  get 'list/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
