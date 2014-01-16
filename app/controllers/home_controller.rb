class HomeController < ApplicationController
  def index
    @top10 = Spin.top_10_user
  end
end
