class RapperSerializer < ActiveModel::Serializer

    attributes :id, :name, :bio, :hometown
    has_many :lyrics

  
end
