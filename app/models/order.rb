class Order < ApplicationRecord
  belongs_to :user
  has_many :purchased_items
  has_many :widgets, through: :purchased_items
end
