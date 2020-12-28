class FavoriteSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title
  belongs_to :user
end
