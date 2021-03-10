module ToursHelper
  def checked(area)
    @tour.convenient.nil? ? false : @tour.convenient.match(area)
  end
  def checked2(area)
    @tour.furniture.nil? ? false : @tour.furniture.match(area)
  end
end
