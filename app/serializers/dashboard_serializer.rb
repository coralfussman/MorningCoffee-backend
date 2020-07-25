class DashboardSerializer < ActiveModel::Serializer
  attributes :id, :widget_dashes, :widgets
  # belongs_to :theme
  # has_many :widget_dashes
  # has_many :widgets
  def widgets
    
    self.object.widget_dashes.map do |widget_dash|
        widget_dash.widget.attributes.merge({widget_dash_id: widget_dash.id})

    end

  end

end
