class Api::V1::TopicsController < ApplicationController

  def index
    @topics = Topic.all
    render json: @topics
  end

  def create
    @topic = Topic.create(name: params[:name])

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

  def destroy
    @topic = Topic.find(params[:id]).destroy
    render json: @topic
  end

end
