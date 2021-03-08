class Article < ApplicationRecord
  belongs_to :categories

  scope :active, 			 -> { where('active = ?', true) }
  scope :alphabetical, -> { order('name') }
end
