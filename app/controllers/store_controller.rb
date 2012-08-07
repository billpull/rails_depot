class StoreController < ApplicationController
  def index
    @time = Time.now
    @products = Product.all
    
    @count = increment_counter
    @count_message = "You have been here #{@count} times" if @count > 5

  end

  def increment_counter
    session[:counter] ||= 0
    session[:counter] += 1
  end 
end
