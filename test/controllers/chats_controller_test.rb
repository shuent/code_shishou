require 'test_helper'

class ChatsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get chats_create_url
    assert_response :success
  end

  test "should get update" do
    get chats_update_url
    assert_response :success
  end

  test "should get _form" do
    get chats__form_url
    assert_response :success
  end

end
