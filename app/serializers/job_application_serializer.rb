class JobApplicationSerializer < ActiveModel::Serializer
  attributes :id, :notes, :status, :rejected, :application_process
  has_many :contacts
  has_many :tasks
  belongs_to :job
end
