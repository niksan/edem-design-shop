class MainController < ApplicationController

  def index
    @products = Product.published.main_page
  end

end
