class Park < ApplicationRecord
  belongs_to :state

  def self.random
     ActiveRecord::Base.connection.execute("SELECT * FROM parks ORDER BY random() LIMIT(1)").first
  end
end
