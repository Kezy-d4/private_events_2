class EventAttendancesController < ApplicationController
  def create
    @event_attendance = EventAttendance.create(event_attendance_params)
    redirect_to @event_attendance.attended_event
  end

  def destroy
    @event_attendance = EventAttendance.find(params[:id])
    @event = @event_attendance.attended_event
    @event_attendance.destroy
    redirect_to @event
  end

  private

  def event_attendance_params
    params.expect(event_attendance: [ :attended_event_id, :event_attendee_id ])
  end
end
