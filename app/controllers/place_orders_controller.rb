class PlaceOrdersController < ApplicationController
  def index
    @line_items = current_order.line_items
    @user = current_customer

    @line_items.each do |f|
      @subtotal = current_order.subtotal
      @gst = (@user.province.gst / 100) * @subtotal
      @pst = (@user.province.pst / 100) * @subtotal
      @hst = (@user.province.hst / 100) * @subtotal
      @total = @subtotal + @gst + @pst + @hst
    end

    @stripe_total = @total * 100


  end
end
