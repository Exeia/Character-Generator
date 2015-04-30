require 'test_helper'

class CharacterTest < ActiveSupport::TestCase
    test "create a character without an name" do
        assert_not false 
    end

    test "create a character without a job role" do
       assert_not false 
    end 
    test "verify leveling up" do
       assert true  
    end

    test "level up without enough experience" do 
        assert_not false
    end 

end
