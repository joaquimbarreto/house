class Symptom < ApplicationRecord

  has_many :diagnoses
  has_many :IssuesController, through: :diagnoses
  has_many :experiences
  has_many :patients, through: :experiences

end
