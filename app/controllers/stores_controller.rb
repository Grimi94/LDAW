class StoresController < ApplicationController

  def show
    @store = Store.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml {render :xml => @product}
    end
  end
end
