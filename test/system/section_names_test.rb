require "application_system_test_case"

class SectionNamesTest < ApplicationSystemTestCase
  setup do
    @section_name = section_names(:one)
  end

  test "visiting the index" do
    visit section_names_url
    assert_selector "h1", text: "Section names"
  end

  test "should create section name" do
    visit section_names_url
    click_on "New section name"

    fill_in "Name", with: @section_name.name
    click_on "Create Section name"

    assert_text "Section name was successfully created"
    click_on "Back"
  end

  test "should update Section name" do
    visit section_name_url(@section_name)
    click_on "Edit this section name", match: :first

    fill_in "Name", with: @section_name.name
    click_on "Update Section name"

    assert_text "Section name was successfully updated"
    click_on "Back"
  end

  test "should destroy Section name" do
    visit section_name_url(@section_name)
    click_on "Destroy this section name", match: :first

    assert_text "Section name was successfully destroyed"
  end
end
