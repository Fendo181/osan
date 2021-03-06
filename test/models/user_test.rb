require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "Example User", email: "user@example.com")
  end


  test "値が存在している" do
    assert @user.valid?
  end

  # test "name should be present" do
  #   @user.name = " "
  #   #falseが返ってきて欲しい
  #   assert_not @user.valid?
  # end

  # test "email should be present" do
  #   @user.email = " "
  #   assert_not @user.valid?
  # end

  # test "name should not be too long" do
  #  @user.name = "a"*51
  #  assert_not @user.valid?
  # end

  # test "email should not be too long" do
  #  @user.email = "a"*244 + "@example.com"
  #  assert_not @user.valid?
  # end

  # test "email validaton should reject invalid address" do
  #   #有効じゃないemalアドレス
  #   valid_addresses = %w[user@example,com user_at_foo.org user.name@example.
  #                          foo@bar_baz.com foo@bar+baz.co]
  #   valid_addresses.each do |valid_address|
  #     @user.email = valid_address
  #     assert_not @user.valid?, "#{valid_address.inspect} should be valid"
  #   end
  # end
end
