require 'rails_helper'

describe "user can deletea a student" do
  context "user links to student index page" do
    context "user clicks delete for first student" do
      scenario "user sees new index page and does not see deleted student" do
        student_1 = Student.create(name: "Penelope")
        student_2 = Student.create(name: "Fred")
        student_3 = Student.create(name: "Lucy")
        visit students_path
        within(".student_#{student_1.id}") do
          click_button "Delete"
        end

        expect(current_path).to eq(students_path)
        expect(page).to_not have_content(student_1.name)
        expect(page).to have_content(student_2.name)
        expect(page).to have_content(student_3.name)
      end
    end
  end
end
