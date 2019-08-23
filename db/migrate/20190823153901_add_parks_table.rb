class AddParksTable < ActiveRecord::Migration[5.2]
  def change
    create_table :parks do |t|
      t.string :name
      t.string :park_ranger
      t.boolean :open

      t.belongs_to :state, foreign_key: true
    end
  end
end
