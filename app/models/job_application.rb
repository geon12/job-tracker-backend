class JobApplication < ApplicationRecord
  belongs_to :job
  belongs_to :user
  has_many :tasks
  has_many :contacts
end
