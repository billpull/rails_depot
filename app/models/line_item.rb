class LineItem < ActiveRecord::Base
  attr_accessible :product, :product_id, :cart, :cart_id
  belongs_to :product
  belongs_to :cart
end
