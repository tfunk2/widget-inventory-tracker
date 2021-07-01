class Widget < ApplicationRecord
    has_many :orders, through: :purchased_items
end
