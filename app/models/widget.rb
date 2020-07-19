class Widget < ApplicationRecord
    has_many :widget_dashes
    has_many :dashboards, through: :widget_dashes
    
end
