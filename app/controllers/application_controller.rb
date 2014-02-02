class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :initialize_cart, :init_meta_tags
  
  private
    
    def initialize_cart
      @cart = session[:cart] ||= Cart.new
    end

    def init_meta_tags
      @meta_tag_content = {}
      @meta_tag_content[:title_prefix] = 'интернет-магазин тюльпанов Воронеж'
      @meta_tag_content[:title] = 'интернет-магазин тюльпанов Воронеж'
      @meta_tag_content[:keywords_prefix] = 'интернет-магазин тюльпанов Воронеж'
      @meta_tag_content[:keywords] = 'интернет-магазин тюльпанов Воронеж'
    end

end
