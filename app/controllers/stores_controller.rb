class StoresController < ApplicationController

  def show
    @store = Store.find(params[:id])
    @reviews = Review.where(store_id: @store.id).order("created_at DESC")
    @hash = Gmaps4rails.build_markers(@store) do |store, marker|
      marker.lat store.latitude
      marker.lng store.longitude
    end
    
    if @reviews.blank?
      @avg = 0
    else
      @avg = @reviews.average(:ratings).round
    end

    respond_to do |format|
      format.html # show.html.erb
      format.xml {render :xml => @product}
    end
  end
  
  def edit
    @store = Store.find(params[:id])

  end
  
  def update
    @store = Store.find(params[:id])
    
    puts store_params
    
    params
      if @store.update_attributes(store_params)
      
      flash[:success] = "Profile updated"
      render 'edit'
      
      else
      render 'edit'
      end
  end
  
  private
  def store_params
    #params.require(:store).permit(:name, :city, :state, :description)
    params.require(:store).permit(:name, :city, :state, :street, :description, :image)
  end
end
