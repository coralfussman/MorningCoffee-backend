class Theme < ApplicationRecord
    has_many :dashboards, dependent: :destroy
    has_many :users, through: :dashboards
end
