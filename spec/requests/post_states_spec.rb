require 'rails_helper'

describe "post a state route", :type => :request do

  before do
    post '/v1/states', params: { :name => 'New State'}
  end

  it 'returns a creates status' do
    expect(response).to have_http_status(:created)
  end
end
