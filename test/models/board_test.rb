require "test_helper"

class BoardTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "Fotografo should manage boards" do
    @board = Board.new
    assert_not @board.save
  end

end
