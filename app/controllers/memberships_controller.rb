class MembershipsController < ApplicationController

  def create
    new_membership = Membership.create!(membership_params)
    render json: new_membership, status: :created
  end

  private

  def membership_params
    params.permit(:charge, :client_id, :gym_id)
  end

end
