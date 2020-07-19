class WidgetSerializer < ActiveModel::Serializer
  attributes :id, :title
  # has_many :widget_dashes
end
