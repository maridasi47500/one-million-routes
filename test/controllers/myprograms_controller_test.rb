require "test_helper"

class MyprogramsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @myprogram = myprograms(:one)
  end

  test "should get index" do
    get myprograms_url
    assert_response :success
  end

  test "should get new" do
    get new_myprogram_url
    assert_response :success
  end

  test "should create myprogram" do
    assert_difference("Myprogram.count") do
      post myprograms_url, params: { myprogram: { description: @myprogram.description, framework_id: @myprogram.framework_id, title: @myprogram.title, user_id: @myprogram.user_id } }
    end

    assert_redirected_to myprogram_url(Myprogram.last)
  end

  test "should show myprogram" do
    get myprogram_url(@myprogram)
    assert_response :success
  end

  test "should get edit" do
    get edit_myprogram_url(@myprogram)
    assert_response :success
  end

  test "should update myprogram" do
    patch myprogram_url(@myprogram), params: { myprogram: { description: @myprogram.description, framework_id: @myprogram.framework_id, title: @myprogram.title, user_id: @myprogram.user_id } }
    assert_redirected_to myprogram_url(@myprogram)
  end

  test "should destroy myprogram" do
    assert_difference("Myprogram.count", -1) do
      delete myprogram_url(@myprogram)
    end

    assert_redirected_to myprograms_url
  end
end
