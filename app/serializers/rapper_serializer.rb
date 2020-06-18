class RapperSerializer < ActiveModel::Serializer

    attributes :id, :name, :bio, :hometown, :lives, :badge, :gif
    has_many :lyrics

  
end
