class User < ApplicationRecord
    has_many :orders
    has_many :purchased_items, through: :orders
end
