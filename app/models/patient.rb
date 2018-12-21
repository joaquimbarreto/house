class Patient < ApplicationRecord

  has_many :experiences
  has_many :symptoms, through: :experiences

end
