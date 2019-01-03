class Suffer < ApplicationRecord

  belongs_to :patient
  serialize :symptom_ids

  def symptoms
    symptom_ids.map{|i| Symptom.find_by(i) }
  end



end
