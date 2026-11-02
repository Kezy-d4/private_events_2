class MakeColumnsNotNullInEvents < ActiveRecord::Migration[8.1]
  def change
    change_column_null :events, :title, false
    change_column_null :events, :description, false
    change_column_null :events, :location, false
    change_column_null :events, :start_date_and_time, false
    change_column_null :events, :private, false
  end
end
