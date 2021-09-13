class JobSerializer < ActiveModel::Serializer
  attributes :id, :role, :listing_url, :location, :description
  belongs_to :organization
end

