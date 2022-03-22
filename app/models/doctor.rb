class Doctor < ApplicationRecord    
    has_many :prescriptions, dependent: :delete_all
    has_many :drugs, dependent: :delete_all
end
