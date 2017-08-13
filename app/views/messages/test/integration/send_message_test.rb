require 'test_helper'

class SendMessageTest < ActionDispatch::IntegrationTest
  
  test "invalid message information" do
    get contact_path
      post contact_path, params: { message: { name:  "",
                                              email: "user@invalid",
                                              subject: "",
                                              content: "" } }
    assert_template 'messages/new'
  end

  test "valid message information" do
    get contact_path
      post contact_path, params: { message: { name:  "Example User",
                                              email: "user@example.com",
                                              subject: "hi",
                                              content: "lorem ipsum" } }
    follow_redirect!
    assert_template 'messages/new'
  end
end