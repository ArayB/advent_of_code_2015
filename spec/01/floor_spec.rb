require 'rspec'
require_relative '../../lib/01/floor.rb'

RSpec.describe Floor do
  describe '#final_floor' do
    [
      ['(())', 0],
      ['()()', 0],
      ['(((', 3],
      ['(()(()(', 3],
      ['))(((((', 3],
      ['())', -1],
      ['))(', -1],
      [')))', -3],
      [')())())', -3]
    ].each do |input, floor|
      it "returns correctly for #{input}" do
        expect(Floor.new(input).final_floor).to eq(floor)
      end
    end

    it 'returns correctly for puzzle input' do
      input = File.read('input/01/input.txt')
      expect(Floor.new(input).final_floor). to eq(280)
    end
  end

  describe '#enter_basement' do
    [
      [')', 1],
      ['()())', 5],
      ['((((())))))', 11]
    ].each do |input, position|
      it "returns correctly for #{input}" do
        expect(Floor.new(input).enter_basement).to eq(position)
      end
    end

    it 'returns correctly for puzzle input' do
      input = File.read('input/01/input.txt')
      expect(Floor.new(input).enter_basement). to eq(1797)
    end
  end
end
