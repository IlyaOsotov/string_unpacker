RSpec.describe Unpacker do
  it "has a version number" do
    expect(StringUnpacker::VERSION).not_to be nil
  end

  let(:string) { 'qwerty' }
  it { expect(Unpacker.new.call(string)).to eq(string) }
end
