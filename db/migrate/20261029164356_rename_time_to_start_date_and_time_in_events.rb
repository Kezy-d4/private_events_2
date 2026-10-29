class RenameTimeToStartDateAndTimeInEvents < ActiveRecord::Migration[8.1]
  def change
    rename_column :events, :time, :start_date_and_time
  end
end
