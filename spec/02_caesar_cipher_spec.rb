require_relative '../lib/02_caesar_cipher'

describe "caesar_cipher method" do
  it "should encode a string with its key" do
    expect(caesar_cipher("Hello World")).to eq("Hello World")
    expect(caesar_cipher("The Hacking Project!", 10)).to eq("Dro Rkmusxq Zbytomd!")
    expect(caesar_cipher("This Is A String...", -36)).to eq("Jxyi Yi Q Ijhydw...")
    expect(caesar_cipher("One two one ?", 121)).to eq("Fev knf fev ?")
    expect(caesar_cipher("12", 121)).to eq("12")
    expect(caesar_cipher("", 4)).to eq("")
  end
end