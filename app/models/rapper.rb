class Rapper < ApplicationRecord
  has_many :battles
  has_many :users, through: :battles
  has_many :lyrics
end
