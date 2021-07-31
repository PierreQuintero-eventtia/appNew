# frozen_string_literal: true

class HomeController < ApplicationController
  skip_before_action :authenticate_user!, except: [:dashboard]
  def index; end

  def contact; end

  def terms; end

  def about_us; end

  def dashboard
    unless current_user.admin?
      redirect_to root_path, notice: "Access blocked"
    end
    @users = User.all
  end
end
