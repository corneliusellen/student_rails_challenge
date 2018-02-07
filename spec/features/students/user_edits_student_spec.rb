require 'rails_helper'

describe "user can edit a student" do
  context "user links to edit form" do
    context "user fills in form and submits" do
      scenario "user sees student new info" do
        student = Student.create(name: "Mika")
        visit edit_student_path(student)

        fill_in "student[name]", with: "Mica"
        click_button "Update"

        expect(current_path).to eq(student_path(student))
        expect(page).to have_content("Mica")
        expect(page).to_not have_content("Mika")
      end
    end
  end
end
