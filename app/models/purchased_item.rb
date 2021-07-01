class PurchasedItem < ApplicationRecord
  belongs_to :widget
  belongs_to :order
end
