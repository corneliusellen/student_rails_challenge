require 'rails_helper'

describe "user can view one student" do
  context "user links student show page" do
    scenario "user sees student information" do
      student_1 = Student.create(name: "Penelope")
      student_2 = Student.create(name: "Fred")

      visit student_path(student_1)

      expect(page).to have_content(student_1.name)
      expect(page).to_not have_content(student_2.name)
    end
  end
end
