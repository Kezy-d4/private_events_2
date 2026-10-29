class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :event_attendances, foreign_key: :attended_event
  has_many :event_attendees, through: :event_attendances, source: :event_attendee

  scope :upcoming, -> { where(start_date_and_time: (Time.now.utc)..) }
  scope :past, -> { where(start_date_and_time: ..(Time.now.utc)) }
end
