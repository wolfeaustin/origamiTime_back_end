class PicUpload < ApplicationRecord

  belongs_to :user
  belongs_to :completed_model

end
