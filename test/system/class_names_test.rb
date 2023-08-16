require "application_system_test_case"

class ClassNamesTest < ApplicationSystemTestCase
  setup do
    @class_name = class_names(:one)
  end

  test "visiting the index" do
    visit class_names_url
    assert_selector "h1", text: "Class names"
  end

  test "should create class name" do
    visit class_names_url
    click_on "New class name"

    fill_in "Name", with: @class_name.name
    click_on "Create Class name"

    assert_text "Class name was successfully created"
    click_on "Back"
  end

  test "should update Class name" do
    visit class_name_url(@class_name)
    click_on "Edit this class name", match: :first

    fill_in "Name", with: @class_name.name
    click_on "Update Class name"

    assert_text "Class name was successfully updated"
    click_on "Back"
  end

  test "should destroy Class name" do
    visit class_name_url(@class_name)
    click_on "Destroy this class name", match: :first

    assert_text "Class name was successfully destroyed"
  end
end
