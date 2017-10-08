class Room

  def initialize(name)
    @name = name
    @songs = []
    @guests = []
  end

  def name
    return @name
  end

  def playlist
    return @songs
  end

  def add_song(song)
    @songs << song
  end

  def number_of_ocupants
    return @guests.count
  end

  def add_guest(guest)

    if @guests.count >= 8
      return "Sorry room is full."
    else @guests.count <= 8
      @guests.push(guest)
    end
  end

  def remove_guest(guest)
    @guests.delete(guest)
  end





end
