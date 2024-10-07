Rails.application.routes.draw do
  get("/", { :controller => "home", :action => "homepage" })

  get("/users", { :controller => "users", :action => "index" })
  #post("/insert_director", { :controller => "directors", :action => "create" })
  #get("/directors/:path_id", { :controller => "directors", :action => "show" })
  #post("/modify_director/:path_id", { :controller => "directors", :action => "update" })
  #get("/delete_director/:path_id", { :controller => "directors", :action => "destroy" })
end
