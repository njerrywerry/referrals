class RelationshipsController < ApplicationController
  def index
  end

  def create
    @relationship = Relationship.new
    @relationship.referrer_id = params[:referrer_id]
    @relationship.referral_id = current_user.id

    if @relationship.save
      redirect_to User.find params[:referral_id]
    else
      flash[:error] = "Couldn't Refer"
      redirect_to root_url
    end
  end

end
