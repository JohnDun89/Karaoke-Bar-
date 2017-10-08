require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')
require_relative('../room')
require_relative('../song')

class TestGuest < MiniTest::Test

  def setup
    @guest = Guest.new('Ian')
    @unity = Song.new('Unity','Rick James')
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
    assert_equal(5, result_two)
  end

  def test_add_favourite_song
    result = @guest.add_favourite_song(['Rick James','Unity'])
    assert_equal(result, [['Rick James','Unity']])              # testing for two '[' as there is an array of potential fav songs.
  end

  def test_hear_favourite_song
    @guest.add_favourite_song(['Rick James','Unity'])
    result = @guest.hear_favourite_song([['Rick James','Unity']])
    assert_equal('Woo Hoo Alright', result)
  end


  # def test_favourite_song_with_currently_playing
  #   room = Room.new('Room one')
  #   room.add_song(@unity)
  #   assert_equal(room.playlist, [@unity])
  #
  #   puts room.currently_playing
  #
  #   result = @guest.hear_favourite_song(room.currently_playing)
  #
  #   assert_equal('Woo Hoo Alright', [result])
  #
  #
  # end
end
