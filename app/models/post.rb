class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :comments through :post_category

end
