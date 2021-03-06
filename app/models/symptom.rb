class Symptom < ApplicationRecord

  has_many :diagnoses
  has_many :issues, through: :diagnoses
  has_many :suffers
  has_many :patients, through: :suffers

def possible_issues
  possible_issues_array = Issue.all.select do |i|
    i.symptoms.include?(self)
  end
end

end
