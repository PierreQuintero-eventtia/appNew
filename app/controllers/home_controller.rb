class HomeController < ApplicationController
    skip_before_action :authenticate_user!
  def index
  end

  def contact
  end

  def terms
  end

  def about_us
  end
end
