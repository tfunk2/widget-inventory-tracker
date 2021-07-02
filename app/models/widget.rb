class Widget < ApplicationRecord
    has_many :purchased_items
    has_many :orders, through: :purchased_items
    has_many :users, through: :orders
end
