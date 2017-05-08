class Article < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true
  binding.pry
end
