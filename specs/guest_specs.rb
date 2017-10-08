require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')

class TestGuest < MiniTest::Test

  def setup
    @guest = Guest.new('Ian')
  end

  def  test_guest_name
    assert_equal('Ian', @guest.name)
  end

  def test_add_money_to_guest
    result = @guest.add_money(10)
    assert_equal(10, result)
  end
end
