class Review < ApplicationRecord
  belongs_to :restaurant

  validates :restaurant_id, presence: true
  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, :inclusion=> { :in => [0, 1, 2, 3, 4, 5] }
  # validates :rating, is_a: Integer
  validates :rating, numericality: { only_integer: true }, allow_blank: true

end
