# -*- coding: utf-8 -*-
require 'spec_helper'

describe TruncablePrime do
  it "Find all candidate for truncable prime" do
    expect(TruncablePrime.find_candidates(1)).to eq []
    expect(TruncablePrime.find_candidates(15)).to eq [5, 1]
    expect(TruncablePrime.find_candidates(3797)).to eq [797, 97, 7, 379, 37, 3]
    expect(TruncablePrime.find_candidates(12345)).to eq [2345, 345, 45, 5, 1234, 123, 12, 1]
  end

  it "2, 3, 5, 7은 truncable prime에 포함되지 않아야한다" do
    expect(TruncablePrime.is_truncable_prime?(2)).to eq false
    expect(TruncablePrime.is_truncable_prime?(3)).to eq false
    expect(TruncablePrime.is_truncable_prime?(5)).to eq false
    expect(TruncablePrime.is_truncable_prime?(7)).to eq false
  end
  
  it "3797은 truncable prime이다." do
    expect(TruncablePrime.is_truncable_prime?(23)).to eq true
    expect(TruncablePrime.is_truncable_prime?(3797)).to eq true
  end

  it "소수가 아닌 수는 truncable prime이 아니다." do
    expect(TruncablePrime.is_truncable_prime?(10)).to eq false
    expect(TruncablePrime.is_truncable_prime?(100)).to eq false
    expect(TruncablePrime.is_truncable_prime?(4125)).to eq false
    expect(TruncablePrime.is_truncable_prime?(1315)).to eq false
  end
end

