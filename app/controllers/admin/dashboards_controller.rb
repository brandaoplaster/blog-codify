class Admin::DashboardsController < ApplicationController
  layout "dashboard_base"
  before_action :authenticate_user!

  def index
  end
end
