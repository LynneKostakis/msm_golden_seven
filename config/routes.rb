Rails.application.routes.draw do

  # CREATE
  get("/directors/new", { :controller => "directors", :action => "new_form" })
  get("/actors/new", { :controller => "actors", :action => "new_form" })
  get("/movies/new", { :controller => "movies", :action => "new_form" })
  get("/new_directors", { :controller => "directors", :action => "process_create" })
  get("/new_movies", { :controller => "movies", :action => "process_create" })
  get("/new_actors", { :controller => "actors", :action => "process_create" })

# READ
  get("/directors", { :controller => "directors", :action => "index" })
  get("/actors", { :controller => "actors", :action => "index" })
  get("/movies", { :controller => "movies", :action => "index" })
  get("/directors/:an_id", { :controller => "directors", :action => "show" })
  get("/actors/:an_id", { :controller => "actors", :action => "show" })
  get("/movies/:an_id", { :controller => "movies", :action => "show" })

# UPDATE
  get("/directors/:an_id/edit", { :controller => "directors", :action => "edit_form" })
  get("/actors/:an_id/edit", { :controller => "actors", :action => "edit_form" })
  get("/movies/:an_id/edit", { :controller => "movies", :action => "edit_form" })
  get("/update_directors/:some_id", { :controller => "directors", :action => "update_row" })
  get("/update_actors/:some_id", { :controller => "actors", :action => "update_row" })
  get("/update_movies/:some_id", { :controller => "movies", :action => "update_row" })

# DELETE
  get("/delete_directors/:toast_id", { :controller => "directors", :action => "destroy_row" })
  get("/delete_actors/:toast_id", { :controller => "actors", :action => "destroy_row" })
  get("/delete_movies/:toast_id", { :controller => "movies", :action => "destroy_row" })

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount WebGit::Engine, at: "/rails/git"
end
