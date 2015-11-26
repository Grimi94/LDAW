class StaticPagesController < ApplicationController
  def home
    @stores = Store.approved.limit(6).order("RANDOM()")
    #@stores = Store.limit(6).order("RANDOM()")
  end

  def userLogged
  end
  
  def aboutUs
  end
end
