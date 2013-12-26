# -*- coding: utf-8 -*-
require 'spec_helper'

describe DoubleBasePalindromes do
  it "Palindrome?" do
    expect(DoubleBasePalindromes.palindromes?(121)).to eq true
    expect(DoubleBasePalindromes.palindromes?(1223221)).to eq true
    expect(DoubleBasePalindromes.palindromes?(585)).to eq true
    expect(DoubleBasePalindromes.palindromes?(54321)).to eq false
    expect(DoubleBasePalindromes.palindromes?(497)).to eq false
    expect(DoubleBasePalindromes.palindromes?(59384)).to eq false
  end

  it "Binary Palindrome?" do
    expect(DoubleBasePalindromes.binary_palindromes?(585)).to eq true
    expect(DoubleBasePalindromes.binary_palindromes?(3)).to eq true
    expect(DoubleBasePalindromes.binary_palindromes?(29382)).to eq false
    expect(DoubleBasePalindromes.binary_palindromes?(30123)).to eq false
  end

  it "Double Base Palindrome?" do
    expect(DoubleBasePalindromes.double_base_palindrome?(585)).to eq true
    expect(DoubleBasePalindromes.double_base_palindrome?(9009)).to eq true
    expect(DoubleBasePalindromes.double_base_palindrome?(57382)).to eq false
    expect(DoubleBasePalindromes.double_base_palindrome?(304)).to eq false
  end
end
