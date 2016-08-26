require 'test_helper'

class ContactsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get contacts_index_url
    assert_response :success
  end

  test "should get new" do
    get contacts_new_url
    assert_response :success
  end

  test "should get edit" do
    get contacts_edit_url
    assert_response :success
  end

end
