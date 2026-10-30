class EventInvitationsController < ApplicationController
  def index
    @event_invitations = EventInvitation.all
  end

  def create
    @event_invitation = EventInvitation.create(event_invitation_params)
    redirect_to @event_invitation.sender
  end

  def destroy
    @event_invitation = EventInvitation.find(params[:id])
    @event_invitation.destroy
    redirect_back_or_to root_path
  end

  private

  def event_invitation_params
    params.expect(event_invitation: [ :sender_id, :recipient_id, :event_id ])
  end
end
