Rails.application.routes.draw do
  get 'list/new'
   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post 'list'=>'list#create'
  get 'list' =>  'list#index'
  get 'lists/:id' => 'list#show', as: 'list'
  get 'lists/:id/edit' => 'lists#edit', as: 'edit_list'
 patch 'lists/:id'=> 'lists#update', as: 'update_list'
end
