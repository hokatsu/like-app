class LikesController < ApplicationController
  def create
    like = current_user.likes.build(tweet_id: params[:tweet_id])
    like.save
    @tweet = Tweet.find(params[:tweet_id])
    render 'create.js.erb'
  end

  def destroy
    like = Like.find_by(tweet_id: params[:tweet_id], user_id: current_user.id)
    like.destroy
    @tweet = Tweet.find(params[:tweet_id])
    render 'destroy.js.erb'
  end
end