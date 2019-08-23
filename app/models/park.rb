class Park < ApplicationRecord
  belongs_to :state
  scope :search, -> (park_name) { where("name like ?", "%#{park_name}%") }

  def self.random
     ActiveRecord::Base.connection.execute("SELECT * FROM parks ORDER BY random() LIMIT(1)").first
  end

end
