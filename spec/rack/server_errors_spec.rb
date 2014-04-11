require_relative '../spec_helper'

describe Rack::ServerErrors do
  include Rack::Test::Methods

  class MockedApp < Sinatra::Base
    get '/error' do
      fail
    end
  end

  def app
    @app ||= Rack::ServerErrors.new(MockedApp)
  end

  describe 'call' do
    let(:expected){ '{"message":"unexpected error"}' }

    it 'returns an error message and status 500' do
      get '/error'

      expect(last_response.status).to eq 500
      expect(last_response.body).to eq expected
    end
  end

end
