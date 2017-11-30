class Api::V1::CommentsController < ApplicationController


  def index
    @comments = Comment.all
    render json: @comments
  end

  def show
    @comment = Comment.find(params[:id])
    if @comment
      render json: @comment
    else
      render json: {errors: @comment.errors.full_messages}
    end
  end

  def create
    @artifact = Artifact.find(params[:artifact_id])
    @comment = Comment.create(artifact_id: @artifact.id, content: params[:content])

    if @comment.save
      render json: @comment
    else
      render json: {errors: @comment.errors.full_messages}
    end
  end


end
