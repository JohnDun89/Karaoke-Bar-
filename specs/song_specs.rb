require('minitest/autorun')
require('minitest/rg')
require_relative('../song')

class TestSong < MiniTest::Test

 def setup
    @jailbreak = Song.new('Jailbreak', 'Thin Lizzy')
 end


 def test_song_title
   result = @jailbreak.title
   assert_equal('Jailbreak', result)
 end

 def test_artist
   result = @jailbreak.artist
   assert_equal('Thin Lizzy', result)
 end
end
