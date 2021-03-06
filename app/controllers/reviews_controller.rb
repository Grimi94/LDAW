class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :set_store, except: [:index, :destroy]

  def new
    @review = Review.new
    
  end
  
  def index
    @review = Review.where(user_id: current_user.id).order("created_at DESC")
  end

  def edit
    @review = Review.find(params[:id])
  end

  def create
    if(!review_params[:ratings])
     flash.now[:danger] = 'Invalid email/password combination'
     review_params[:ratings] 
    end
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    @review.store_id = @store.id
    
    respond_to do |format|
      if @review.save
        format.html { redirect_to @store, notice: 'Review was successfully created.' }
        format.json { render :show, status: :created, location: @review }
      else
        format.html { render :new }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @review.update(review_params)
        format.html { redirect_to user_reviews_path(current_user), notice: 'Review was successfully updated.' }
        format.json { render :show, status: :ok, location: @review }
      else
        format.html { render :edit }
        flash[:error] = "Action failed"
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @review.destroy
    respond_to do |format|
      format.html { redirect_to user_reviews_path(current_user), notice: 'Review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_review
      @review = Review.find(params[:id])
    end
    
    def set_store
      @store = Store.find(params[:store_id])
    end

    def review_params
      params.require(:review).permit(:content, :ratings)
    end

end
