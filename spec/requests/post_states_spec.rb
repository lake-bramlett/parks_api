require 'rails_helper'

describe "post a state route", :type => :request do

  before do
    post '/v1/states', params: { :name => 'New State'}
  end

  it 'creates a new state' do
    expect(State.count).to eq(1)
  end

  it 'returns a success status' do
    expect(response).to have_http_status(:success)
  end
end
