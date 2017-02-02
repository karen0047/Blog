class Article < ApplicationRecord
	
  validates :title, presence: true, length: { minimum: 3 }
  validates :text, presence: true, length: { minimum: 1 }
  
  scope :published, -> { where(published: true) }
  
  before_destroy :control

  def control
    if Article.published
      errors.add :base, "Невозможно удалить"
      return false
    else
      true
    end
  end
end  
