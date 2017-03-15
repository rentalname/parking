# lib/parking.rb
class Parking
  attr_reader :count
  def initialize
    @count = 0
  end

  def park
    @count += 1
  end

  # 駐車台数が駐車可能な台数(5)以上の時に`true`
  def fill?
    count >= 5
  end
end
