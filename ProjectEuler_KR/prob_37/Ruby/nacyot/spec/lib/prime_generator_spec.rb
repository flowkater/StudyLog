# -*- coding: utf-8 -*-
require 'spec_helper'

describe PrimeGenerator do
  let(:prime_generator) { PrimeGenerator.get_generetor }
  
  it "PrimeGenerator를 생성하면 Fiber 객체를 돌려주어야한다" do
    expect(prime_generator.class).to eq Fiber
  end

  it "PrimeGenerator는 소수를 차례대로 반환한다." do
    expect(prime_generator.resume).to eq 2
    expect(prime_generator.resume).to eq 3
    expect(prime_generator.resume).to eq 5
    expect(prime_generator.resume).to eq 7
  end

  it "PrimeGenerator에는 초기값을 지정할 수 있다." do
    prime_generator_with_init_3796 = PrimeGenerator.get_generetor(3796)
    
    expect(prime_generator_with_init_3796.resume).to eq 3797
    expect(prime_generator_with_init_3796.resume).to eq 3803
    expect(prime_generator_with_init_3796.resume).to eq 3821
    expect(prime_generator_with_init_3796.resume).to eq 3823
  end

  it "PrimeGenerator가 반환하는 소수들 사이에는 소수가 없어야한다." do
    expect((3798..3802).all? {|n| !n.is_prime? })
    expect((3804..3820).all? {|n| !n.is_prime? })
    expect((3822..3822).all? {|n| !n.is_prime? })
  end
end

