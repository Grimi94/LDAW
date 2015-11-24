class SearchController < ApplicationController
  def search_name
    @stores = Store.all
    if params[:search_name]
    @stores = Store.search(params[:search_name]).order("created_at DESC")
    else
    @stores = Store.all.order('created_at DESC')
    end
  end
  
  def search_near
    if params[:search_near].present?
    @stores = Store.near(params[:search_near], 50)
    else
    @stores = Store.all
    end
  end
  
end
