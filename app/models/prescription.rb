class Prescription < ApplicationRecord
  belongs_to :doctor
  has_many :drugs, dependent: :delete_all
end
