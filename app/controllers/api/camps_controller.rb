class Api::CampsController < ApplicationController

  def index
    @camps = Camp.all
    @camps = @camps.order('start_date ASC')
    render "index.json.jbuilder"
    
  end

  def show
    @camp = Camp.find(params[:id])
    render "show.json.jbuilder"
    
  end

  def create
    @camp = Camp.create(
      name: params[:name],
      grade_start: params[:grade_start],
      grade_end: params[:grade_end],
      start_date: params[:start_date],
      end_date: params[:end_date],
      time_span: params[:time_span],
      location: params[:location],
      cost: params[:cost],
      description: params[:description],
      website: params[:website],
      image_url: params[:image_url],
      overnight: params[:overnight]
      )

      if @camp.save
        render "show.json.jbuilder"
      else
        render json: {errors: @camp.errors.full_message}, status: :unprocessable_entity
      end
  end

end
