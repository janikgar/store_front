class StorefrontController < ApplicationController

  def all_items
  	@products = Product.all
  end

  def items_by_category
    # @products = Product.all
    # @categories = Product.all.group(:category).pluck(:category)
    @categories = Category.joins(:products).order(name: :asc)
    @products_by_category = Array.new
    @categories.each do |category|
      category_products =  Product.all.where(category_id: category.id)
      @products_by_category.push({category.name => category_products.to_a})
    end
  end

  def items_by_brand
    # @products = Product.all
    @brands = Product.all.group(:brand).pluck(:brand)
    @products_by_brand = []
    @brands.each do |brand|
      brand_products = Product.all.where(brand: brand)
      @products_by_brand.push({brand => brand_products.to_a})
    end
  end
end
