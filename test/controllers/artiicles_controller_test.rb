require "test_helper"

class ArtiiclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artiicle = artiicles(:one)
  end

  test "should get index" do
    get artiicles_url
    assert_response :success
  end

  test "should get new" do
    get new_artiicle_url
    assert_response :success
  end

  test "should create artiicle" do
    assert_difference("Artiicle.count") do
      post artiicles_url, params: { artiicle: { description: @artiicle.description, title: @artiicle.title } }
    end

    assert_redirected_to artiicle_url(Artiicle.last)
  end

  test "should show artiicle" do
    get artiicle_url(@artiicle)
    assert_response :success
  end

  test "should get edit" do
    get edit_artiicle_url(@artiicle)
    assert_response :success
  end

  test "should update artiicle" do
    patch artiicle_url(@artiicle), params: { artiicle: { description: @artiicle.description, title: @artiicle.title } }
    assert_redirected_to artiicle_url(@artiicle)
  end

  test "should destroy artiicle" do
    assert_difference("Artiicle.count", -1) do
      delete artiicle_url(@artiicle)
    end

    assert_redirected_to artiicles_url
  end
end
