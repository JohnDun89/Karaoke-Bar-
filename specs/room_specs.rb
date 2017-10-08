require('minitest/autorun')
require('minitest/rg')
require_relative('../room')
require_relative('../song')
require_relative('../guest')

class TestRoom < MiniTest::Test


  def setup
    @room = Room.new('Room One')
    @jailbreak = Song.new('Jailbreak','Thin Lizzy')
    @unity = Song.new('Unity','Rick James')
    @guest1 = Guest.new('Spud')
    @guest2 = Guest.new('Tommy')
    @guest3 = Guest.new('Renton')
    @guest4 = Guest.new('Begbie')
    @guest5 = Guest.new('Sick Boy')

  end

  def test_room_name
    result = @room.name
    assert_equal('Room One', result)
  end

  def test_show_playlist
    result = @room.playlist

    assert_equal([], result)
  end

  def test_add_song_to_playlist
    result = @room.add_song(@song)
    assert_equal([@song], result)
  end

  def test_add_guest_to_room
    result = @room.add_guest(@guest1)
    expected = [@guest1]
    assert_equal(result, expected)
  end

   def test_room_is_full
     full_room = Room.new('room_two')
     full_room.add_guest([@guest1])
     full_room.add_guest([@guest2])
     full_room.add_guest([@guest3])
     full_room.add_guest([@guest4])
     full_room.add_guest([@guest5])
     full_room.add_guest([@guest1])
     full_room.add_guest([@guest2])
     full_room.add_guest([@guest3])

    #  result = full_room.number_of_ocupants
    #  assert_equal(result, 8)
      result_2 = full_room.add_guest([@guest3])

      assert_equal(result_2, "Sorry room is full.")
   end


  def test_remove_guest_from_room
    room_three = Room.new('room_three')
      result = room_three.add_guest([@guest1,@guest2])
        expected = [[@guest1,@guest2]]
          assert_equal(result, expected)

    room_three.remove_guest(@guest1)
      result_2 = room_three.number_of_ocupants
        assert_equal(result_2, 1)
  end

end
