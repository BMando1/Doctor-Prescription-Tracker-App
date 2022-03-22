class Doctor < ApplicationRecord    
    has_many :prescriptions, dependent: :delete_all
end
