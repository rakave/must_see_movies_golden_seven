Rails.application.routes.draw do
  # Root Directory
 get("/", {:controller => "movie", :action =>"index"})

# New Forms
get('/movies/new_form', { :controller => 'movie', :action => 'new_form' })
post('/create_movie', { :controller => 'movie', :action => 'create_row' })
get('/directors/new_form', { :controller => 'director', :action => 'new_form' })
post('/create_director', { :controller => 'director', :action => 'create_row' })
get('/actors/new_form', { :controller => 'actor', :action => 'new_form' })
post('/create_actor', { :controller => 'actor', :action => 'create_row' })

 # Getting all the Index Pages up
 get("/movies", {:controller => "movie", :action=>"index"})
 get("/directors", {:controller => "director", :action=>"index"})
 get("/actors", {:controller => "actor", :action=>"index"})

# Getting all the "SHOW" Pages up
get('/movies/:id', { :controller => 'movie', :action => 'show' })
get('/directors/:id', { :controller => 'director', :action => 'show' })
get('/actors/:id', { :controller => 'actor', :action => 'show' })

# Getting all the "DELETE" Pages up
get('/delete_movie/:id', { :controller => 'movie', :action => 'destroy' })
get('/delete_director/:id', { :controller => 'director', :action => 'destroy' })
get('/delete_actor/:id', { :controller => 'actor', :action => 'destroy' })

# Update Forms
get('/movies/:id/edit_form', { :controller => 'movie', :action => 'edit_form' })
post('/update_movie/:id', { :controller => 'movie', :action => 'update_row' })
get('/directors/:id/edit_form', { :controller => 'director', :action => 'edit_form' })
post('/update_director/:id', { :controller => 'director', :action => 'update_row' })
get('/actors/:id/edit_form', { :controller => 'actor', :action => 'edit_form' })
post('/update_actor/:id', { :controller => 'actor', :action => 'update_row' })

end
