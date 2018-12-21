class Issue < ApplicationRecord

  has_many :diagnoses
  has_many :symptoms, through: :diagnoses

end
