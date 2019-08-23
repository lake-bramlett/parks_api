require 'rails_helper'

describe Park, type: :model do
  it { should validate_presence_of :name }
  it { should validate_presence_of :park_ranger }
  it do
    should validate_inclusion_of(:open).in_array([true, false])
   end
end
