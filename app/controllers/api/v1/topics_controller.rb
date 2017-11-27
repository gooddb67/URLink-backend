class Api::V1::TopicsController < ApplicationController

  def index
    @topics = Topic.all
    render json: @topics
  end

  def create
    @topic = Topic.create(params[:name])

    if @topic.save
      render json: @topic
    else
      render json: {errors: @topic.errors.full_messages}
    end
  end

  def show
    @topic = Topic.find(params[:id])
    if @topic
      render json: @topic
    else
      render json: {errors: @topic.errors.full_messages}
    end
  end

end
