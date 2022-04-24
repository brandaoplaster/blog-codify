require "rails_helper"

RSpec.describe Admin::DashboardsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/admin/dashboards").to route_to("admin/dashboards#index")
    end
  end
end
