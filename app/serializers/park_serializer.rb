class ParkSerializer < ActiveModel::Serializer
  belongs_to :state
  attributes :id, :name, :park_ranger, :open
end
