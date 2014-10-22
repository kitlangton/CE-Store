class Admin::ProductsController < ApplicationController

  def new
    @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      puts params
      redirect_to admin_products_path
    else
      render 'edit'
    end
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to admin_products_path
    else
      render 'new'
    end
  end

  def destroy
    @product = Product.find(params[:id])

    if @product.destroy
      render nothing: true
    end
  end

  def index
    @products = Product.all.page params[:page]
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :company_id)
  end
end
