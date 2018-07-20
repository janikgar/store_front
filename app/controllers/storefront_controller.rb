class StorefrontController < ApplicationController
  def all_items
  	@products = Product.all
  end

  def items_by_category
  	@products = Product.all
  end

  def items_by_brand
  	@products = Product.all
  end
end
