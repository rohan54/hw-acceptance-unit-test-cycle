Rottenpotatoes::Application.routes.draw do
  resources :movies
  root :to => redirect('/movies')
  get 'find_director/:title' => 'movies#find_movies_by_director', as: :find_movies_by_director
end
