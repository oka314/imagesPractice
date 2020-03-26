class ProductsController < ApplicationController
  def index
    @products = Product.includes(:images).order('created_at DESC')
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end
   before_action :set_product, except: [:index,:new,:create]
  def update
    if @product.update(product_params)
      redirect_to root_path
    else
      render :edit
    end
  end
  private

  def product_params
    params.require(:product).permit(:name,:price,images_attributes: [:src, :_destroy,:id])
  end

  def set_product
    @product = Product.find(params[:id])
  end
  end
