class AddTimeToEvents < ActiveRecord::Migration[8.1]
  def change
    add_column :events, :time, :datetime
  end
end
