class Api::PorfileController < ApplicationController
  before_action :set_item, only: [:show, :update, :destroy]
  
  def index
      render json: Porfile.all
  end

  def show
      render json: @porfile
  end

  def create
      puts "create params:"
      puts params
      porfile = Porfile.new(item_params)
      if(porfile.save)
          render json: porfile
      else
          render json: {errors: porfile.errors.full_messages}, status: 422
      end
  end

  def update
      if @porfile.update(item_params)
          render json: @porfile
      else
          render json: {errors: @porfile.errors.full_messages}, status: 422
      end
  end



  def destroy
      render json: @porfile.destroy
  end

  private

  def set_item
     @porfile = Porfile.find(params[:id])
  end

  def item_params
      return params.require(:porfile).permit(:name, :position)
  end
end