class MainController < ApplicationController

  def index
    @products = Product.main_page
  end

end
