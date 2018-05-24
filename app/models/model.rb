class Model < ApplicationRecord

  belongs_to :user
  has_many :steps
  has_many :completed_models
  has_many :pic_uploads, through: :completed_models
end
