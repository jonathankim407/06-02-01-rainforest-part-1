class ReviewsController < ApplicationController

  def index
  end

  def show
  end

  def new
  end

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(review_params)

    if @review.save
      flash[:notice] = "Your review has been successfully created!"
      redirect_to products_path
    else
      render "products/show"
      # render new_product_path
      # render :new
    end
  end

  def edit
    @review = Review.find(params[:id]) # just added
    @product = Product.find(params[:product_id])
  end

  def update
    @product = Product.find(params[:product_id])
    @review = Review.find(params[:id])
    if @review.update(review_params)
      flash[:notice] = "Your review has been successfully updated!"
      redirect_to product_path(@product)
    else
      # redirect_back_or_to @product
      # render edit_product_path(@product)
      render :edit
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    flash[:notice] = "Your review has been successfully DESTROYED!"
    redirect_to root_path
  end

  def review_params
    params.require(:review).permit(:name, :comment)
  end

end
