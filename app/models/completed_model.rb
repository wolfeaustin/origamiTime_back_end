class CompletedModel < ApplicationRecord
  belongs_to :user
  belongs_to :model
end
