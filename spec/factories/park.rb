require 'rails_helper'

FactoryBot.define do
   factory :park do
     name {"Park"}
     park_ranger {"Fred"}
     open {true}
   end
end
