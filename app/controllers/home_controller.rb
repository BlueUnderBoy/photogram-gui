class HomeController < ApplicationController
  def homepage
    @users = User.all.order({ :username => :asc })
    render({ :template => "user_templates/index"})
  end
end
