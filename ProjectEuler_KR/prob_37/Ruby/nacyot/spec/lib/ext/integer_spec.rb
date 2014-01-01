require 'spec_helper'

describe Integer do
  it "is_prime?" do
    expect(2.is_prime?).to eq true
    expect(3.is_prime?).to eq true
    expect(5.is_prime?).to eq true
    expect(6.is_prime?).to eq false
    expect(7.is_prime?).to eq true
    expect(10.is_prime?).to eq false
    expect(3797.is_prime?).to eq true
    expect(1000000000.is_prime?).to eq false
  end
end
