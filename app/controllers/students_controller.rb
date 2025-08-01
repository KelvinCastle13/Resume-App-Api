class StudentsController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]
  def index
    if current_user
      @student = current_user.student
      render :show
    else
      @students = Student.all
      render :index
    end
  end

  def show
    if current_user
      @student = current_user.student
    else
      @student = Student.find(params["id"])
    end
    render :show
  end

  def create
    @student = Student.create(
    first_name: params["first_name"],
    last_name: params["last_name"],
    email: params["email"],
    phone_number: params["phone_number"],
    short_bio: params["short_bio"],
    linkedin_url: params["linkedin_url"],
    twitter_handle: params["twitter_handle"],
    personal_blog_website_url: params["personal_blog_website_url"],
    online_resume_url: params["online_resume_url"],
    github_url: params["github_url"],
    photo: params["photo"],
    user_id: current_user.id
    )

    render json: @student
  end

  def update
    @student = Student.find(params["id"])

    @student.update(
    first_name: params["first_name"] || @student.first_name,
    last_name: params["last_name"] || @student.last_name,
    email: params["email"] || @student.email,
    phone_number: params["phone_number"] || @student.phone_number,
    short_bio: params["short_bio"] || @student.short_bio,
    linkedin_url: params["linkedin_url"] || @student.linkedin_url,
    twitter_handle: params["twitter_handle"] || @student.twitter_handle,
    personal_blog_website_url: params["personal_blog_website_url"] || @student.personal_blog_website_url,
    online_resume_url: params["online_resume_url"] || @student.online_resume_url,
    github_url: params["github_url"] || @student.github_url,
    photo: params["photo"] || @student.photo,
    user_id: @student.user_id
    )

    render json: { message: "Student Updated!" }
  end

  def destroy
    @student = Student.find(params["id"])

    @student.destroy

    render json: { message: "Student DESTROYED!!!" }
  end
end
