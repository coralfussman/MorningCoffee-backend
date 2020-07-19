class Dashboard < ApplicationRecord
  belongs_to :user
  belongs_to :theme
  has_many :widget_dashes
  has_many :widgets, through: :widget_dashes
end
