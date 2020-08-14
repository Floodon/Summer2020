require 'test_helper'

class ArtisteControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get artiste_index_url
    assert_response :success
  end

  test "should get show" do
    get artiste_show_url
    assert_response :success
  end

  test "should get new" do
    get artiste_new_url
    assert_response :success
  end

  test "should get edit" do
    get artiste_edit_url
    assert_response :success
  end

  test "should get update" do
    get artiste_update_url
    assert_response :success
  end

  test "should get create" do
    get artiste_create_url
    assert_response :success
  end

  test "should get destroy" do
    get artiste_destroy_url
    assert_response :success
  end

end
