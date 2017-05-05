require_relative 'linked_list'

describe LinkedList do

  describe "let" do

    let(:linked_list) { LinkedList.new }

    it "creates a new empty linked list" do
      expect(linked_list.first).to be nil
    end

    it "sets first to a node" do
      linked_list.insert_first("node 1")
      expect(linked_list.first).to be_a(Node)
    end

    it "inserts a new node in front" do
      linked_list.insert_first("node 1")
      linked_list.insert_first("node 2")
      expect(linked_list.first.value).to eq("node 2")
    end

    it "increases the length after inserting" do
      linked_list.insert_first("node 1")
      linked_list.insert_first("node 2")
      expect(linked_list.length).to eq 2
    end

    it "points to another node after inserting" do
      linked_list.insert_first("node 1")
      linked_list.insert_first("node 2")
      expect(linked_list.first.other).to be_a(Node)
    end

    it "points to another node after inserting" do
      linked_list.insert_first("node 1")
      linked_list.insert_first("node 2")
      expect(linked_list.first.other.value).to eq("node 1")
    end

  end

end
