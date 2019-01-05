class Api::ClinicsController < ApplicationController

	def index
	  date = Date.today
	  @clinics = Clinic.all
	  # @camps = Camp.where('start_date >= ?', date)
	  @clinics = @clinics.order('start_date ASC')
	  render "index.json.jbuilder"
	  
	end

	def show
	  @clinic = Clinic.find(params[:id])
	  render "show.json.jbuilder"
	  
	end

	def create
	  @clinic = Clinic.create(
	    name: params[:name],
	    venue: params[:venue],
	    town: params[:town],
	    state: params[:state],
	    zip: params[:zip],
	    multiday: params[:multiday],
	    start_grade: params[:start_grade],
	    end_grade: params[:end_grade],
	    start_date: params[:start_date],
	    end_date: params[:end_date],
	    time_span: params[:time_span],
	    cost: params[:cost],
	    description: params[:description],
	    clinic_type: params[:clinic_type],
	    website: params[:website],
	    image_url: params[:image_url],
	    no_sessions: params[:no_sessions]
	    )

	    if @clinic.save
	      render "show.json.jbuilder"
	    else
	      render json: {errors: @clinic.errors.full_message}, status: :unprocessable_entity
	    end
	end


end
