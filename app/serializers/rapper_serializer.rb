class RapperSerializer < ActiveModel::Serializer

    attributes :id, :name, :bio, :hometown, :hp
    has_many :lyrics

  
end
