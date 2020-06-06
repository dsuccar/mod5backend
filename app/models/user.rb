class User < ApplicationRecord
  has_many :battles
  has_many :rappers, through: :battles
end
