require 'rails_helper'

describe "user can view all students" do
  context "user links to student index page" do
    scenario "user sees all students' information" do
      student_1 = Student.create(name: "Penelope")
      student_2 = Student.create(name: "Fred")
      student_3 = Student.create(name: "Lucy")

      visit students_path

      expect(page).to have_content(student_1.name)
      expect(page).to have_content(student_2.name)
      expect(page).to have_content(student_3.name)
    end
  end
end
