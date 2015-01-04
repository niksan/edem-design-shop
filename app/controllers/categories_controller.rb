class CategoriesController < ApplicationController
  load_and_authorize_resource

  def show
    @category = Category.includes(:products).where(products: { published: true }).find(params[:id])
  end

end
