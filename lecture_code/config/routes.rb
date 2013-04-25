MoviesApp::Application.routes.draw do

  get '/movies', controller: 'movies', action: 'index', as: 'movies'

  get '/movies/new', controller: 'movies', action: 'new', as: 'new_movie'

  get '/movies/:id', controller: 'movies', action: 'details', as: 'movie'

  put '/movies/:id', controller: 'movies', action: 'update'

  get '/movies/:id/edit', controller: 'movies', action: 'edit', as: 'edit_movie'

  post '/movies', controller: 'movies', action: 'create'

  delete '/movies/:id', controller: 'movies', action: 'destroy'

end
