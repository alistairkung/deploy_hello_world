require 'rack/test'
require 'spec_helper'
require './app/app.rb'

RSpec.describe 'Welcome' do
  include Rack::Test::Methods

  def app
    App.new
  end

  describe 'GET /welcome' do
    it 'greets you' do
      get '/welcome'

      expect(last_response.status).to eq(200)
      expect(last_parsed_response['message']).to eq('Hello World!')
    end

    def last_parsed_response
      JSON.parse(last_response.body)
    end
  end
end
