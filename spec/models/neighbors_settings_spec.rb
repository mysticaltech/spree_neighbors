require 'spec_helper'

describe Spree::NeighborsSettings do
  it 'haves a valid factory' do
    FactoryGirl.create(Spree::NeighborsSettings).should be_valid
  end
  it 'validates radius correctly' do
    FactoryGirl.build(Spree::NeighborsSettings, radius: -1).should_not be_valid
  end
  it 'validates count correctly' do
    FactoryGirl.build(Spree::NeighborsSettings, count: -1).should_not be_valid
  end
  it 'validates sorting correctly' do
    FactoryGirl.build(Spree::NeighborsSettings, sort: -1).should_not be_valid
  end
end