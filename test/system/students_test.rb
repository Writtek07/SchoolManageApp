require "application_system_test_case"

class StudentsTest < ApplicationSystemTestCase
  setup do
    @student = students(:one)
  end

  test "visiting the index" do
    visit students_url
    assert_selector "h1", text: "Students"
  end

  test "should create student" do
    visit students_url
    click_on "New student"

    fill_in "Admission number", with: @student.admission_number
    fill_in "Date of admission", with: @student.date_of_admission
    fill_in "Dob", with: @student.dob
    fill_in "Father name", with: @student.father_name
    fill_in "First name", with: @student.first_name
    fill_in "Last name", with: @student.last_name
    fill_in "Mothers name", with: @student.mothers_name
    fill_in "Phone number", with: @student.phone_number
    click_on "Create Student"

    assert_text "Student was successfully created"
    click_on "Back"
  end

  test "should update Student" do
    visit student_url(@student)
    click_on "Edit this student", match: :first

    fill_in "Admission number", with: @student.admission_number
    fill_in "Date of admission", with: @student.date_of_admission
    fill_in "Dob", with: @student.dob
    fill_in "Father name", with: @student.father_name
    fill_in "First name", with: @student.first_name
    fill_in "Last name", with: @student.last_name
    fill_in "Mothers name", with: @student.mothers_name
    fill_in "Phone number", with: @student.phone_number
    click_on "Update Student"

    assert_text "Student was successfully updated"
    click_on "Back"
  end

  test "should destroy Student" do
    visit student_url(@student)
    click_on "Destroy this student", match: :first

    assert_text "Student was successfully destroyed"
  end
end
