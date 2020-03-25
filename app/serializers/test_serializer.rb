class TestSerializer < ActiveModel::Serializer
  attributes :id, :name, :level
  has_one :profession
end
