class SearchController < ApplicationController
  def search
    if params[:q].nil?
      @cyte_categories = []
    else
      @cyte_categories = CyteCategory.search params[:q]
    end
  end
end
