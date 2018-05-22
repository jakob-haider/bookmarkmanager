class Tag < ApplicationRecord
  has_and_belongs_to_many :bookmarks
  has_and_belongs_to_many :folders
end
