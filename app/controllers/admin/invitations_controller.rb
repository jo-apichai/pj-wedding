module Admin
  class InvitationsController < ApplicationController
    before_action :authenticate_user!

    def index
      @invitations = Invitation.all
    end
  end
end
