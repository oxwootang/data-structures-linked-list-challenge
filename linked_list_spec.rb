require_relative 'linked_list'

describe LinkedList do
  let(:linked_list) { LinkedList.new }

  before do
    linked_list.insert_last(:thing_1)
    linked_list.insert_last(:thing_2)
    linked_list.insert_last(:thing_3)
  end

  describe '#insert_first' do
    it 'adds an element to the front of the list' do
      linked_list.insert_first(:new_thing)
      expect(linked_list.get(0)).to eq(:new_thing)
      expect(linked_list.size).to eq(4)
    end
  end

  describe '#remove_first' do
    it 'removes an element from the front of the list' do
      linked_list.remove_first
      expect(linked_list.get(0)).to eq(:thing_2)
      expect(linked_list.size).to eq(2)
    end
  end

  describe '#insert_last' do
    it 'adds an element to the front of the list' do
      linked_list.insert_last(:new_thing)
      expect(linked_list.get(3)).to eq(:new_thing)
    end
  end

  describe '#remove_last' do
    it 'removes an element from the end of the list' do
      linked_list.remove_last

      expect(linked_list.get(0)).to eq(:thing_1)
      expect(linked_list.get(1)).to eq(:thing_2)
      expect(linked_list.size).to eq(2)
    end
  end

  describe '#get' do
    it 'returns element at specified index' do
      expect(linked_list.get(0)).to eq(:thing_1)
      expect(linked_list.get(1)).to eq(:thing_2)
      expect(linked_list.get(2)).to eq(:thing_3)
    end

    it 'throws error if no element exists at specified index' do
      expect { linked_list.get(3) }
        .to raise_error(LinkedList::OutOfBoundsError)
    end
  end

  describe '#set' do
    it 'replaces element at the specified index' do
      linked_list.set(1, :new_thing)
      expect(linked_list.get(1)).to eq(:new_thing)
    end
    
    it 'throws error if no element exists at specified index' do
      expect { linked_list.set(3, :new_thing) }
        .to raise_error(LinkedList::OutOfBoundsError)
    end
  end

  describe '#insert' do
    it 'adds element with specified value at the specified index' do
      linked_list.insert(1, :new_thing)
      expect(linked_list.get(0)).to eq(:thing_1)
      expect(linked_list.get(1)).to eq(:new_thing)
      expect(linked_list.get(2)).to eq(:thing_2)
      expect(linked_list.get(3)).to eq(:thing_3)
    end
    
    it 'throws error if no element exists at specified index' do
      expect { linked_list.insert(3, :new_thing) }
        .to raise_error(LinkedList::OutOfBoundsError)
    end
  end

  describe '#size' do
    it 'returns number of items in list' do
      expect(linked_list.size).to eq(3)
      linked_list.insert_last(:thing_4)
      expect(linked_list.size).to eq(4)
    end
  end
end
