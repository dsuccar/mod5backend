class Battle < ApplicationRecord
  belongs_to :user
  belongs_to :rapper
  belongs_to :rapper, :class_name => :Rapper,:foreign_key => 'boss_id'
end
