class Suffer < ApplicationRecord

  belongs_to :patient
  serialize :symptom_ids

  def symptoms
    symptom_ids.map{|i| Sympton.find(i) }
  end

end
