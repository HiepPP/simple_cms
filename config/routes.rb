Rails.application.routes.draw do
  #get 'about/index'

  # get 'books/destroy'
  #
  # get 'books/index'
  #
  # get 'books/show'
  #
  # get 'publishers/new'
  #
  # get 'publishers/create'
  #
  # get 'publishers/update'
  #
  # get 'publishers/edit'
  #
  # get 'publishers/stroy'
  #
  # get 'publishers/index'
  #
  # get 'publishers/show'
  #
  # get 'authors/new'
  #
  # get 'authors/create'
  #
  # get 'authors/update'
  #
  # get 'authors/edit'
  #
  # get 'authors/stroy'
  #
  # get 'authors/index'
  #
  # get 'authors/show'
  #
  # get 'categories/new'
  #
  # get 'categories/create'
  #
  # get 'categories/update'
  #
  # get 'categories/edit'
  #
  # get 'categories/stroy'
  #
  # get 'categories/index'
  #
  # get 'categories/show'
  #
  # get 'books/update'
  #
  # get 'books/edit'
  #
  # get 'books/new'
  #
  # get 'books/create'

  #get 'demo/index'
  root 'demo#index'
  #match ':controller(/:action(:/id))', :via => :get
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :books do
    collection do
      get 'back_index'
    end
  end
  resources :categories
  resources :authors
  resources :publishers

   #get 'books/show/:id' => 'books#show', :as => :books_show

end
