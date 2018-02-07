class Course < ApplicationRecord
  has_many :students, through: :StudentCourses
  has_many :student_courses
end
