class ThankyousController < ApplicationController
  
  
  def show
    session.delete(:order_id)
  end
  
  def index
    session.delete(:order_id)
  end
  
  
end
