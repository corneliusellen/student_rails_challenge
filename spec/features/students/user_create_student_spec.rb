require 'rails_helper'

describe "user can create student" do
  context "user links to create student form" do
    context "user fills in student info and submits" do
      scenario "user sees student show page with info" do
        visit new_student_path
        fill_in "student[name]", with: "Ellen"
        click_button "Create"

        expect(current_path).to eq(student_path(Student.last))
        expect(page).to have_content("Ellen") 
      end
    end
  end
end
