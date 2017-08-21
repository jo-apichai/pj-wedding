class InvitationsController < ApplicationController
  def index
    redirect_to root_path
  end

  def new
    @invitation = Invitation.new
  end

  def create
    @invitation = Invitation.new invitation_params

    if @invitation.save
      redirect_to invitation_path(@invitation)
    else
      render :new
    end
  end

  private def invitation_params
    params.require(:invitation).permit(
      :first_name,
      :last_name,
      :number_of_guests,
      :note
    )
  end
end
