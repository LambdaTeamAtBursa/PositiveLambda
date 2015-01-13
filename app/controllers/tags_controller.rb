class TagsController < ApplicationController

  before_action :find_tag, only: [:show, :edit, :update, :destroy]
  
  def index
    @tags = Tag.paginate(:page => params[:page], :per_page => 3)
  end

  def show
  end

  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.new(tag_params)
    if @tag.save
      redirect_to tags_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @tag.update(tag_params)
      redirect_to tags_path
    else
      render :edit
    end
  end

  def destroy
    @tag.destroy
    redirect_to tags_path
  end


  private

  def find_tag
    @tag = Tag.find(params[:id])
  end

  def tag_params
    params.require(:tag).permit(:name)
  end       

end
