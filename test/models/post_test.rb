require "test_helper"

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "Post should have a tag" do
    @post = Post.new
    assert_not @post.save
  end

end
