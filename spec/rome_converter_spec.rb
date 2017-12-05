require '../lib/rome_converter.rb'

describe RomeConverter do
  describe "#to_rome" do
      it "failing 0 case" do
        expect(RomeConverter.new.to_rome(0)).not_to eq("")
      end

      it "1 to 'I'" do
        expect(RomeConverter.new.to_rome(1)).to eql("I")
      end

      it "failing 9 case" do
        expect(RomeConverter.new.to_rome(9)).not_to eq("VIIII")
      end

      it "10 to 'X'" do
        expect(RomeConverter.new.to_rome(10)).to eql("X")
      end
	
      it "failing 13 case" do
        expect(RomeConverter.new.to_rome(13)).not_to eq("XIIV")
      end

      it "100 to 'C'" do
        expect(RomeConverter.new.to_rome(100)).to eql("C")
      end

      it "2 to 'II'" do
        expect(RomeConverter.new.to_rome(2)).to eql("II")
      end

      it "7 to 'VII'" do
        expect(RomeConverter.new.to_rome(7)).to eql("VII")
      end

      it "9 to 'IX'" do
        expect(RomeConverter.new.to_rome(9)).to eql("IX")
      end

      it "51 to 'LI'" do
        expect(RomeConverter.new.to_rome(51)).to eql("LI")
      end

      it "1948 to 'MCMXLVIII'" do
         expect(RomeConverter.new.to_rome(1948)).to eql("MCMXLVIII")
      end

      it "failing 51 case" do
        expect(RomeConverter.new.to_rome(51)).not_to eq("XXXXXI")
      end

      it "failing 5000 case" do
        expect(RomeConverter.new.to_rome(5000)).not_to eq("MMMMM")
      end
  end

  describe "#to_dec" do
      it "'I' to 1" do
        expect(RomeConverter.new.to_dec('I')).to eql(1)
      end

      it "'M' to 1000" do
        expect(RomeConverter.new.to_dec('M')).to eql(1000)
      end

      it "'III' to 3" do
        expect(RomeConverter.new.to_dec('III')).to eql(3)
      end

      it "'XIX' to 19" do
	expect(RomeConverter.new.to_dec('XIX')).to eql(19)
      end

      it "failing 19 case" do
	expect(RomeConverter.new.to_dec('XVIIII')).not_to eq(19)
      end

      it "'XXVIII' to 28" do
        expect(RomeConverter.new.to_dec('XXVIII')).to eql(28)
      end

      it "failing 38 case" do
        expect(RomeConverter.new.to_dec('XXXIIX')).not_to eq(38)
      end    

      it "failing 5000 case" do
        expect(RomeConverter.new.to_dec('MMMMM')).not_to eq(5000)
      end

end
end
