class Api::V1::InvitesController < ApplicationController
    def index
    @invites = Invite.all
    render json: @invites, status: :ok
  end

  def create
    @invite = Invite.create(
      user_id: params[:user_id],
      message: params[:message],
      recipient: params[:recipient],
      status: "Sent"
      # token: Base64.encode64([Time.now, rand].join)
      )
    render json: @invite, status: :created
  end
end
