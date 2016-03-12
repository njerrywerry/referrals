class RelationshipsController < ApplicationController
  def index
  end

  def create
    @relationship = Relationship.new
    @relationship.followed_id = params[:referrer_id]
    @relationship.follower_id = user.id</p>

    if @relationship.save
      redirect_to User.find params[:referral_id]
    else
      flash[:error] = "Couldn't Refer"
      redirect_to root_url
    end
  end

end
