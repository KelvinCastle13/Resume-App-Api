class SkillsController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]
  def index
    @skills = Skill.all
    render json: @skills
  end

  def show 
    @skill = Skill.find(params[:id])
    render json: @skill
  end

  def create
    @skill = Skill.create(
      skill_name: params[:skill_name],
      student_id: params[:student_id]
    )

    if @skill.valid?
      render json: @skill
    else
      render json: { errors: @skill.errors.full_messages }
    end
  end

  def update 
    @skill = Skill.find(params[:id])

    @skill.update(
      skill_name: params["skill_name"] || @skill.skill_name,
      student_id: params["student_id"] || @skill.student_id
    )

    if @skill.valid?
      render json: @skill
    else
      render json: { errors: @skill.errors.full_messages }
    end
  end

  def destroy 
    @skill = Skill.find(params[:id])
    @skill.destroy
    render json: { message: "Skill deleted" }
  end
end
