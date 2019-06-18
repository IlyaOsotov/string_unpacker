RSpec.describe Unpacker do
  it "has a version number" do
    expect(StringUnpacker::VERSION).not_to be nil
  end

  subject { Unpacker.new.call(string) }

  context "when valid string" do
    context "when only letters" do
      let(:string) { 'asdqwe' }
      it { expect(subject).to eq string }
    end

    context "when complex string" do
      let(:string) { 'a4bc2d5e' }
      it { expect(subject).to eq 'aaaabccddddde' }
      let(:string) { 'qwe\4\5' }
      it { expect(subject).to eq 'qwe45' }
      let(:string) { 'qwe\45' }
      it { expect(subject).to eq 'qwe44444' }
      let(:string) { 'qwe\\4' }
      it { expect(subject).to eq 'qwe\\\\' }
    end
  end

  context "when invalid string" do
    let(:string) { '45' }
    it { expect { subject }.to raise_error } 
  end
end
