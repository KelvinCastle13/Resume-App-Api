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
    photo: "https://example.com/photos/alice.jpg"
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
    photo: "https://example.com/photos/bob.jpg"
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
    photo: "https://example.com/photos/clara.jpg"
  }
])

# db/seeds.rb

puts "Seeding data..."

Education.create!([
  {
    start_date: "2018-08",
    end_date: "2022-05",
    degree: "Bachelor of Science in Computer Science",
    university_name: "University of California, Berkeley",
    details: "Focused on software development, data structures, and machine learning."
  },
  {
    start_date: "2023-01",
    end_date: "2023-12",
    degree: "Full Stack Web Development Bootcamp",
    university_name: "General Assembly",
    details: "Built full-stack applications using JavaScript, React, and Ruby on Rails."
  }
])


Experience.create!([
  {
    start_date: "2022-06",
    end_date: "2023-12",
    job_title: "Junior Web Developer",
    company_name: "TechNova Solutions",
    details: "Worked on internal tools using React and Ruby on Rails. Collaborated with a team using Agile practices."
  },
  {
    start_date: "2021-06",
    end_date: "2022-05",
    job_title: "Software Engineering Intern",
    company_name: "Startup Hub",
    details: "Developed a dashboard for client metrics and improved system performance by 20%."
  }
])

Project.create!([
  {
    name: "Portfolio Website",
    description: "A personal website showcasing projects, resume, and contact form.",
    url: "https://myportfolio.com"
  },
  {
    name: "Task Manager App",
    description: "A full-stack CRUD app to manage daily tasks with user authentication.",
    url: "https://github.com/username/task-manager"
  }
])


Skill.create!([
  { skill_name: "JavaScript" },
  { skill_name: "React" },
  { skill_name: "Ruby on Rails" },
  { skill_name: "PostgreSQL" },
  { skill_name: "HTML & CSS" },
  { skill_name: "Git & GitHub" }
])

puts "Seeding complete!"

