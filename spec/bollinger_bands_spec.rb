require 'bollinger_bands'

RSpec.describe BollingerBands, '.compute' do
  context 'with "normal" looking data' do
    it 'returns the correct bands' do
      data = [1,2,3,4,5]
      bb = BollingerBands.compute(data, 2)
      expect(bb).to eq [1,3,5]
    end
  end
end