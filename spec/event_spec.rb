require './lib/person'
require './lib/craft'
require './lib/event'

RSpec.describe Event do
  it "exists and has attributes" do
    event = Event.new("Carla's Craft Connection", [craft], [person])
    person = Person.new({name: 'Hector', interests: ['sewing', 'millinery', 'drawing']})
    craft = Craft.new('knitting', {yarn: 20, scissors: 1, knitting_needles: 2})


    expect(event).to be_a(Event)
    expect(event.name).to eq("Carla's Craft Connection")
    expect(event.crafts).to eq([craft])
    expect(event.attendees).to eq([person])

  end
end
