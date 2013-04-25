Wdhw3::Application.routes.draw do

get '/rps', controller: 'wdhw3', action: 'rps', as: 'rps'

get '/poker', controller: 'wdhw3', action: 'poker', as: 'poker'

get '/dice', controller: 'wdhw3', action: 'dice', as: 'dice'

post '/dice', controller: 'wdhw3', action: 'dice'

post '/dice/roll', controller: 'wdhw3', action: 'roll', as: 'roll'

end
