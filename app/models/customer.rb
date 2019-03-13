class Customer < ApplicationRecord
  belongs_to :salesman
  has_many :orders
end
