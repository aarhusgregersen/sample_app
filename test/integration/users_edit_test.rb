require 'test_helper'

class UsersEditTest < ActionDispatch::IntegrationTest
  
  def setup 
  	@user = users(:sheldon)
    log_in_as(@user)
  end

  test "unsuccesful edit" do	
  	get edit_user_path(@user)
  	assert_template 'users/edit'
  	patch user_path(@user), user: { name:  "",
                                    email: "foo@invalid",
                                    password:              "foo",
                                    password_confirmation: "bar" }
  end
end
