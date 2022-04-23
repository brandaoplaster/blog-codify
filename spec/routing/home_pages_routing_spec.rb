require "rails_helper"

RSpec.describe HomePagesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/home_pages").to route_to("home_pages#index")
    end

    it "routes to #show" do
      expect(get: "/home_pages/1").to route_to("home_pages#show", id: "1")
    end
  end
end
