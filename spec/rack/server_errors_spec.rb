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

      last_response.status.should eq 500
      last_response.body.should eq expected
    end
  end

end
