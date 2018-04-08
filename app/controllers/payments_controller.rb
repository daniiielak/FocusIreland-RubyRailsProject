class PaymentsController < ApplicationController
  def index
    @order_items = current_order.order_items
  end
 def show
      @profile = Profile.find_by_user_id(current_user.id)
      
 end
end