require "application_system_test_case"

class MyroutesTest < ApplicationSystemTestCase
  setup do
    @myroute = myroutes(:one)
  end

  test "visiting the index" do
    visit myroutes_url
    assert_selector "h1", text: "Myroutes"
  end

  test "should create myroute" do
    visit myroutes_url
    click_on "New myroute"

    fill_in "Description", with: @myroute.description
    fill_in "Myprogram", with: @myroute.myprogram_id
    fill_in "Myurl", with: @myroute.myurl
    fill_in "Title", with: @myroute.title
    click_on "Create Myroute"

    assert_text "Myroute was successfully created"
    click_on "Back"
  end

  test "should update Myroute" do
    visit myroute_url(@myroute)
    click_on "Edit this myroute", match: :first

    fill_in "Description", with: @myroute.description
    fill_in "Myprogram", with: @myroute.myprogram_id
    fill_in "Myurl", with: @myroute.myurl
    fill_in "Title", with: @myroute.title
    click_on "Update Myroute"

    assert_text "Myroute was successfully updated"
    click_on "Back"
  end

  test "should destroy Myroute" do
    visit myroute_url(@myroute)
    click_on "Destroy this myroute", match: :first

    assert_text "Myroute was successfully destroyed"
  end
end
