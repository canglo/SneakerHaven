class ChargesController < ApplicationController
  def index
    @line_items = current_order.line_items
  end
end
