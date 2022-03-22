class Drug < ApplicationRecord
  belongs_to :prescription
  belongs_to :doctor
end
