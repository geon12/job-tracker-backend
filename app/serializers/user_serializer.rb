class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :location, :email, :job_title
  has_many :job_applications
end
