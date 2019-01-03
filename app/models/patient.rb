class Patient < ApplicationRecord

  has_many :suffers
  has_many :symptoms, through: :suffers


    has_secure_password
    validates :name, presence: true, uniqueness: true
    validates :password, presence: true
  end
