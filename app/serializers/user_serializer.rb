class UserSerializer < ActiveModel::Serializer
  attributes :id, :artist_id, :badges, :username, :password
  has_many :battles
  
  

end