class CytesController < ApplicationController

  before_action :authenticate_user!
  before_action :find_citation, only: [:show, :edit, :update, :destroy]

  def index
    @cytes = Cyte.all
  end

  def show
  end

  def new
    @cyte = Cyte.new
  end

  def create
    @cyte = Cyte.new(cyte_params)
    if @cyte.save
      redirect_to cytes_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @cyte.update(cyte_params)
      redirect_to cytes_path
    else
      render :edit
    end
  end

  def destroy
    @cyte.destroy
      redirect_to cytes_path
  end


  private

  def find_citation
    @cyte = Cyte.find(params[:id])
  end

  def cyte_params
    params.require(:cyte).permit([:text, :category_id, :creator_id])
  end


end
