require 'rails_helper'

describe "post a state route", :type => :request do

  it 'creates a new state' do
    post '/states', params: {:name => "new state"}
    expect(response).to have_http_status(:success)
  end
end
