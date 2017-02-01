class Article < ApplicationRecord
	validates :title, presence: true, length: { minimum: 3 }
  scope :published, -> { where(published: true) }
  validates :text, presence: true, length: { minimum: 200 }
end  
