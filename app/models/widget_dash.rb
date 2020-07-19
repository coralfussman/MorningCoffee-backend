class WidgetDash < ApplicationRecord
  belongs_to :widget
  belongs_to :dashboard
end
