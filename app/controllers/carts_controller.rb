class CartsController < ApplicationController

  def new
    @cart = Cart.new
  end

  def create
    @products = current_user.products
    if request.xhr?
      product = Product.find request[:product_id]
      if product.stock > 0
        Cart.create user_id: current_user.id, product_id: request[:product_id]
        product.stock -= 1
        product.save
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
      product.stock += 1
      product.save
      render partial: "cart_products", layout: false, locals: {products: @products}
    else
      redirect_to root_path
    end
  end


end
