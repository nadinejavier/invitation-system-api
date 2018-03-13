class Api::V1::InvitesController < ApplicationController
  # before_action :authenticate_user
    def index
    @invites = Invite.all
    render json: @invites, status: :ok
  end

  def create
    @invite = Invite.create(
      user_id: current_user.id,
      message: params[:message],
      recipient: params[:recipient],
      status: "Sent",
      token: Base64.encode64([Time.now, rand].join)
      )
    render json: @invite, status: :created
  end

  def show
    invite = Invite.find(token: params[:token])
    render json: invite, status: :ok
  end

end
