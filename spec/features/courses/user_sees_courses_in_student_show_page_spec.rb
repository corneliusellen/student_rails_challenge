require 'rails_helper'

describe "user sees courses in student show page" do
  context "user links to student show page" do
    scenario "user sees student's courses" do
      student = Student.create!(name: "Ellen")
      student.courses.create!(name: "Logic")

      visit student_path(student)

      expect(page).to have_content("Logic")
    end
  end
end
