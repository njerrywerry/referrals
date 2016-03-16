class RelationshipsController < ApplicationController
  def index
  end

  def create
    @relationship = Relationship.new
    @relationship.referrer_id = current_user.id
    @relationship.referral_id = params[:referral_id]

    if @relationship.save
      redirect_to root_url
    else
      flash[:error] = "Couldn't Refer"
      redirect_to root_url
    end
  end

  private
  def relationship_params
    params.require(:relationship).permit(:referrer_id, :referral_id)
  end

end
