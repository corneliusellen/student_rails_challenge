require 'rails_helper'

describe "user can create new address" do
  context "user links to new address page" do
    context "user fills in new address form with info and submits" do
      scenario "user sees student's show page with new address" do
        student = Student.create(name: "Ellen")
        
        visit new_student_address_path(student)

        fill_in "address[description]", with: "Summer address"
        fill_in "address[street]", with: "2096 Wexford Circle"
        fill_in "address[city]", with: "Wheaton"
        fill_in "address[state]", with: "IL"
        fill_in "address[zip]", with: "60180"
        click_button "Create"

        expect(current_path).to eq(student_path(student))
        expect(page).to have_content("Summer address")
        expect(page).to have_content("2096 Wexford Circle")
        expect(page).to have_content("Wheaton")
        expect(page).to have_content("IL")
        expect(page).to have_content("60180")
      end
    end
  end
end
