class Bookmark < ApplicationRecord
  belongs_to :folder, required: false
  has_and_belongs_to_many :tags
  has_many :collations

  #todo created_at überschreiben
  #todo migration machen und dateadded rauswerfen. ->
  # oder aber 2 daten führen. für hin und her synch.
  # keine endpoint app.
end
