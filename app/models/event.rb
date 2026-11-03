class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :event_attendances, foreign_key: :attended_event, dependent: :destroy
  has_many :event_attendees, through: :event_attendances, source: :event_attendee

  scope :upcoming, -> { where(start_date_and_time: (Time.now.utc)..) }
  scope :past, -> { where(start_date_and_time: ..(Time.now.utc)) }
  scope :private_visibility, -> { where(private: true) }
  scope :public_visibility, -> { where(private: false) }

  validates :title, :description, :location, :start_date_and_time, presence: true
  validates :title, :location, length: { maximum: 100 }
  validates :description, length: { maximum: 500 }

  def attended_by_user?(user)
    EventAttendance.where(attended_event_id: self.id, event_attendee_id: user).any?
  end

  def created_by_user?(user)
    self.creator == user
  end

  def involves_user?(user)
    created_by_user?(user) || attended_by_user?(user)
  end
end
