class FavoriteSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :date_published, :description, :image, :provider, :url
  belongs_to :user
end
