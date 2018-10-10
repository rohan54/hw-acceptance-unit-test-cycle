Rottenpotatoes::Application.routes.draw do
  resources :movies# do
  #   member do
  #     get 'find_movies_by_director'
  #   end 
  # end 
  # # map '/' to be a redirect to '/movies'
  print("***************************************************I am in routes")
  root :to => redirect('/movies')
  #resources :movie
  get 'find_director/:title' => 'movies#find_movies_by_director', as: :find_movies_by_director
  print("***************************************************I am out of routes")
end
