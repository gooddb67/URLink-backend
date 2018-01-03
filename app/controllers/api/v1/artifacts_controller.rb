class Api::V1::ArtifactsController < ApplicationController

  def index
    # @topic = Topic.find(params[:topic_id])
    # @subtopic = Subtopic.find(params[:subtopic_id])
    #
    # @artifacts = Artifact.where(topic_id: @topic.id, subtopic_id: @subtopic.id)
    @artifacts = Artifact.all
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
    @artifact = Artifact.create(media: params[:media], url: params[:url], caption: params[:caption], topic_id: @topic.id, subtopic_id: @subtopic.id)

    if @artifact.save
      render json: @artifact
    else
      render json: {errors: @artifact.errors.full_messages}
    end
  end

  def destroy
    @artifact = Artifact.destroy(params[:id]).destroy
    render json: @artifact
  end



end
