class SearchController < ApplicationController
  
  def search_name
    @stores = Store.all.order('created_at DESC')
    if params[:search_name]
    @stores = Store.search(params[:search_name]).order("created_at DESC")
    else
    @stores = Store.all.order('created_at DESC')
    end
  end
  
  def search_tag
    if params[:search_tag]
      @stores = Store.tagged_with(params[:search_tag])
    else
      @stores = Store.all('created_at DESC')
    end
  end
  
end
