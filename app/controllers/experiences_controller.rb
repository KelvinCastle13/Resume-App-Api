
class ExperiencesController < ApplicationController
  def index
    @experiences = Experience.all
    render json: @experiences
  end

  def show
    @experience = Experience.find(params[:id])
    render json: @experience
  end

  def create
    @experience = Experience.create(
      start_date: params[:start_date],
      end_date: params[:end_date],
      job_title: params[:job_title],
      company_name: params[:company_name],
      details: params[:details],
      student_id: params[:student_id]
    )

    if @experience.valid?
      render json: @experience
    else
      render json: { errors: @experience.errors.full_messages }
    end
  end

  def update
    @experience = Experience.find(params[:id])

    @experience.update(
      start_date: params["start_date"] || @experience.start_date,
      end_date: params["end_date"] || @experience.end_date,
      job_title: params["job_title"] || @experience.job_title,
      company_name: params["company_name"] || @experience.company_name,
      details: params["details"] || @experience.details,
      student_id: params["student_id"] || @experience.student_id
    )

    if @experience.valid?
      render json: @experience
    else
      render json: { errors: @experience.errors.full_messages }
    end
  end

  def destroy
    @experience = Experience.find(params[:id])
    @experience.destroy
    render json: { message: "Experience deleted" }
  end
end
