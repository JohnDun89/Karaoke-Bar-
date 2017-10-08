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

  def test_show_balance
    assert_equal(0, @guest.show_balance)
  end

  def test_pay_money
    result_one = @guest.add_money(10)
      assert_equal(10, result_one)
    result_two = @guest.pay_money(5)
    assert_equal(15, result_two)
  end
end
