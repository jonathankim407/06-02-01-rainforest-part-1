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
      render new_product_path
      # render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def review_params
    params.require(:review).permit(:name, :comment)
  end

end
