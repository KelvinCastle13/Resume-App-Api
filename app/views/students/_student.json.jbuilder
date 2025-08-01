json.extract! student, :id, :first_name, :last_name, :email, :phone_number,
                      :short_bio, :linkedin_url, :twitter_handle,
                      :personal_blog_website_url, :online_resume_url,
                      :github_url, :photo, :created_at, :updated_at, :user_id

json.educations student.educations do |education|
  json.extract! education, :id, :start_date, :end_date, :degree,
                          :university_name, :details, :created_at,
                          :updated_at, :student_id
end

json.experiences student.experiences do |experience|
  json.extract! experience, :id, :start_date, :end_date, :job_title,
                            :company_name, :details, :created_at,
                            :updated_at, :student_id
end

json.projects student.projects do |project|
  json.extract! project, :id, :name, :description, :url,
                         :created_at, :updated_at, :student_id
end

json.skills student.skills do |skill|
  json.extract! skill, :id, :skill_name, :created_at, :updated_at, :student_id
end

