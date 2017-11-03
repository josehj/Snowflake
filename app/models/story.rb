class Story < ApplicationRecord
  belongs_to :user
  has_many :characters
  has_many :chapters
  has_many :relationships
end
