# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts '🌱 Seeding database...'

# Clear existing data (safe order)
LessonProgress.destroy_all
Lesson.destroy_all
Course.destroy_all
User.destroy_all

# ---- USERS ----
admin = User.create!(
  email: 'admin@example.com',
  password: 'password',
  role: :admin
)

student = User.create!(
  email: 'student@example.com',
  password: 'password',
  role: :student
)

puts "✅ Users created"

# ---- COURSE ----
course = Course.create!(
  title: 'Full-Stack Web Development with Ruby on Rails',
  description: 'A beginner-friendly bootcamp for people with zero programming experience.',
  published: true
)

puts "✅ Course created"

# ---- LESSONS ----
lessons = [
  {
    title: 'Welcome to the Bootcamp',
    content: 'What this course is about and how to succeed.',
    position: 1,
    free: true
  },
  {
    title: 'How the Web Works',
    content: 'Browser, server, and database explained in simple terms.',
    position: 2,
    free: true
  },
  {
    title: 'Installing Ruby and Rails',
    content: 'Step-by-step installation guide.',
    position: 3,
    free: false
  },
  {
    title: 'Your First Rails App',
    content: 'Create your first Rails application.',
    position: 4,
    free: false
  }
]

lessons.each do |lesson_attrs|
  course.lessons.create!(lesson_attrs)
end

puts "✅ Lessons created"

# ---- PROGRESS ----
LessonProgress.create!(
  user: student,
  lesson: course.lessons.first,
  completed_at: Time.current
)

puts "✅ Lesson progress created"

puts '🌱 Seeding complete!'
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?