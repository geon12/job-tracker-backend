class JobSerializer < ActiveModel::Serializer
  attributes :id, :role, :listing_url, :location, :description
  belongs_to: organization
end

t.string "role"
    t.string "listing_url"
    t.string "location"
    t.string "description"