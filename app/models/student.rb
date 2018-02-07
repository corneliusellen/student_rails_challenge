class Student < ApplicationRecord
  has_many :addresses
  has_many :courses, through: :StudentCourses
  has_many :student_courses
end
