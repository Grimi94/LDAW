class SearchController < ApplicationController
  
  def search
    @stores = Store.all
    if params[:search]
    @stores = Store.search(params[:search]).order("created_at DESC")
    else
    @stores = Store.all.order('created_at DESC')
    end
  end
  
end
