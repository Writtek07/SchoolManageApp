require "test_helper"

class SectionNamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @section_name = section_names(:one)
  end

  test "should get index" do
    get section_names_url
    assert_response :success
  end

  test "should get new" do
    get new_section_name_url
    assert_response :success
  end

  test "should create section_name" do
    assert_difference("SectionName.count") do
      post section_names_url, params: { section_name: { name: @section_name.name } }
    end

    assert_redirected_to section_name_url(SectionName.last)
  end

  test "should show section_name" do
    get section_name_url(@section_name)
    assert_response :success
  end

  test "should get edit" do
    get edit_section_name_url(@section_name)
    assert_response :success
  end

  test "should update section_name" do
    patch section_name_url(@section_name), params: { section_name: { name: @section_name.name } }
    assert_redirected_to section_name_url(@section_name)
  end

  test "should destroy section_name" do
    assert_difference("SectionName.count", -1) do
      delete section_name_url(@section_name)
    end

    assert_redirected_to section_names_url
  end
end
