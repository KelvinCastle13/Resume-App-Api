User.create!([
  {
    name: "Alice Johnson",
    email: "alice.johnson@example.com",
    password: "alicejohnson",
    password_confirmation: "alicejohnson"
},
  {
    name: "Bob Smith",
    email: "bob.smith@example.com",
    password: "bobsmith",
    password_confirmation: "bobsmith"
  },
  {
    name: "Clara Nguyen",
    email: "clara.nguyen@example.com",
    password: "claranguyen",
    password_confirmation: "claranguyen"
  }
])

Student.create!([
  {
    first_name: "Alice",
    last_name: "Johnson",
    email: "alice.johnson@example.com",
    phone_number: "123-456-7890",
    short_bio: "Aspiring software engineer with a passion for web development and open-source contributions.",
    linkedin_url: "https://www.linkedin.com/in/alicejohnson",
    twitter_handle: "@alicecodes",
    personal_blog_website_url: "https://alicejohnson.dev",
    online_resume_url: "https://alicejohnson.dev/resume.pdf",
    github_url: "https://github.com/alicejohnson",
    photo: "https://example.com/photos/alice.jpg",
    user_id: 1
  },
  {
    first_name: "Bob",
    last_name: "Smith",
    email: "bob.smith@example.com",
    phone_number: "987-654-3210",
    short_bio: "Full-stack developer with a background in design and a love for teaching code.",
    linkedin_url: "https://www.linkedin.com/in/bobsmith",
    twitter_handle: "@bobsmithdev",
    personal_blog_website_url: "https://bobsmith.io",
    online_resume_url: "https://bobsmith.io/resume",
    github_url: "https://github.com/bobsmith",
    photo: "https://example.com/photos/bob.jpg",
    user_id: 2
  },
  {
    first_name: "Clara",
    last_name: "Nguyen",
    email: "clara.nguyen@example.com",
    phone_number: "555-123-4567",
    short_bio: "Machine learning enthusiast and back-end developer focused on data-driven apps.",
    linkedin_url: "https://www.linkedin.com/in/claranguyen",
    twitter_handle: "@claracodes",
    personal_blog_website_url: "https://claracodes.dev",
    online_resume_url: "https://claracodes.dev/resume.pdf",
    github_url: "https://github.com/claranguyen",
    photo: "https://example.com/photos/clara.jpg",
    user_id: 3
  }
])

# db/seeds.rb

puts "Seeding data..."

# Assuming Students have already been created above this in the file:
# students = Student.all or explicitly:
alice = Student.first
bob = Student.second
clara = Student.third

Education.create!([
  {
    start_date: "2018-08",
    end_date: "2022-05",
    degree: "Bachelor of Science in Computer Science",
    university_name: "University of California, Berkeley",
    details: "Focused on software development, data structures, and machine learning.",
    student_id: alice.id
  },
  {
    start_date: "2023-01",
    end_date: "2023-12",
    degree: "Full Stack Web Development Bootcamp",
    university_name: "General Assembly",
    details: "Built full-stack applications using JavaScript, React, and Ruby on Rails.",
    student_id: bob.id
  }
])

Experience.create!([
  {
    start_date: "2022-06",
    end_date: "2023-12",
    job_title: "Junior Web Developer",
    company_name: "TechNova Solutions",
    details: "Worked on internal tools using React and Ruby on Rails. Collaborated with a team using Agile practices.",
    student_id: alice.id
  },
  {
    start_date: "2021-06",
    end_date: "2022-05",
    job_title: "Software Engineering Intern",
    company_name: "Startup Hub",
    details: "Developed a dashboard for client metrics and improved system performance by 20%.",
    student_id: bob.id
  }
])

Project.create!([
  {
    name: "Portfolio Website",
    description: "A personal website showcasing projects, resume, and contact form.",
    url: "https://myportfolio.com",
    student_id: alice.id
  },
  {
    name: "Task Manager App",
    description: "A full-stack CRUD app to manage daily tasks with user authentication.",
    url: "https://github.com/username/task-manager",
    student_id: clara.id
  }
])

Skill.create!([
  { skill_name: "JavaScript", student_id: alice.id },
  { skill_name: "React", student_id: alice.id },
  { skill_name: "Ruby on Rails", student_id: bob.id },
  { skill_name: "PostgreSQL", student_id: bob.id },
  { skill_name: "HTML & CSS", student_id: clara.id },
  { skill_name: "Git & GitHub", student_id: clara.id }
])
