class EventAttendance < ApplicationRecord
  belongs_to :event_attendee, class_name: "User"
  belongs_to :attended_event, class_name: "Event"

  def self.user_attending?(attended_event_id, event_attendee_id)
    EventAttendance.where(
      attended_event_id: attended_event_id, event_attendee_id: event_attendee_id
    ).any?
  end
end
