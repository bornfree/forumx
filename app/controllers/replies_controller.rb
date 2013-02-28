class RepliesController < ApplicationController

  respond_to :json

  def index
    respond_with Reply.all
  end

  def show
    respond_with Reply.find(params[:id])
  end

  def create
    respond_with Reply.create(params[:reply])
  end

  def update
    respond_with Reply.update(params[:id], params[:reply])
  end

  def destroy
    respond_with Reply.destroy(params[:id])
  end

end
