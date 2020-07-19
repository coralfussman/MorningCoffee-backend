class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :dashboards, :themes

  # has_many :dashboards

  def dashboards
    ActiveModel::SerializableResource.new(object.dashboards,  each_serializer: DashboardSerializer)
end
end
