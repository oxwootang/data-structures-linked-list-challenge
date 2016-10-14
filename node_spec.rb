require_relative 'node'

describe Node do
  let(:node) { Node.new("Hello") }
  let(:inserted_node) { Node.new("Bonjour") }
  let(:next_node) { Node.new("Goodbye") }

  describe '#new' do
    it 'creates a new node with specified value' do
      expect(node.element).to eq "Hello"
    end
  end

  describe '#insert_after' do
    it 'inserts node after current node' do
      node.insert_after(inserted_node)
      expect(node.next).to eq inserted_node
    end
  end

  describe '#remove_after' do
    it 'inserts node after current node' do
      node.remove_after
      expect(node.next).to eq nil
    end
  end
end
