require 'rails_helper'

RSpec.describe Voter, type: :model do
  it 'no citizen number present, so the user cannot be authenticated' do
    m=Voter.new
    expect(m).to respond_to(:CitizenNumber)
  end
  it 'The address should not be blank' do
    m=Voter.new
    m.Address=" "
    expect(m.valid?).to eq(false)
  end
  it 'The name should not be blank' do
    m=Voter.new
    m.Name=" "
    expect(m.valid?).to eq(false)
  end
  it 'The gender should not be blank' do
    m=Voter.new
    m.Gender=" "
    expect(m.valid?).to eq(false)
  end
  it 'The Phone Number should not be blank' do
    m=Voter.new
    m.PhoneNumber=" "
    expect(m.valid?).to eq(false)
  end
  it 'The date_of_birth should not be blank' do
    m=Voter.new
    m.date_of_birth=" "
    expect(m.valid?).to eq(false)
  end
end

