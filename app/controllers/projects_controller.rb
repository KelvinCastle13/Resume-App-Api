class ProjectsController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]
  def index
    @projects = Project.all
    render json: @projects
  end

  def show
    @project = Project.find(params[:id])
    render json: @project
  end

  def create
    @project = Project.create(
      name: params[:name],
      description: params[:description],
      url: params[:url]
      student_id: params[:student_id]
    )

    if @project.valid?
      render json: @project
    else
      render json: { errors: @project.errors.full_messages }
    end
  end

  def update
    @project = Project.find(params[:id])

    @project.update(
      name: params["name"] || @project.name,
      description: params["description"] || @project.description,
      url: params["url"] || @project.url,
      student_id: params["student_id"] || @project.student_id
    )

    if @project.valid?
      render json: @project
    else
      render json: { errors: @project.errors.full_messages }
    end
  end

  def destroy 
    @project = Project.find(params[:id])
    @project.destroy
    render json: { message: "Project deleted" }
  end
end
