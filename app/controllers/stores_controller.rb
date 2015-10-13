class StoresController < ApplicationController

  def show
    @store = Store.find(params[:id])
    @reviews = Review.where(store_id:  @store.id).order("created_at DESC")

    respond_to do |format|
      format.html # show.html.erb
      format.xml {render :xml => @product}
    end
  end
end
