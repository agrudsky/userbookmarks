Rails.application.routes.draw do
  # Routes for the Bookmark resource:
  # CREATE
  get '/new_bookmark' => 'bookmarks#new'
  get '/create_bookmark' => 'bookmarks#create'

  # READ
  get '/bookmarks' => 'bookmarks#index'
  get '/bookmarks/:id' => 'bookmarks#show'

  # UPDATE
  get '/bookmarks/:id/edit' => 'bookmarks#edit'
  get '/bookmarks/:id/update' => 'bookmarks#update'

  # DELETE
  get '/bookmarks/:id/destroy' => 'bookmarks#destroy'
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get '/new_user' => 'users#new'
  get '/create_user' => 'users#create'

  # READ
  get '/users' => 'users#index'
  get '/users/:id' => 'users#show'

  # UPDATE
  get '/users/:id/edit' => 'users#edit'
  get '/users/:id/update' => 'users#update'

  # DELETE
  get '/users/:id/destroy' => 'users#destroy'

end
