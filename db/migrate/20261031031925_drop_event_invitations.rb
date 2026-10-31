class DropEventInvitations < ActiveRecord::Migration[8.1]
  def change
    drop_table :event_invitations
  end
end
