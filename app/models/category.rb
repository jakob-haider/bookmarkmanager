class Category < ApplicationRecord
  has_many :acquirings, through: :category_on_edge, required: false
  has_many :folders
end
