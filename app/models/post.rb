class Post < ApplicationRecord
  belongs_to :user
  has_many :post_categories
  has_many :catergories, through: :post_categories

  

end
