RSpec.describe Unpacker do
  it "has a version number" do
    expect(StringUnpacker::VERSION).not_to be nil
  end

  subject { Unpacker.new }

  context "when valid string" do
    context "when only letters" do
      let(:string) { 'asdqwe' }
      it { expect(subject.call(string)).to eq string }
    end

    context "when complex string" do
      it { expect(subject.call('a4bc2d5e')).to eq 'aaaabccddddde' }
      it { expect(subject.call('qwe\4\5')).to eq 'qwe45' }
      it { expect(subject.call('qwe\45')).to eq 'qwe44444' }
      it { expect(subject.call('qwe\\4')).to eq 'qwe\\\\' }
    end
  end

  context "when invalid string" do
    let(:string) { '45' }
    it { expect { subject.call(string) }.to raise_error } 
  end
end
