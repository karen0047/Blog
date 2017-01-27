class Article < ApplicationRecord
	validates 	:title, presence: true,
				length: { minimum: 5 }
scope :publish, -> { where(publish: true) }
scope :unpublish, -> { where(publish: false) }
end
