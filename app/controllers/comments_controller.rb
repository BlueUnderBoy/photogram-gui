class CommentsController < ApplicationController
  def add
    @the_comment = Comment.new
    @the_comment.body = params.fetch("comment")
    @the_comment.author_id = params.fetch("author_id")
    @the_comment.photo_id = params.fetch("photo_id")
  
    if @the_comment.valid?
      @the_comment.save
      redirect_to("/photos/#{@the_comment.photo_id}", { :notice => "User created successfully." })
    else
      redirect_to("/photos/#{@the_comment.photo_id}", { :notice => "User failed to create successfully." })
    end
  end
end
