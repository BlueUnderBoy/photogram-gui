class PhotosController < ApplicationController
  def index
    @photos = Photo.all.order({ :created_at => :asc })
    render({ :template => "photo_templates/index"})
  end

  def show
    image = params.fetch(:path_id)
    @photo = Photo.where({:id => image}).at(0)
    render({:template => "photo_templates/show"})
  end

  def create
    @the_photo = Photo.new
    @the_photo.image = params.fetch("image")
    @the_photo.caption = params.fetch("caption")
    @the_photo.owner_id = params.fetch("id")

    if @the_photo.valid?
      @the_photo.save
      redirect_to("/photos/#{@the_photo.id}", { :notice => "User created successfully." })
    else
      redirect_to("/photos", { :notice => "User failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    @the_photo = Photo.find(the_id)

    @the_photo.username = params.fetch("username")

    if @the_photo.valid?
      @the_photo.save
      redirect_to("/photos/#{@the_photo.id}", { :notice => "User updated successfully."} )
    else
      redirect_to("/photos/#{@the_photo.id}", { :alert => "User failed to update successfully." })
    end
  end

  def delete 
    
  end 
end
