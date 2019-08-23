class StateSerializer < ActiveModel::Serializer
  has_many :parks

  attributes :id, :name
end
