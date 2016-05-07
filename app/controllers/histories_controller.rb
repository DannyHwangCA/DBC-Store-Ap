class HistoriesController < ApplicationController

def index
  @histories = current_user.histories
end

def create
  history = History.new
  current_user.products.each do |product|
    item = Product.find(product.id)
    item.stock -= 1
    item.save
    history.orders << product.id
  end
  history.user_id = current_user.id
  history.save
  current_user.carts.clear
  ExampleMailer.checkout_email(current_user).deliver
  redirect_to thankyou_path
end

def thankyou
  @histories = current_user.histories
end


end
