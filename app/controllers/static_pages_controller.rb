class StaticPagesController < ApplicationController
  def home
    @stores = Store.limit(3).order("RANDOM()")
  end

  def userLogged
  end
end
