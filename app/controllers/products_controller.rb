class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      flash[:notice] = "Your product has been successfully created!"
      redirect_to products_path
    else
      render new_product_path
      # render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      flash[:notice] = "Your product has been successfully updated!"
      redirect_to @product
    else
      # redirect_back_or_to @product
      # render edit_product_path(@product)
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:notice] = "Your product has been successfully DESTROYED!"
    redirect_to products_path
  end

  def product_params
    params.require(:product).permit(:name, :description, :price_in_cents)
  end

end
