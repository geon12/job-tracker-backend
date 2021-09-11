class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :location, :email, :job_title
end
