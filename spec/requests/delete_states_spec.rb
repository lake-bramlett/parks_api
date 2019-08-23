require 'rails_helper'

describe "destroy state route", :type => :request do
  State.destroy_all

  it 'destroys a state' do
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
