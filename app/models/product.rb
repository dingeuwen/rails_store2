class Product < ActiveRecord::Base
  attr_accessible :description, :in_cart, :name, :price, :product_picture
  has_many :reviews
end
