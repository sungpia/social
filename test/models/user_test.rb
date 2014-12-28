require 'test_helper'

class UserTest < ActiveSupport::TestCase
   def setup
		@user1 = users(:user1)
		@user2 = users(:user2)
  end
	test "following? should be true" do
		@user1.follow!(@user2)
		assert @user1.following?(@user2)
	end
end
