class RemoveStartTimeEndTimeMaxAttendeesFromEvents < ActiveRecord::Migration[8.1]
  def change
    remove_column :events, :start_time, :datetime
    remove_column :events, :end_time, :datetime
    remove_column :events, :max_attendees, :integer
  end
end
