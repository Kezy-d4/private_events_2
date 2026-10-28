class EventAttendancesController < ApplicationController
  before_action :authenticate_user!, only: [ :create ]

  def create
    @event_attendance = EventAttendance.create(event_attendance_params)
    redirect_to @event_attendance.attended_event
  end

  private

  def event_attendance_params
    params.expect(event_attendance: [ :attended_event_id, :event_attendee_id ])
  end
end
