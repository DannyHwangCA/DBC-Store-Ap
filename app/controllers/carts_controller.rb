class CartsController < ApplicationController

  def index
    if request.xhr?
      cart = current_user.carts
      render plain: cart.count
    end
  end

  def new
    @cart = Cart.new
  end

  def show
    @cart = current_user.products
  end

  def create
    @products = current_user.products
    if request.xhr?
      product = Product.find request[:product_id]
      cart_stock = Cart.where(product_id: request[:product_id], user_id: current_user.id ).count
      if cart_stock < product.stock
        Cart.create user_id: current_user.id, product_id: request[:product_id]
        render partial: "cart_products", layout: false, locals: {products: @products}
      else
        render partial: "cart_products", layout: false, locals: {products: @products}
      end
    else
      redirect_to root_path
    end
  end

 def destroy
    @products = current_user.products
    if request.xhr?
      product = Product.find_by name: request[:product_name]
      cart = Cart.find_by user_id: current_user.id, product_id: product.id
      cart.destroy
      render partial: "cart_products", layout: false, locals: {products: @products}
    else
      redirect_to root_path
    end
  end


end
