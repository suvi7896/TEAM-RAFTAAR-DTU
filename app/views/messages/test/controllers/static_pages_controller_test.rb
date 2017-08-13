require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Playful Minds Academy"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | Playful Minds Academy"
  end

  test "should get forms" do
    get forms_path
    assert_response :success
    assert_select "title", "Forms | Playful Minds Academy"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | Playful Minds Academy"
  end

end
