class ProductsController < ApplicationController
  def index
    @products = Products.includes(:images).order('created_at DESC')
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
