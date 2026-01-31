require "test_helper"

class MyroutesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @myroute = myroutes(:one)
  end

  test "should get index" do
    get myroutes_url
    assert_response :success
  end

  test "should get new" do
    get new_myroute_url
    assert_response :success
  end

  test "should create myroute" do
    assert_difference("Myroute.count") do
      post myroutes_url, params: { myroute: { description: @myroute.description, myprogram_id: @myroute.myprogram_id, myurl: @myroute.myurl, title: @myroute.title } }
    end

    assert_redirected_to myroute_url(Myroute.last)
  end

  test "should show myroute" do
    get myroute_url(@myroute)
    assert_response :success
  end

  test "should get edit" do
    get edit_myroute_url(@myroute)
    assert_response :success
  end

  test "should update myroute" do
    patch myroute_url(@myroute), params: { myroute: { description: @myroute.description, myprogram_id: @myroute.myprogram_id, myurl: @myroute.myurl, title: @myroute.title } }
    assert_redirected_to myroute_url(@myroute)
  end

  test "should destroy myroute" do
    assert_difference("Myroute.count", -1) do
      delete myroute_url(@myroute)
    end

    assert_redirected_to myroutes_url
  end
end
