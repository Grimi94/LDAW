class SearchController < ApplicationController
  
  def search_name
    @stores = Store.approved.order('created_at DESC')
    #@stores = Store.all.order('created_at DESC')
    if params[:search_name]
    @stores = Store.approved.search(params[:search_name]).order("created_at DESC")
    else
    @stores = Store.approved.order('created_at DESC')
    end
  end
  
  def search_tag
    if params[:search_tag]
      @stores = Store.approved.tagged_with(params[:search_tag])
    else
      #@stores = Store.all('created_at DESC')
      @stores = Store.approved.where("approved != false")
    end
  end
  
end
