require "test_helper"

class SignboardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @signboard = signboards(:one)
  end

  test "should get index" do
    get signboards_url
    assert_response :success
  end

  test "should get new" do
    get new_signboard_url
    assert_response :success
  end

  test "should create signboard" do
    assert_difference('Signboard.count') do
      post signboards_url, params: { signboard: { address: @signboard.address, height: @signboard.height, name: @signboard.name, owner_id: @signboard.owner_id, width: @signboard.width } }
    end

    assert_redirected_to signboard_url(Signboard.last)
  end

  test "should show signboard" do
    get signboard_url(@signboard)
    assert_response :success
  end

  test "should get edit" do
    get edit_signboard_url(@signboard)
    assert_response :success
  end

  test "should update signboard" do
    patch signboard_url(@signboard), params: { signboard: { address: @signboard.address, height: @signboard.height, name: @signboard.name, owner_id: @signboard.owner_id, width: @signboard.width } }
    assert_redirected_to signboard_url(@signboard)
  end

  test "should destroy signboard" do
    assert_difference('Signboard.count', -1) do
      delete signboard_url(@signboard)
    end

    assert_redirected_to signboards_url
  end
end
