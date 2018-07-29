class App < Sinatra::Base
  get '/welcome' do
    content_type :json
    {message: 'Hello World!'}.to_json
  end
end
