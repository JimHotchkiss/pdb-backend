class FavoriteSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :date_published, :description, :image, :provider, :url, :login_user
  belongs_to :user
end
