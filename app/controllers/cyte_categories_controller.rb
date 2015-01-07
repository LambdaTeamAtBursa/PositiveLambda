class CyteCategoriesController < ApplicationController
  
  def index
    @cyte_categories = CyteCategory.all
  end

  def show
    @cyte_category = CyteCategory.find(params[:id])
  end

end
