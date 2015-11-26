class SearchController < ApplicationController
  
  def search_name
    @stores = Store.where("approved != false").order('created_at DESC')
    #@stores = Store.all.order('created_at DESC')
    if params[:search_name]
    @stores = Store.search(params[:search_name]).order("created_at DESC").where("approved != false")
    else
    @stores = Store..where("approved != false").order('created_at DESC')
    end
  end
  
  def search_tag
    if params[:search_tag]
      @stores = Store.tagged_with(params[:search_tag]).where("approved != false")
    else
      #@stores = Store.all('created_at DESC')
      @stores = Store.where("approved != false").order('created_at DESC')
    end
  end
  
end
