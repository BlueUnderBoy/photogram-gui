Rails.application.routes.draw do
  get("/", { :controller => "home", :action => "homepage" })

  get("/users", { :controller => "users", :action => "index" })
  get("/users/:path_username", { :controller => "users", :action => "show" })
  post("/add_user", { :controller => "users", :action => "create" })
  post("/update_user/:path_id", { :controller => "users", :action => "update" })
  #get("/directors/:path_id", { :controller => "directors", :action => "show" })
  #get("/delete_director/:path_id", { :controller => "directors", :action => "destroy" })
end
