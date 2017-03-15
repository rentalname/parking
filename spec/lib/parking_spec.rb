RSpec.describe Parking do
  describe '#park' do
    it '車が1台駐車すると, 駐車台数が1増える' do
      parking = Parking.new
      parking.park
      expect(parking.count).to eq 1
    end

    it '車が1台駐車すると, 駐車台数が1増える' do
      parking = Parking.new

      expect{
        parking.park
      }.to change(parking, :count)
      .from(0)
      .to(1)
    end
  end

  describe '#fill?' do
    before do
      @parking = Parking.new
    end
    context '1台駐車しているとき' do
      it '満車ではない' do
        @parking.park
        expect(@parking).not_to be_fill
      end
    end

    context '5台駐車しているとき' do
      it '満車である' do
        5.times{ @parking.park }
        expect(@parking.fill?).to be_truthy
      end
    end

    context '100台駐車しているとき' do
      it '満車である' do
        100.times{ @parking.park }
        expect(@parking).to be_fill
      end
    end
  end
end
