class Patient < ApplicationRecord

  has_many :suffers
  has_many :symptoms, through: :suffers

end
