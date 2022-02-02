class DetailsController < ApplicationController
  def index
    @details = Detail.all
  end

  def show
    @detail = Detail.find(params[:id])
  end
end
