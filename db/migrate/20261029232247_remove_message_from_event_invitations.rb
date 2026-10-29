class RemoveMessageFromEventInvitations < ActiveRecord::Migration[8.1]
  def change
    remove_column :event_invitations, :message, :text
  end
end
