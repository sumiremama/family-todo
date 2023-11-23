class Task < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category

  validates :title, presence: true
  validates :category_id, numericality: { other_than: 1 , message: "can't be blank"} 
end
