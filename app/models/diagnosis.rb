class Diagnosis < ApplicationRecord

  belongs_to :issue
  serialize :symptom_ids

  def symptoms
    symptom_ids.includes(:symptom_ids){|i| Symptom.find(i)}
  end

end
