class User < ApplicationRecord

  has_many :models
  has_many :completed_models
  has_many :pic_uploads, through: :completed_models

end
