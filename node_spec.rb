require_relative 'node'

describe Node do

  describe "let" do

    let(:node) { Node.new("first") }

    it "creates a new node with value 'first'" do
      expect(node.value).to eq "first"
    end

    it "doesn't point to anything yet" do
      expect(node.other).to be nil
    end

  end

end
