class CreateWidgetDashes < ActiveRecord::Migration[6.0]
  def change
    create_table :widget_dashes do |t|
      t.belongs_to :widget, null: false, foreign_key: true
      t.belongs_to :dashboard, null: false, foreign_key: true

      t.timestamps
    end
  end
end
