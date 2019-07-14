class ProductsController < ApplicationController

  before_action :find_product, only: [:show]

  def index
    @products = current_user.products
  end

  def show
  end

  private

  def find_product
    @product = Product.find(id: params[:id])
  end

end
