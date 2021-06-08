require './lib/person'
require './lib/craft'
require './lib/event'

RSpec.describe Person do
  it "exists and has attributes" do
    person = Person.new({name: 'Hector', interests: ['sewing', 'millinery', 'drawing']})

    expect(person).to be_a(Person)
    expect(person.name).to eq("Hector")
    expect(person.interests).to eq(["sewing", "millinery", "drawing"])
    expect(person.supplies).to eq({})
  end
end
