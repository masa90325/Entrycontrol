require 'test_helper'

class EntryControlsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @entry_control = entry_controls(:one)
  end

  test "should get index" do
    get entry_controls_url
    assert_response :success
  end

  test "should get new" do
    get new_entry_control_url
    assert_response :success
  end

  test "should create entry_control" do
    assert_difference('EntryControl.count') do
      post entry_controls_url, params: { entry_control: { entry: @entry_control.entry, user_id: @entry_control.user_id } }
    end

    assert_redirected_to entry_control_url(EntryControl.last)
  end

  test "should show entry_control" do
    get entry_control_url(@entry_control)
    assert_response :success
  end

  test "should get edit" do
    get edit_entry_control_url(@entry_control)
    assert_response :success
  end

  test "should update entry_control" do
    patch entry_control_url(@entry_control), params: { entry_control: { entry: @entry_control.entry, user_id: @entry_control.user_id } }
    assert_redirected_to entry_control_url(@entry_control)
  end

  test "should destroy entry_control" do
    assert_difference('EntryControl.count', -1) do
      delete entry_control_url(@entry_control)
    end

    assert_redirected_to entry_controls_url
  end
end
