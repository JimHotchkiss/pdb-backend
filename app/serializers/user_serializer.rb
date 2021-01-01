class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :favorites
  has_many :favorites
end
