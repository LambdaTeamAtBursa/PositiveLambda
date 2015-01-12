class CommentsController < ApplicationController

  before_action :authenticate_user!
  before_action :find_comment, only: [:show, :edit, :update, :destroy]

  def index
    @comments = Comment.all
  end

  def show
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user_id ||= current_user.id
    @comment.cyte_id ||= 0
    if @comment.save
      redirect_to comments_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @comment.update(comment_params)
      redirect_to comments_path
    else
      render :edit
    end
  end

  def destroy
    @comment.destroy
      redirect_to comments_path
  end


  private

  def find_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit([:text])
  end


end
