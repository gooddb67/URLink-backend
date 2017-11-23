class Api::V1::ArtifactsController < ApplicationController

  def index
    @topic = Topic.find(params[:topic_id])
    @subtopic = Subtopic.find(params[:subtopic_id])

    @artifacts = Artifact.where(topic_id: @topic.id, subtopic_id: @subtopic.id)
    render json: @artifacts
  end

  def show
    @artifact = Artifact.find(params[:id])
    if @artifact
      render json: @artifact
    else
      render json: {errors: @artifact.errors.full_messages}
    end
  end

  def create
    @topic = Topic.find(params[:topic_id])
    @subtopic = Subtopic.find(params[:subtopic_id])
    @artifact = Artifact.create(media: params[:media], url: params[:url], topic_id: @topic.id, subtopic_id: @subtopic.id)

    if @artifact.save
      render json: @artifact
    else
      render json: {errors: @artifact.errors.full_messages}
    end
  end



end
