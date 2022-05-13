class MusicHistory
  
  def initialize
    @m_list = []
  end

  def list
    @m_list
  end

  def add(song) 
    if @m_list.include? song
      fail 'Song is already in the list'
    elsif song.empty?
      fail 'No song given'
    else
      @m_list << song 
    end
  end
end
