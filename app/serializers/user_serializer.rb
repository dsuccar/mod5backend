class UserSerializer < ActiveModel::Serializer
  attributes :id, :artist_id, :badges, :username
  has_many :battles
  
  

end