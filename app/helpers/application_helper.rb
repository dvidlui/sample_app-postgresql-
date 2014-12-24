module ApplicationHelper
  
  # Returns the full title on a per-page basis
  def full_title(page_title = '')
    base_title = 'Ruby on Rails Tutorial Sample App'
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end  
  end

  # Returns "GeoIP.dat" file path
  def geoip_path
    "#{Rails.root}/db/res/GeoIP.dat"
  end
end
