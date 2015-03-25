class CyteCategoriesController < ApplicationController
  before_action :find_cyte_category, only: [:show, :edit, :update, :destroy]

  def index
    @cyte_categories = CyteCategory.paginate(:page => params[:page], :per_page => 30)
  end

  def show
  end

  def new
    @cyte_category = CyteCategory.new
  end

  def create
    @cyte_category = CyteCategory.new(cyte_category_params)
    if @cyte_category.save
      redirect_to cyte_categories_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @cyte_category.update(cyte_category_params)
      redirect_to cyte_categories_path
    else
      render :edit
    end
  end

  def destroy
    @cyte_category.destroy
    redirect_to cyte_categories_path
  end


  private

  def find_cyte_category
    @cyte_category = CyteCategory.find(params[:id])
  end

  def cyte_category_params
    params.require(:cyte_category).permit(:name, :parent_category_id)
  end


end
