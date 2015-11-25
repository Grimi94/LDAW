class StoresController < ApplicationController
  before_action :set_store, only: [:show, :edit, :update, :destroy]
  def show
    @reviews = Review.where(store_id: @store.id).order("created_at DESC")
    
    @hash = Gmaps4rails.build_markers(@store) do |store, marker|
      marker.lat store.latitude
      marker.lng store.longitude
    end
    
    if @reviews.blank?
      @avg = 0
    else
      @avg = @reviews.average(:ratings).round(2)
    end

    respond_to do |format|
      format.html # show.html.erb
      format.xml {render :xml => @product}
    end
  end
  
  def edit
  end
  
  def update
    
    #puts store_params
    
    #params
      #if @store.update_attributes(store_params)
      
      #flash[:success] = "Profile updated"
      #render 'edit'
      
      #else
      #render 'edit'
      #end
      
    respond_to do |format|
      if @store.update(store_params)
        format.html { redirect_to @store, notice: 'Store was successfully updated.' }
        format.json { render :show, status: :ok, location: @store }
      else
        format.html { render :edit }
        format.json { render json: @store.errors, status: :unprocessable_entity }
      end
    end  
      
      
  end
  
  private
  def set_store
      @store = Store.find(params[:id])
  end
  
  def store_params
    params.require(:store).permit(:name, :city, :state, :street, :description, :tag_list, :image)
  end
end
