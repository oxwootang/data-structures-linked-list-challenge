require_relative 'node'

describe Node do

  describe "let" do

    let(:node) { Node.new("first") }
    let(:node_2) { Node.new("second") }

    it "creates a new node with value 'first'" do
      expect(node.value).to eq "first"
    end

    it "doesn't point to anything yet" do
      expect(node.other).to be nil
    end

    it "points to another node" do
      node.insert_after(node_2)
      expect(node.other).to eq(node_2)
    end

    it "removes the connection to another node" do
      node_2.insert_after(node)
      node.insert_after(node)
      node.remove_after
      expect(node.other).to be nil
    end

  end

end
