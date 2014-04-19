require_relative "../TextReader"

describe TextReader, "#request" do
  it "after request, str should have '1234'" do
    str = ""

    TextReader.request("read.txt") do |line|
      str += line
    end

    str.should eq("1234")
  end
end