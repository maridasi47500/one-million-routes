require "application_system_test_case"

class MyprogramsTest < ApplicationSystemTestCase
  setup do
    @myprogram = myprograms(:one)
  end

  test "visiting the index" do
    visit myprograms_url
    assert_selector "h1", text: "Myprograms"
  end

  test "should create myprogram" do
    visit myprograms_url
    click_on "New myprogram"

    fill_in "Description", with: @myprogram.description
    fill_in "Framework", with: @myprogram.framework_id
    fill_in "Title", with: @myprogram.title
    fill_in "User", with: @myprogram.user_id
    click_on "Create Myprogram"

    assert_text "Myprogram was successfully created"
    click_on "Back"
  end

  test "should update Myprogram" do
    visit myprogram_url(@myprogram)
    click_on "Edit this myprogram", match: :first

    fill_in "Description", with: @myprogram.description
    fill_in "Framework", with: @myprogram.framework_id
    fill_in "Title", with: @myprogram.title
    fill_in "User", with: @myprogram.user_id
    click_on "Update Myprogram"

    assert_text "Myprogram was successfully updated"
    click_on "Back"
  end

  test "should destroy Myprogram" do
    visit myprogram_url(@myprogram)
    click_on "Destroy this myprogram", match: :first

    assert_text "Myprogram was successfully destroyed"
  end
end
