class User < ApplicationRecord
    has_many :dashboards, dependent: :destroy
    has_many :themes, through: :dashboards
    has_secure_password

    validates_uniqueness_of :username
end
