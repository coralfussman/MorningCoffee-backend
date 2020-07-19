class DashboardSerializer < ActiveModel::Serializer
  attributes :id, :widget_dashes, :widgets
  # belongs_to :theme
  # has_many :widget_dashes
  # has_many :widgets
end
