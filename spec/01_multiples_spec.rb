require_relative '../lib/01_multiples'

describe "the is_multiple_of_3_or_5? method" do
  it "should return TRUE when an integer is a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5?(3)).to eq(true)
    expect(is_multiple_of_3_or_5?(5)).to eq(true)
    expect(is_multiple_of_3_or_5?(51)).to eq(true)
    expect(is_multiple_of_3_or_5?(45)).to eq(true)
  end

  it "should return FALSE when an integer is NOT a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5?(4)).to eq(false)
    expect(is_multiple_of_3_or_5?(11)).to eq(false)
    expect(is_multiple_of_3_or_5?(658)).to eq(false)
    expect(is_multiple_of_3_or_5?(74)).to eq(false)
  end
end

describe "sum_of_3_or_5_multiples method" do
  it "should return a RESULT when final_number IS an integer " do
    expect(sum_of_3_or_5_multiples(3)).to eq(0)
    expect(sum_of_3_or_5_multiples(100)).to eq(2315)
    expect(sum_of_3_or_5_multiples(1000)).to eq(233165)
    expect(sum_of_3_or_5_multiples(0)).to eq(0)
  end

  it "should return 'not an integer' when final_number IS NOT an integer" do
    expect(sum_of_3_or_5_multiples("😁")).to eq("not an integer")
    expect(sum_of_3_or_5_multiples(nil)).to eq("not an integer")
    expect(sum_of_3_or_5_multiples("cinquante")).to eq("not an integer")
    expect(sum_of_3_or_5_multiples("hello world !")).to eq("not an integer")
  end
end