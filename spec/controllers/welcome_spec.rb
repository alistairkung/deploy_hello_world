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

    it "returns hello world" do
      get "/welcome"
      message = JSON.parse(last_response.body).fetch('message')
      p JSON.parse(last_response.body)
      expect(message).to eq "Hello World!"
    end
  end
end

