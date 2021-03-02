module ApplicationHelper
  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "Nơi nghỉ dưỡng, nhà, trải nghiệm và địa điểm vui chơi - Airbnb"
    if page_title.empty?
      base_title
    else
      page_title + "  •  Airbnb"
    end
  end
end
