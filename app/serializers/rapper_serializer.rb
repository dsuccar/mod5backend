class RapperSerializer < ActiveModel::Serializer

    attributes :id, :name, :bio, :hometown, :hp, :badge, :gif
    has_many :lyrics

  
end
