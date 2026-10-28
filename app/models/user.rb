class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :created_events, foreign_key: :creator_id, class_name: "Event"
  has_many :event_attendances, foreign_key: :event_attendee
  has_many :attended_events, through: :event_attendances, source: :attended_event

  def events_involving_user
    (created_events + attended_events).uniq
  end
end
