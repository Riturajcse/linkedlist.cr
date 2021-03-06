require "./spec_helper.cr"

describe "Singly" do
  describe "#new" do
    ll = Linkedlist::Singly(Int32).new

    it "should have zero length" do
      ll.length.should eq(0)
    end

    it "should have head as nil" do
      ll.head.should be_nil
    end
  end

  describe "#insert_head" do
    ll = Linkedlist::Singly(Int32).new

    context "when inserting in empty linked list" do
      ll.insert_head(1)

      it "should have length 1" do
        ll.length.should eq(1)
      end

      it "should have non-nil head" do
        ll.head.should_not be_nil
      end

      it "should have head with data as 1" do
        head = ll.head
        head.should_not be_nil
        if head
          head.data.should eq(1)
        end
      end
    end

    context "when inserting in non-empty linked list " do
      ll.insert_head(2)

      it "should have length 2" do
        ll.length.should eq(2)
      end

      it "should have non-nil head" do
        ll.head.should_not be_nil
      end

      it "should have head with data as 2" do
        head = ll.head
        head.should_not be_nil
        if head
          head.data.should eq(2)
        end
      end
    end
  end

  describe "#insert_tail" do
    ll = Linkedlist::Singly(Int32).new

    context "when inserting in empty linked list" do
      ll.insert_tail(1)

      it "should have length 1" do
        ll.length.should eq(1)
      end

      it "should have non-nil head" do
        ll.head.should_not be_nil
      end

      it "should have head with data as 1" do
        head = ll.head
        head.should_not be_nil
        if head
          head.data.should eq(1)
        end
      end
    end

    context "when inserting in non-empty linked list" do
      ll.insert_tail(2)

      it "should have length 1" do
        ll.length.should eq(2)
      end

      it "should have non-nil head" do
        ll.head.should_not be_nil
      end

      it "should have head with data as 1" do
        head = ll.head
        head.should_not be_nil
        if head
          head.data.should eq(1)
        end
      end

      it "should have tail value as 2" do
        curr = ll.head
        curr.should_not be_nil

        while curr && curr.next != nil
          curr = curr.next
        end

        curr && curr.data.should eq(2)
      end

    end
  end
end
