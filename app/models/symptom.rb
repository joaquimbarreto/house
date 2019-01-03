class Symptom < ApplicationRecord

  has_many :diagnoses
  has_many :issues, through: :diagnoses
  has_many :suffers
  has_many :patients, through: :suffers

end
