class UserSerializer < ActiveModel::Serializer
  attributes :name, :id, :email

  has_many :posts
end
