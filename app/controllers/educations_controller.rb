class EducationsController < ApplicationController
  def index
    @educations = Education.all
    render json: @educations
  end

  def show
    @education = Education.find(params[:id])
    render json: @education
  end

  def create
    @education = Education.create(
      start_date: params[:start_date],
      end_date: params[:end_date],
      degree: params[:degree],
      university_name: params[:university_name],
      details: params[:details]
    )

    if @education.valid?
      render json: @education
    else
      render json: { errors: @education.errors.full_messages }
    end
  end

  def update
    @education = Education.find(params[:id])

    @education.update(
      start_date: params["start_date"] || @education.start_date,
      end_date: params["end_date"] || @education.end_date,
      degree: params["degree"] || @education.degree,
      university_name: params["university_name"] || @education.university_name,
      details: params["details"] || @education.details
    )

    if @education.valid?
      render json: @education
    else
      render json: { errors: @education.errors.full_messages }
    end
  end

  def destroy 
    @education = Education.find(params[:id])
    @education.destroy
    render json: { message: "Education deleted" }
  end
end
