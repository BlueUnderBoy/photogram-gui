class HomeController < ApplicationController
  def homepage
    @users = User.all.order({ :username => :desc })
    render({ :template => "user_templates/index"})
  end
end
