class StoresController < ApplicationController

  def show
    @store = Store.find(params[:id])
    @reviews = Review.where(store_id: @store.id).order("created_at DESC")

    respond_to do |format|
      format.html # show.html.erb
      format.xml {render :xml => @product}
    end
    
    if @reviews.blank?
      @avg_review = 0
    else
      @avg_review = @reviews.average(:ratings).round(2)
    end
  end
end
