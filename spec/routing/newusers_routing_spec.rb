require "spec_helper"

describe NewusersController do
  describe "routing" do

    it "routes to #index" do
      get("/newusers").should route_to("newusers#index")
    end

    it "routes to #new" do
      get("/newusers/new").should route_to("newusers#new")
    end

    it "routes to #show" do
      get("/newusers/1").should route_to("newusers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/newusers/1/edit").should route_to("newusers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/newusers").should route_to("newusers#create")
    end

    it "routes to #update" do
      put("/newusers/1").should route_to("newusers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/newusers/1").should route_to("newusers#destroy", :id => "1")
    end

  end
end
