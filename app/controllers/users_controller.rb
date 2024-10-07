class UserController < ApplicationController
  def index
    @users = User.all.order({ :username => :desc })
    render({ :template => "user_templates/index"})
  end
end
