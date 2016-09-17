
class Gigasecond
  def self.from(time)
    time + gigaseconds
  end

  def self.gigaseconds
    10**9
  end
end

module BookKeeping
  VERSION = 3
end
