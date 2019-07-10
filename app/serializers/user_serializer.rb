class UserSerializer < ActiveModel::Serializer
  attributes :id, :email
  has_many :todos
  # @todo 17
end
