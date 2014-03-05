require 'rubygems'
require 'rspec'
require_relative '../sort.rb'

describe 'Sort' do
  describe '.sort method only' do

    context 'when the argument is empty' do
      it "returns an empty array" do
        expect(Sort.sort([])).to eq([])
      end
    end

    context 'when the argument only has one element' do
      it "returns the single element" do
        expect(Sort.sort([1])).to eq([1])
      end
    end

    context 'when the argument is only postive numbers' do
      it "returns the positive numbers in order" do
        expect(Sort.sort([1,4,3])).to eq([1,3,4])
      end
    end

    context 'when the element is only negative numbers' do
      it "returns the negative numbers in order" do
        expect(Sort.sort([-1,-9,-5])).to eq([-9,-5,-1])
      end
    end

    context 'when the element is both pos. and neg. numbers' do
      it 'returns the neg. first and then the pos. numbers' do
        expect(Sort.sort([-1,2,4,-9])).to eq([-9,-1,2,4])
      end
    end

    context 'when the element has two of the same element' do
      it 'returns the two elements' do
        expect(Sort.sort([1,1])).to eq([1,1])
      end
    end
  end


  describe '.selection_sort (using Selection Sort)' do

    context 'when the argument is empty' do
      it "returns an empty array" do
        expect(Sort.selection_sort([])).to eq([])
      end
    end

    context 'when the argument only has one element' do
      it "returns the single element" do
        expect(Sort.selection_sort([1])).to eq([1])
      end
    end

    context 'when the argument is only postive numbers' do
      it "returns the positive numbers in order" do
        expect(Sort.selection_sort([1,4,3])).to eq([1,3,4])
      end
    end

    context 'when the element is only negative numbers' do
      it "returns the negative numbers in order" do
        expect(Sort.selection_sort([-1,-9,-5])).to eq([-9,-5,-1])
      end
    end

    context 'when the element is both pos. and neg. numbers' do
      it 'returns the neg. first and then the pos. numbers' do
        expect(Sort.selection_sort([-1,2,4,-9])).to eq([-9,-1,2,4])
      end
    end

    context 'when the agrument has repeating elements' do
      it 'returns the sorted array' do
        expect(Sort.selection_sort([4,1,7,6,6,9])).to eq([1,4,6,6,7,9])
      end
    end
  end

  describe '.merge' do
    context 'when the arguments are empty' do
      it "returns an empty array" do
        expect(Sort.merge([],[])).to eq([])
      end
    end

    context 'when the arguments only have one element each' do
      it "returns the single elements sorted" do
        expect(Sort.merge([1],[2])).to eq([1,2])
      end
    end

    context 'when the arguments only have postive numbers' do
      it "returns the positive numbers sorted" do
        expect(Sort.merge([1,3,4],[2,5,6])).to eq([1,2,3,4,5,6])
      end
    end

    context 'when the arguments only have negative numbers' do
      it "returns the negative numbers sorted" do
        expect(Sort.merge([-9,-5,-1],[-8,-4,-2])).to eq([-9,-8,-5,-4,-2,-1])
      end
    end

    context 'when the arguments have both pos. and neg. numbers' do
      it 'returns the neg. first and then the pos. numbers' do
        expect(Sort.merge([-2,-1,4,5],[-3,1,3,9])).to eq([-3,-2,-1,1,3,4,5,9])
      end
    end

    context 'when the agruments have repeating elements' do
      it 'returns the all the repeating elements in the sorted array' do
        expect(Sort.merge([4,6,6,9],[1,6,7,7])).to eq([1,4,6,6,6,7,7,9])
      end
    end

    context 'when the arguments have different amount of elements in them' do
      it 'returns the array sorted correctly' do
        expect(Sort.merge([1,2,3],[4,5])).to eq([1,2,3,4,5])
      end
    end
  end
end
