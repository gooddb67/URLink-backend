class Api::V1::SubtopicsController < ApplicationController

  def index
    @topic = Topic.find(params[:topic_id])
    @subtopics = @topic.subtopics
    render json: @subtopics
  end



  def show
    @subtopic = Subtopic.find(params[:id])

    if @subtopic
      render json: @subtopic
    else
      render json: {errors: @subtopic.errors.full_messages}
    end
  end

end
