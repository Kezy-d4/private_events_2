class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :event_attendances, foreign_key: :attended_event
  has_many :event_attendees, through: :event_attendances, source: :event_attendee

  def to_s
    "#{title} by #{creator.name}"
  end
end
