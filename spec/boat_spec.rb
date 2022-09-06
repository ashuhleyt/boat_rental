require 'rspec'
require './lib/boat'
require './lib/renter'

RSpec.describe Boat do 
  before(:each) do 
    @kayak = Boat.new(:kayak, 20) 
       
  end

  it 'exists' do 
    expect(@kayak).to be_instance_of(Boat)
  end

  it 'is a type' do
    expect(@kayak.type).to eq(:kayak)
  end

  it 'has a cost per hour of rental' do 
    expect(@kayak.price_per_hour).to eq(20)
  end

  it 'can be rented for number of hours' do 
    expect(@kayak.hours_rented).to eq(0)
    @kayak.add_hour
    @kayak.add_hour
    @kayak.add_hour
    expect(@kayak.hours_rented).to eq(3)
  end
end