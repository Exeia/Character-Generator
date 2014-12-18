require 'test_helper'

class UserTest < ActiveSupport::TestCase
    def setup
        @user = User.new(name: "Tester" , email:"test@email.com", handle:"The Cat",
                        password: "foobar", password_confirmation: "foobar")
        
    end

    test "should be valid" do 
        assert @user.valid?
    end

    test "handle name should be preseent" do
        @user.handle = "    "
        assert_not @user.valid?
    end
    test "email validation should accept valid addresses" do
        valid_addresses = %w[TEST@email.com USER@foo.COM]
        valid_addresses.each do |valid_address|
            @user.email = valid_address 
            assert @user.valid?, "#{valid_address.inspect} should be valid"
        end
    end

    test "email validation should reject invalid addresses" do
        invalid_addresses =%w[test@email.com USER@foo.COM]
        invalid_addresses.each do |invalid_address|
            @user.email = invalid_address
            assert_not @user.valid?, "#{invalid_address.inspect} should be invalid"
        end
    end

    test "email uniqueness" do 
        duplicate_user = @user.dup
        duplicate_user.email = @user.email.upcase
        @user.save
        assert_not duplicate_user.valid?
    end
    test "handle uniqueness" do 
        duplicate_user = @user.dup
        @user.save
        assert_not duplicate_user.valid?
    end 

    test "password have min length" do
        @user.password = @user.password_confirmation = "a" * 5
        assert_not @user.valid?
    end
end
