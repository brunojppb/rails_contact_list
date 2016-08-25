require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get static_pages_index_url
    assert_response :success
  end

  test "should get sobre" do
    get static_pages_sobre_url
    assert_response :success
  end

  test "should get contato" do
    get static_pages_contato_url
    assert_response :success
  end

end
