class CategoriesController < ApplicationController
  load_and_authorize_resource

  def show
    @category = Category.includes(:products).find(params[:id])
  end

end
