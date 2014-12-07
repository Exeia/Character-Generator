require 'test_helper'

class UserTest < ActiveSupport::TestCase
    def setup
        @user = User.new(name: "Tester" , email:"test@email.com", handle:"The Cat")
        
    end

    test "should be valid" do 
        assert @user.valid?
    end

    test "handle name should be preseent" do
        @user.handle = "    "
        assert_not @user.valid?
    end
end
