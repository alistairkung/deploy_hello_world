require './app/app.rb'
RSpec.describe "Welcome" do
  def app
    App.new
  end

  describe "GET /welcome" do
    it "returns 200" do
      get "/welcome"
      expect(last_response.status).to eq 200
    end
  end
end

