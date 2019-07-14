class ProductsController < ApplicationController

  include Pagy::Backend

  before_action :find_product, only: [:show]

  def index
    @search = current_user.products.ransack(product_params[:q])
    @products = @search.result
    @pagy, @products = pagy(@products, items: 25)
    respond_to do |format|
      format.html
      format.xlsx
    end
  end

  def show
    respond_to do |format|
      format.html
      format.js do
        render_modal('show')
      end
    end
  end

  private

  def find_product
    @product = Product.find_by(id: params[:id])
  end

  def product_params
    params.permit(
      q: [
        :brand_cont,
        :external_storage_eq,
        :model_cont,
        :ram_eq
      ]
    )
  end

end
