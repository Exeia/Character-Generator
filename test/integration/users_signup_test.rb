require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
    test "invalid signup information" do 
        get signup_path
        assert_no_difference 'User.count', 1 do 
            post users_path, user: { name: "",
                                     email: "user@invalid",
                                     handle: "Hello",
                                     password:	"foo",
                                     password_confirmation: "bar"}
        end
        assert_template 'user/new'
        assert is_logged_in?
    end
end
