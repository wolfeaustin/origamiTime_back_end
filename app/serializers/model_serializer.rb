class ModelSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :difficulty, :user_id, :description, :photo
  has_many :steps
  has_many :completed_models
end
