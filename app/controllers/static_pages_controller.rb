class StaticPagesController < ApplicationController
  include ApplicationHelper

  def home
    @country_code = get_country
    if logged_in?
      @micropost = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def help
  end
  
  def about
  end

  private

  def get_country
    data = GeoIP.new(geoip_path).country(remote_ip)
    data[:country_code2]
  end

  def remote_ip
    if request.remote_ip == "::1"
      "67.169.73.113"
    else
      request.remote_ip
    end
  end
end
