class StaticPagesController < ApplicationController
  def home
    @stores = Store.limit(3).order("RANDOM()")
  end

  def userLogged
  end
  
  def aboutUs
  end
end
