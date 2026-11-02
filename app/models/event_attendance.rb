class EventAttendance < ApplicationRecord
  belongs_to :event_attendee, class_name: "User"
  belongs_to :attended_event, class_name: "Event"

  validate :an_identical_attendance_does_not_exist

  def an_identical_attendance_does_not_exist
    EventAttendance.where(
      event_attendee_id: event_attendee_id,
      attended_event_id: attended_event_id
    ).none?
  end
end
