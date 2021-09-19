class User < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
    validates :username, presence: true, uniqueness: true

    has_secure_password
    has_many :job_applications
    has_many :jobs, through: :job_applications
end
