require_relative('guest')

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

  def charge_guest(guest,money)
    guest.pay_money(money)             # charging money to a selected guest via guest method to remove funds. 
  end





end
