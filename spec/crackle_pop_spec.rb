require 'crackle_pop'

describe CracklePop do
  let(:dummy_class) { Class.new { extend CracklePop } }

  describe '#run' do
    it 'should prints out a list of numbers replacing with Crackle and Pop' do
      expect(dummy_class.run.to_s).not_to be_empty
    end
  end

  describe '#cracklepop' do
    it 'should print Crackle if number is divisible by 3' do
      expect(dummy_class.cracklepop(12)).to eq "Crackle"
    end

    it 'should print Pop if number is divisible by 5' do
      expect(dummy_class.cracklepop(20)).to eq "Pop"
    end
  end
end
