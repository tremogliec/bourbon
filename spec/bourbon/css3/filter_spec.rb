require "spec_helper"

describe "filter" do
  before(:all) do
    ParserSupport.parse_file("css3/filter")
  end

  describe "@include filter" do
    context "with argument grayscale(50%)" do
      it "outputs with vendor prefixes" do
        expect(".filter").to have_rule("-webkit-filter: grayscale(50%)")
        expect(".filter").to have_rule("filter: grayscale(50%)")
      end
    end
  end
end
