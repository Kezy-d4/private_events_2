class CreateEventInvitations < ActiveRecord::Migration[8.1]
  def change
    create_table :event_invitations do |t|
      t.text :message
      t.references :sender, null: false, foreign_key: { to_table: :users }
      t.references :recipient, null: false, foreign_key: { to_table: :users }
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
