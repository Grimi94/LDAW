class StaticPagesController < ApplicationController
  def home
    @stores = Store.where("approved != false").limit(6).order("RANDOM()")
    #@stores = Store.limit(6).order("RANDOM()")
  end

  def userLogged
  end
end
