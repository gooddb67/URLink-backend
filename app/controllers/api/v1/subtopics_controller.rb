class Api::V1::SubtopicsController < ApplicationController

  def index
    @topic = Topic.find(params[:topic_id])
    @subtopics = @topic.subtopics
    render json: @subtopics
  end

  def create
    @topic = Topic.find(params[:topic_id])
    @subtopic = Subtopic.create(name: params[:name], topic_id: params[:topic_id])

    if @subtopic.save
      render json: @subtopic
    else
      render json: {errors: @subtopic.errors.full_messages}
    end
  end



  def show
    @subtopic = Subtopic.find(params[:id])

    if @subtopic
      render json: @subtopic
    else
      render json: {errors: @subtopic.errors.full_messages}
    end
  end

  def destroy
    @subtopic = Subtopic.destroy(params[:id]).destroy
    render json: @subtopic
  end

end
