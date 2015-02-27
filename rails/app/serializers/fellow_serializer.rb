class FellowSerializer < ActiveModel::Serializer
  attributes :id, :image, :name, :nonprofit, :benefactor, :employer, :metro, :cohort
end
