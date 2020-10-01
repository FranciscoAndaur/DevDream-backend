class PostSerializer < ActiveModel::Serializer
  attributes :id, :content, :user_id
  has_one :user
  has_many :comments
  
  
end
