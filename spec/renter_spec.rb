require 'rspec'
require './lib/boat'
require './lib/renter'

RSpec.describe Renter do 
  before(:each) do 
    @renter = Renter.new("Patrick Star", "4242424242424242") 
  end

  it 'exists and has readable attributes' do 
    expect(@renter.name).to eq("Patrick Star")
    expect(@renter.credit_card_number).to eq("4242424242424242")
  end
end