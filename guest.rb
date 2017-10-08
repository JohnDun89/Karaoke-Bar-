class Guest

  def initialize(name)
    @name = name
    @money = 0
    @favourite_song = []
  end

  def name
    return @name
  end

  def show_balance
    return @money
  end

  def add_money(integer_amount)
    @money += integer_amount
    return @money
  end

  def pay_money(integer_amount)
    @money -= integer_amount
  end

  def add_favourite_song(song)
    @favourite_song << song
    return @favourite_song
  end

  def hear_favourite_song(song_playing)
    puts @favourite_song
    puts song_playing
    if @favourite_song == song_playing
      return 'Woo Hoo Alright'
    else return 'No'
    end
  end



end
