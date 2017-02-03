class Article < ApplicationRecord
	
  validates :title, presence: true, length: { minimum: 3 }
  validates :text, presence: true, length: { minimum: 1 }
  
  scope :published, -> { where(published: true) }
 
  before_destroy :if_not_published, (validates :text, presence: true, length: { minimum: 1000 })
  def if_not_published
    if published?
      validate :text
      throw :abort
    end
  end
end
