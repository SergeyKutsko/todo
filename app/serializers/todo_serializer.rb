class TodoSerializer < ActiveModel::Serializer
  attributes :id, :description, :priority
end
