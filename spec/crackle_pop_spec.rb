require 'crackle_pop'

describe CracklePop do
  let(:dummy_class) { Class.new { extend CracklePop } }

  describe '#get_list' do
    it 'should prints out a list of numbers replacing with Crackle and Pop' do
      expect(dummy_class.get_list.take(6)).to match_array([1,2,'Crackle',4,'Pop','Crackle'])
    end
  end

  describe '#cracklepop' do
    it 'should print Crackle if number is divisible by 3' do
      expect(dummy_class.cracklepop(12)).to eq 'Crackle'
    end

    it 'should print Pop if number is divisible by 5' do
      expect(dummy_class.cracklepop(20)).to eq 'Pop'
    end

    it 'should print CracklePop if number is divisible by 3 and 5' do
      expect(dummy_class.cracklepop(45)).to eq 'CracklePop'
    end
  end
end
