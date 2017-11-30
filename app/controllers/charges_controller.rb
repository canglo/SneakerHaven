class ChargesController < ApplicationController
  def new
    #code
  end

  def create
    @line_items = current_order.line_items
    @user = current_customer

  # Amount in cents
  @amount = 500

  customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :source  => params[:stripeToken]
  )

  charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => @amount,
    :description => 'Rails Stripe customer',
    :currency    => 'usd'
  )

  @line_items.each do |f|
    @subtotal = current_order.subtotal
    @gst = (@user.province.gst / 100) * @subtotal
    @pst = (@user.province.pst / 100) * @subtotal
    @hst = (@user.province.hst / 100) * @subtotal
    @total = @subtotal + @gst + @pst + @hst
  end

  session[:order_id]=nil

  current_order.update_columns(status: 'paid', pst: @pst, gst: @gst, shipping_cost: 0,
                              customer_id: current_customer.id, total: @total)

rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to new_charge_path
end
end
