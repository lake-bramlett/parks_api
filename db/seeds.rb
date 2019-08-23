
class Seed

  def self.begin
    seed = Seed.new
    seed.generate_parks
  end

  def generate_parks
    20.times do |i|
      state = State.create!(
        name: Faker::Address.state
      )
      rand(3...8).times do |index|
        park = state.parks.create!(
          name: Faker::Ancient.primordial,
          park_ranger: Faker::TvShows::Seinfeld.character,
          open: Faker::Boolean.boolean(true_ratio: 0.5)
        )
        state.save
      end
    end
  end
end

Seed.begin
